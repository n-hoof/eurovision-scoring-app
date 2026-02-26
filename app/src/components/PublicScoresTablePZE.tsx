import { usePzeScoringStatus } from "../queries/usePzeScoringStatus";
import { usePzeUserScores } from "../queries/usePzeUserScores";
import styles from "../styles/ScoresNeon.module.css";

type Props = {
  user_id: string;
  year: number;
  round: number;
};

export default function PublicScoresTablePZE({ user_id, year, round }: Props) {
  const status = usePzeScoringStatus(user_id, year, round);
  const hasStarted = status.data === true;

  const scores = usePzeUserScores(user_id, year, round, hasStarted);

  /* -------------------- STATUS STATES -------------------- */

  if (status.isLoading) {
    return (
      <div style={{ color: "#ff00ff", marginTop: "2rem" }}>
        Checking scoring status…
      </div>
    );
  }

  if (status.isError) {
    return (
      <div style={{ color: "#ff0044" }}>Failed to load scoring status</div>
    );
  }

  /* -------------------- NOT STARTED -------------------- */

  if (!hasStarted) {
    return <div>No scores yet recorded.</div>;
  }

  /* -------------------- SCORES LOADING -------------------- */

  if (scores.isLoading) {
    return (
      <div style={{ color: "#00eaff", marginTop: "2rem" }}>Loading scores…</div>
    );
  }

  if (scores.isError) {
    return <div style={{ color: "#ff0044" }}>Failed to load scores</div>;
  }

  return (
    <>
      <div className={styles.tableCenter}>
        <div className={styles.crt}>
          <table className={styles.neonTable}>
            <thead className={styles.neonHeader}>
              <tr>
                <th>Competitor</th>
                <th>Song</th>
                <th>Costume</th>
                <th>Staging</th>
                <th>Performance</th>
                <th>Total</th>
              </tr>
            </thead>

            <tbody>
              {scores.data!.map((s) => (
                <tr key={s.entry_id} className={styles.neonRow}>
                  <td className={styles.artist}>
                    {s.artist} - "{s.song_title}"
                  </td>

                  <td className={styles.score}>
                    {s.is_scored ? s.song_score : "-"}
                  </td>
                  <td className={styles.score}>
                    {s.is_scored ? s.costume_score : "-"}
                  </td>
                  <td className={styles.score}>
                    {s.is_scored ? s.staging_score : "-"}
                  </td>
                  <td className={styles.score}>
                    {s.is_scored ? s.performance_score : "-"}
                  </td>

                  <td className={styles.total}>
                    {s.is_scored ? s.total : "Not scored yet"}
                  </td>
                </tr>
              ))}
            </tbody>
          </table>
        </div>
      </div>
    </>
  );
}
