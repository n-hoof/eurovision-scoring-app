import { useState } from "react";
import { useAuth } from "../hooks/useAuth";
import type { PzeUserScore } from "../types/PzeUserScore";
import { usePzeScoringStatus } from "../queries/usePzeScoringStatus";
import { usePzeUserScores } from "../queries/usePzeUserScores";
import { usePzeInitScoring } from "../queries/usePzeInitScoring";
import { usePzeUpdateScore } from "../queries/usePzeUpdateScore";
import { PzeScorecard } from "./PzeScorecard";
import styles from "../styles/ScoresNeon.module.css";



type Props = {
    year: number;
    round: number;
};

export default function UserScoresTablePZE({ year, round }: Props) {
    const {user} = useAuth();
    const [active, setActive] = useState<PzeUserScore | null>(null);

    const status = usePzeScoringStatus(user!.id, year, round);
    const hasStarted = status.data === true;

    const scores = usePzeUserScores(
        user!.id,
        year,
        round,
        hasStarted
    );

    const initScoring = usePzeInitScoring(user!.id, year, round);
    const updateScore = usePzeUpdateScore(user!.id, year, round);

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
        <div style={{ color: "#ff0044" }}>
            Failed to load scoring status
        </div>
        );
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
        return (
        <div style={{ color: "#00eaff", marginTop: "2rem" }}>
            Loading scores…
        </div>
        );
    }

    if (scores.isError) {
        return (
        <div style={{ color: "#ff0044" }}>
            Failed to load scores
        </div>
        );
    }

    /* -------------------- TABLE -------------------- */

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
                    <th></th>
                </tr>
                </thead>

                <tbody>
                {scores.data!.map((s) => (
                    <tr key={s.entry_id} className={styles.neonRow}>
                    <td className={styles.artist}>{s.artist} - "{s.song_title}"</td>

                    <td className={styles.score}>{s.is_scored ? s.song_score : "-"}</td>
                    <td className={styles.score}>{s.is_scored ? s.costume_score : "-"}</td>
                    <td className={styles.score}>{s.is_scored ? s.staging_score : "-"}</td>
                    <td className={styles.score}>
                        {s.is_scored ? s.performance_score : "-"}
                    </td>

                    <td className={styles.total}>
                        {s.is_scored ? s.total : "Not scored yet"}
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