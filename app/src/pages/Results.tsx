import OurPzeResultsFull from "../components/OurPzeResultsFull";
import OurEscResultsFull from "../components/OurEscResultsFull";
import styles from "../styles/Results.module.css";
import { RoundSelectButton } from "../components/RoundSelectButton";
import { useState } from "react";
import { YearSelect } from "../components/YearSelect";
import { ContestSelect } from "../components/ContestSelect";
import CategoryWinners from "../components/CategoryWinners";

export default function Results() {
  const [selectedRound, setSelectedRound] = useState<1 | 2 | 3>(3);
  const [selectedYear, setSelectedYear] = useState("2026");
  const [selectedContest, setSelectedContest] = useState<"esc" | "pze">("pze");

  let resultsTable;

  if (selectedContest === "pze") {
    resultsTable = (
      <OurPzeResultsFull year={parseInt(selectedYear)} round={selectedRound} />
    );
  }
  if (selectedContest === "esc") {
    resultsTable = (
      <OurEscResultsFull year={parseInt(selectedYear)} round={selectedRound} />
    );
  }

  return (
    <div>
      <h2 className={styles.title}>Community Scoring Results</h2>
      <ContestSelect contest={selectedContest} onChange={setSelectedContest} />
      <YearSelect
        contest={selectedContest}
        val={selectedYear}
        onChange={setSelectedYear}
      />
      <RoundSelectButton round={selectedRound} onChange={setSelectedRound} />
      <div className={styles.container}>
        {resultsTable}
        <CategoryWinners
          contest={selectedContest}
          year={parseInt(selectedYear)}
          round={selectedRound}
        />
      </div>
    </div>
  );
}
