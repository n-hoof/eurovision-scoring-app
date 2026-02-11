import { useState } from "react";
import { useAuth } from "../hooks/useAuth";
import type { UserScore } from "../types/UserScore";
import { useEscScoringStatus } from "../hooks/useESCScoringStatus";
import { useEscUserScores } from "../hooks/useEscUserScores";
import { useEscInitScoring } from "../hooks/useEscInitScoring";
import { useEscUpdateScore } from "../hooks/useEscUpdateScore";
import { EscScorecard } from "./EscScorecard";

import "../styles/scores-neon.css";


type Props = {
    year: number;
    round: number;
};

export default function UserScoresTableESC({ year, round }: Props) {
    const {user} = useAuth();
    const [active, setActive] = useState<UserScore | null>(null);

    const status = useEscScoringStatus(user!.id, year, round);
    const hasStarted = status.data === true;

    const scores = useEscUserScores(
        user!.id,
        year,
        round,
        hasStarted
    );

    const initScoring = useEscInitScoring(user!.id, year, round);
    const updateScore = useEscUpdateScore(user!.id, year, round);

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
        <div className="table-center">
            <div className="crt">
            <table className="neon-table">
                <thead className="neon-header">
                <tr>
                    <th>Country</th>
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
                    <tr key={s.entry_id} className="neon-row">
                    <td className="country">
                        <img
                        src={s.flag_url}
                        alt={s.country}
                        width={40}
                        height={25}
                        className="flag-img"
                        />
                        {s.country}
                    </td>

                    <td className="score">{s.is_scored ? s.song_score : "-"}</td>
                    <td className="score">{s.is_scored ? s.costume_score : "-"}</td>
                    <td className="score">{s.is_scored ? s.staging_score : "-"}</td>
                    <td className="score">
                        {s.is_scored ? s.performance_score : "-"}
                    </td>

                    <td className="total">
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
            <EscScorecard
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





    // const[scores, setScores] = useState<UserScore[]>([]);
    // const[scoresLoading, setScoresLoading] = useState(true);

    // useEffect(() => {
    //     async function loadScores() {
    //         const { data, error } = await supabase
    //             .from('esc_entries')
    //             .select(
    //                 `
    //                 id,
    //                 artist,
    //                 song_title,
    //                 ...countries!inner(
    //                 country,
    //                 flag_url
    //                 ),
    //                 ...esc_user_scores(
    //                 round,
    //                 song_score,
    //                 costume_score,
    //                 staging_score,
    //                 performance_score,
    //                 total,
    //                 is_scored
    //                 )
    //                 `,
    //             )
    //             .eq('year', year)
    //             .eq('esc_user_scores.round', round)
    //             .eq('esc_user_scores.user_id', user!.id);

    //         if (error) {
    //             console.error(error);
    //         } else {
    //             setScores(data);
    //         }

    //         setScoresLoading(false);
    //     }
        
    //     loadScores();
    // }, [user, year]);

    // if (scoresLoading) return <p>Loading...</p>;

    // return (
    //     <>
    //         <table className="neon-table">
    //             <thead>
    //                 <tr className="neon-header">
    //                 <th>Country</th>
    //                 <th>Song</th>
    //                 <th>Costume</th>
    //                 <th>Staging</th>
    //                 <th>Performance</th>
    //                 <th>Total</th>
    //                 </tr>
    //             </thead>

    //             <tbody>
    //                 {scores.map((s) => (
    //                 <tr key={s.id} className="neon-row">
    //                     <td className="country">
    //                         <img
    //                         src={s.flag_url}
    //                         alt={s.country}
    //                         width={40}
    //                         height={25}
    //                         className="flag-img"
    //                     />
    //                     {s.country}
    //                     </td>
    //                     <td className="score">{s.song_score}</td>
    //                     <td className="score">{s.costume_score}</td>
    //                     <td className="score">{s.staging_score}</td>
    //                     <td className="score">{s.performance_score}</td>
    //                     <td className="total">{s.total}</td>
    //                 </tr>
    //                 ))}
    //             </tbody>
    //         </table>
    //     </>
    // )
}