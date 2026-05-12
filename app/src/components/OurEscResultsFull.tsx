import { useEscUserResults } from "../queries/useEscUserResults";
import styles from "../styles/OurResults.module.css";
import { getPlaceSuffix } from "../utils/getPlaceSuffix";

interface Props {
    year: number,
    round: number
}

export default function OurEscResultsFull({ year, round }: Props) {
    const {
        data: results,
        isLoading,
        isError,
        error,
    } = useEscUserResults(year, round);

    if (isNaN(year)) return <div>Choose a year to see results</div>;
    if (year === 2026) return <div>Scoring results not available yet</div>
    
    if (isLoading) return <div>Loading results...</div>;

    if (isError) {
        console.log(error.message);
        return <div>Something went wrong...</div>;
    }

    return (
    <div className={styles.container}>
      <em>
        <h2 className={styles.title}>
          MyVision
          {round === 1
            ? " Semi-final 1"
            : round === 2
              ? " Semi-final 2"
              : round === 3
                ? " Grand Final"
                : ""}
          {` Results for Eurovision ${year}`}
        </h2>
      </em>
      <div className={`${styles.tableWrapper} scrollbarPink`}>
        <table className={styles.table}>
          <thead>
            <tr>
              <th colSpan={3}>Place</th>
              <th rowSpan={2}>Country</th>
              <th rowSpan={2}>Total Score</th>
              <th colSpan={4}>Score Breakdown</th>
            </tr>
            <tr>
              <th>Ours</th>
              <th>Real</th>
              <th>Diff</th>

              <th>Song</th>
              <th>Performance</th>
              <th>Staging</th>
              <th>Costume</th>
            </tr>
          </thead>
          <tbody>
            {results?.map((r) => (
              <tr key={r.entry_id} className={styles.row}>
                <td
                  className={
                    r.place === 1
                      ? styles.gold
                      : r.place === 2
                        ? styles.silver
                        : r.place === 3
                          ? styles.bronze
                          : ""
                  }
                >
                  <span>{r.place}</span>
                  <span className={styles.suffix}>
                    {getPlaceSuffix(r.place)}
                  </span>
                </td>
                <td
                  className={
                    r.real_place === 1
                      ? styles.gold
                      : r.real_place === 2
                        ? styles.silver
                        : r.real_place === 3
                          ? styles.bronze
                          : ""
                  }
                >
                  <span>{r.real_place}</span>
                  <span className={styles.suffix}>
                    {getPlaceSuffix(r.real_place)}
                  </span>
                </td>
                <td
                  className={
                    r.diff > 0
                      ? styles.positive
                      : r.diff < 0
                        ? styles.negative
                        : ""
                  }
                >
                  {r.diff > 0 ? `+${r.diff}` : r.diff}
                </td>
                <td>
                  <img src={r.flag_url} alt="flag" className={styles.flag} />
                  {r.country}
                  <em><span className={styles.esc_entry}>{r.artist} - "{r.song_title}"</span></em>
                </td>
                <td className={styles.total_score}>{r.total_avg}</td>
                <td>{r.song_avg}</td>
                <td>{r.performance_avg}</td>
                <td>{r.staging_avg}</td>
                <td>{r.costume_avg}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}