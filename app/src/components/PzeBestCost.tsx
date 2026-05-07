import { usePzeBestCost } from "../queries/usePzeBestCost";
import styles from "../styles/CategoryWinners.module.css";

interface Props {
  year: number;
  round: number;
}

export default function PzeBestCost({ year, round }: Props) {
  const { data, isLoading, isError, error } = usePzeBestCost(year, round);

  if (isNaN(year)) return;

  if (isLoading) return <div>Loading results...</div>;

  if (isError) {
    console.log(error.message);
    return <div>Something went wrong...</div>;
  }

  if (!data) return;

  return (
    <div className={`${styles.wrapper} ${styles.costume}`}>
      <em>
        <h3 className={styles.title}>Costume</h3>
      </em>

      <div className={styles.content}>{data.song_title}</div>

      <div className={styles.subtext}>
        <em>{data.artist}</em>
      </div>

      <div className={styles.score}>
        <span className={styles.numerator}>{data.costume_avg}</span>
        <span className={styles.denomenator}> / 2</span>
      </div>
    </div>
  );
}
