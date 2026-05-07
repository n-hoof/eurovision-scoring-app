import { usePzeScoringStatus } from "../queries/usePzeScoringStatus";
import { usePzeUserScores } from "../queries/usePzeUserScores";
import Comments from "./Comments";
import { useState } from "react";
import WriteCommentBox from "./WriteCommentBox";
import styles from "../styles/PublicScoresTable.module.css";
import CommentIndicator from "./CommentIndicator";

type Props = {
  user_id: string;
  username: string;
  year: number;
  round: number;
};

export default function PublicScoresTablePZE({
  user_id,
  username,
  year,
  round,
}: Props) {
  const [activeScore, setActiveScore] = useState<number | null>(null);
  const status = usePzeScoringStatus(user_id, year, round);
  const hasStarted = status.data === true;
  const contest = "pze";

  const scores = usePzeUserScores(user_id, year, round, hasStarted);

  if (status.isLoading) {
    return <div>Checking scoring status…</div>;
  }

  if (status.isError) {
    return <div>Failed to load scoring status</div>;
  }

  if (!hasStarted) {
    return <div>No scores yet recorded.</div>;
  }

  if (scores.isLoading) {
    return <div>Loading scores…</div>;
  }

  if (scores.isError) {
    return <div>Failed to load scores</div>;
  }

  const activeScoreData = scores.data?.find((s) => s.id === activeScore);

  return (
    <div className={styles.container}>
      <div className={`${styles.comments_panel} scrollbarPink`}>
        <h3>Comments</h3>
        {activeScore === null ? (
          <div className={styles.noScoreSelected}>
            Select a score to see comments
          </div>
        ) : (
          <>
            <h4>
              {activeScoreData?.artist ?? ""}
              {" - "}
              {activeScoreData?.song_title ?? ""}
            </h4>
            <Comments
              comments={activeScoreData?.comments ?? []}
              user_id={user_id}
              year={year}
              round={round}
              contest={contest}
            />
            <WriteCommentBox
              scoreId={activeScore}
              contest={contest}
              onCommentAdded={() => scores.refetch()}
            />
          </>
        )}
      </div>
      <div>
        <em>
          <h2 className={styles.title}>
            {username}'s
            {round === 1
              ? " Semi-final 1"
              : round === 2
                ? " Semi-final 2"
                : round === 3
                  ? " Grand Final"
                  : ""}
            {` Scores for Pesma za Evroviziju ${year}`}
          </h2>
        </em>
        <div className={styles.tableWrapper}>
          <table className={styles.table}>
            <thead>
              <tr>
                <th rowSpan={2}>Entry</th>
                <th colSpan={4}>Score Breakdown</th>
                <th rowSpan={2}>Total</th>
              </tr>
              <tr>
                <th>Song</th>
                <th>Costume</th>
                <th>Staging</th>
                <th>Performance</th>
              </tr>
            </thead>

            <tbody>
              {scores.data!.map((s) => (
                <tr
                  key={s.entry_id}
                  className={
                    activeScore === s.id
                      ? `${styles.row} ${styles.active}`
                      : styles.row
                  }
                  onClick={() =>
                    setActiveScore((prev) => (prev === s.id ? null : s.id))
                  }
                  style={{ cursor: "pointer" }}
                >
                  <td>
                    {s.artist} - "{s.song_title}"
                    <CommentIndicator comments={s.comments} />
                  </td>

                  <td>{s.is_scored ? s.song_score : "-"}</td>
                  <td>{s.is_scored ? s.costume_score : "-"}</td>
                  <td>{s.is_scored ? s.staging_score : "-"}</td>
                  <td>{s.is_scored ? s.performance_score : "-"}</td>

                  <td
                    className={
                      s.is_scored ? styles.total_score : styles.not_scored
                    }
                  >
                    {s.is_scored ? s.total : "Not scored yet"}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </div>
    </div>
  );
}
