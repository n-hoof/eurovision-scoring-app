import { useState } from "react";
import { useAuth } from "../hooks/useAuth";
import type { PzeUserScore } from "../types/PzeUserScore";
import { usePzeScoringStatus } from "../queries/usePzeScoringStatus";
import { usePzeUserScores } from "../queries/usePzeUserScores";
import { usePzeInitScoring } from "../queries/usePzeInitScoring";
import { usePzeUpdateScore } from "../queries/usePzeUpdateScore";
import { PzeScorecard } from "./PzeScorecard";
import styles from "../styles/UserScoresTable.module.css";
import commentStyles from "../styles/PublicScoresTable.module.css";
import Comments from "./Comments";
import WriteCommentBox from "./WriteCommentBox";
import CommentIndicator from "./CommentIndicator";

type Props = {
  year: number;
  round: number;
};

export default function UserScoresTablePZE({ year, round }: Props) {
  const { user } = useAuth();
  const [active, setActive] = useState<PzeUserScore | null>(null);
  const [activeCommentsId, setActiveCommentsId] = useState<number | null>(null);

  const status = usePzeScoringStatus(user!.id, year, round);
  const hasStarted = status.data === true;
  const contest = "pze";

  const scores = usePzeUserScores(user!.id, year, round, hasStarted);

  const initScoring = usePzeInitScoring(user!.id, year, round);
  const updateScore = usePzeUpdateScore(user!.id, year, round);

  /* -------------------- STATUS STATES -------------------- */

  if (status.isLoading) {
    return <div>Checking scoring status…</div>;
  }

  if (status.isError) {
    return <div>Failed to load scoring status</div>;
  }

  /* -------------------- NOT STARTED -------------------- */

  if (!hasStarted) {
    return (
      <button
        onClick={() => initScoring.mutate()}
        style={{
          marginTop: "2rem",
          padding: "0.8rem 1.2rem",
          fontSize: "1.1rem",
          background: "#ff00ff",
          color: "#fff",
          border: "none",
          borderRadius: "6px",
          boxShadow: "0 0 15px #ff00ff",
          cursor: "pointer",
        }}
      >
        Start Scoring
      </button>
    );
  }

  /* -------------------- SCORES LOADING -------------------- */

  if (scores.isLoading) {
    return <div>Loading scores…</div>;
  }

  if (scores.isError) {
    return <div>Failed to load scores</div>;
  }

  /* -------------------- TABLE -------------------- */
  const activeCommentsData = scores.data?.find(
    (s) => s.id === activeCommentsId,
  );

  return (
    <>
      <div className={commentStyles.container}>
        <div className={`${commentStyles.comments_panel} scrollbarPink`}>
          <h3>Comments</h3>
          {activeCommentsId === null ? (
            <div className={commentStyles.noScoreSelected}>
              Select a score to see comments
            </div>
          ) : (
            <>
              <h4>
                {activeCommentsData?.artist ?? ""}
                {" - "}
                {activeCommentsData?.song_title ?? ""}
              </h4>
              <Comments
                comments={activeCommentsData?.comments ?? []}
                user_id={user!.id}
                year={year}
                round={round}
                contest={contest}
              />
              <WriteCommentBox
                scoreId={activeCommentsId}
                contest={contest}
                onCommentAdded={() => scores.refetch()}
              />
            </>
          )}
        </div>
        <div className={`${styles.tableWrapper} scrollbarPink`}>
          <table className={styles.table}>
            <thead>
              <tr>
                <th rowSpan={2}>Entry</th>
                <th colSpan={4}>Score Breakdown</th>
                <th rowSpan={2}>Total</th>
                <th rowSpan={2}></th>
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
                    activeCommentsId === s.id
                      ? `${commentStyles.row} ${commentStyles.active}`
                      : styles.row
                  }
                  onClick={() =>
                    setActiveCommentsId((prev) => (prev === s.id ? null : s.id))
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

                  <td className={s.is_scored ? styles.total_score : ""}>
                    {s.is_scored ? s.total : "-"}
                  </td>

                  <td>
                    <button
                      onClick={() => setActive(s)}
                      style={{
                        padding: "0.3rem 0.6rem",
                        background: s.is_scored ? "#333" : "#ff00ff",
                        color: "#fff",
                        border: "none",
                        borderRadius: "4px",
                        boxShadow: s.is_scored
                          ? "0 0 5px #555"
                          : "0 0 10px #ff00ff",
                        cursor: "pointer",
                      }}
                    >
                      {s.is_scored ? "Edit" : "SCORE"}
                    </button>
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </div>

      {active && (
        <PzeScorecard
          score={active}
          onClose={() => setActive(null)}
          onSubmit={(vals) => {
            updateScore.mutate({
              entry_id: active.entry_id,
              ...vals,
            });
            setActive(null);
          }}
        />
      )}
    </>
  );
}
