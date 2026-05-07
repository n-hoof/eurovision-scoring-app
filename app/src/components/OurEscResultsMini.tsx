import { useEscUserResults } from "../queries/useEscUserResults";
import styles from "../styles/OurResults.module.css";
import { getPlaceSuffix } from "../utils/getPlaceSuffix";

interface Props {
  year: number;
  round: number;
}

export default function OurEscResultsMini({ year, round }: Props) {
  const {
    data: results,
    isLoading,
    isError,
    error,
  } = useEscUserResults(year, round);

  if (isLoading) return <div>Loading results...</div>;

  if (isError) {
    console.log(error.message);
    return <div>Something went wrong...</div>;
  }

  return (
    <div>
      <em>
        <h2 className={styles.title}>
          PZE {year}{" "}
          {round === 1
            ? "Semi-final 1"
            : round === 2
              ? "Semi-final 2"
              : round === 3
                ? "Grand Final"
                : ""}
        </h2>
      </em>
      <div className={`${styles.tableWrapper} scrollbarPink`}>
        <table className={styles.table}>
          <thead>
            <tr>
              <th colSpan={3}>Place</th>
              <th rowSpan={2}>Country</th>
              <th rowSpan={2}>Score</th>
            </tr>
            <tr>
              <th>Ours</th>
              <th>Real</th>
              <th>Diff</th>
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
                </td>
                <td className={styles.total_score}>{r.total_avg}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </div>
  );
}
