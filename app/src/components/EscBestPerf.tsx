import { useEscBestPerf } from "../queries/useEscBestPerf";
import styles from "../styles/CategoryWinners.module.css";

interface Props {
    year: number,
    round: number
}

export default function EscBestPerf({ year, round }: Props) {
    const {
        data,
        isLoading,
        isError,
        error,
    } = useEscBestPerf(year, round);

    if (isNaN(year)) return;

    if (isLoading) return <div>Loading results...</div>;

    if (isError) {
        console.log(error.message);
        return <div>Something went wrong...</div>;
    }

    if (!data) return;

    return (
    <div className={`${styles.wrapper} ${styles.performance}`}>
      <em>
        <h3 className={styles.title}>Performance</h3>
      </em>

      <div className={styles.content}><img src={data.flag_url} alt="flag" className={styles.flag} />{data.country}</div>

      <div className={styles.subtext}><em>{data.artist} - "{data.song_title}"</em></div>

      <div className={styles.score}>
        <span className={styles.numerator}>{data.performance_avg}</span>
        <span className={styles.denomenator}> / 2</span>
      </div>
    </div>
  )
}