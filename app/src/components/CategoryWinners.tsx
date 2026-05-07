import EscBestSong from "../components/EscBestSong";
import PzeBestSong from "../components/PzeBestSong";
import EscBestStg from "../components/EscBestStg";
import PzeBestStg from "../components/PzeBestStg";
import PzeBestPerf from "../components/PzeBestPerf";
import EscBestPerf from "../components/EscBestPerf";
import EscBestCost from "../components/EscBestCost";
import PzeBestCost from "../components/PzeBestCost";
import styles from "../styles/CategoryWinners.module.css";

interface Props {
  contest: string;
  year: number;
  round: number;
}

export default function CategoryWinners({ contest, year, round }: Props) {
  let favSong;
  let favStg;
  let favPerf;
  let favCost;

  if (contest === "pze") {
    favSong = <PzeBestSong year={year} round={round} />;
    favStg = <PzeBestStg year={year} round={round} />;
    favPerf = <PzeBestPerf year={year} round={round} />;
    favCost = <PzeBestCost year={year} round={round} />;

    if (year <  2026) return;
  }

  if (contest === "esc") {
    favSong = <EscBestSong year={year} round={round} />;
    favStg = <EscBestStg year={year} round={round} />;
    favPerf = <EscBestPerf year={year} round={round} />;
    favCost = <EscBestCost year={year} round={round} />;

    if (year > 2025) return;
  }

  return (
    <div>
      <em><h3 className={styles.head_title}>Category Winners</h3></em>
      <div className={styles.container}>
        <div className={styles.box}>{favSong}</div>
        <div className={styles.box}>{favPerf}</div>
        <div className={styles.box}>{favStg}</div>
        <div className={styles.box}>{favCost}</div>
      </div>
    </div>
  );
}
