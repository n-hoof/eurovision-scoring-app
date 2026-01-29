import { useEffect, useState } from "react";
import { useAuth } from "../hooks/useAuth";
import { supabase } from "../supabaseClient";
import "./DisplayUserScores.css";

interface UserScore {
    id: number;
    artist: string,
    song_title: string;
    country: string;
    flag_url: string;
    is_final: boolean;
    song_score: number;
    costume_score: number;
    staging_score: number;
    performance_score: number;
    total: number;
}

type Props = {
    year: number;
};

export default function DisplayUserScores({ year }: Props) {
    const {user} = useAuth();
    const[scores, setScores] = useState<UserScore[]>([]);
    const[scoresLoading, setScoresLoading] = useState(true);

    useEffect(() => {
        async function loadScores() {
            const { data, error } = await supabase
                .from('esc_entries')
                .select(
                    `
                    id,
                    artist,
                    song_title,
                    ...countries!inner(
                    country,
                    flag_url
                    ),
                    ...esc_user_scores(
                    is_final,
                    song_score,
                    costume_score,
                    staging_score,
                    performance_score,
                    total
                    )
                    `,
                )
                .eq('year', year)
                .eq('esc_user_scores.user_id', user!.id);

            if (error) {
                console.error(error);
            } else {
                setScores(data);
            }

            setScoresLoading(false);
        }

        loadScores();
    }, [user, year]);

    if (scoresLoading) return <p>Loading...</p>;

    return (
        <>
            <div style={{ position: "relative", height: "700px", overflow: "visible" }}>

                <div style={{ position: "absolute", top: "0", width: "100%", zIndex: 10 }}>
                    <table
                        className="neon-table crt"
                        style={{
                        width: "1300px",
                        margin: "auto",
                        borderCollapse: "collapse",
                        backgroundColor: "#ffffff00",
                        color: "#f0f0f0",
                        fontFamily: "'Orbitron', sans-serif",
                        textShadow: "0 0 6px rgba(255, 255, 255, 0.4)",
                        }}
                    >
                        <thead>
                        <tr className="neon-header" style={{ color: "#fff", textShadow: "0 0 8px #ff00ff" }}>
                            <th style={{ padding: "1rem", borderBottom: "2px solid #ff00ff" }}>Flag</th>
                            <th style={{ padding: "1rem", borderBottom: "2px solid #ff00ff" }}>Country</th>
                            <th style={{ padding: "1rem", borderBottom: "2px solid #ff00ff" }}>Artist</th>
                            <th style={{ padding: "1rem", borderBottom: "2px solid #ff00ff" }}>Song Title</th>
                            <th style={{ padding: "1rem", borderBottom: "2px solid #ff00ff" }}>Song /4</th>
                            <th style={{ padding: "1rem", borderBottom: "2px solid #ff00ff" }}>Costume /2</th>
                            <th style={{ padding: "1rem", borderBottom: "2px solid #ff00ff" }}>Staging /2</th>
                            <th style={{ padding: "1rem", borderBottom: "2px solid #ff00ff" }}>Performance /2</th>
                            <th style={{ padding: "1rem", borderBottom: "2px solid #ff00ff" }}>Total /10</th>
                        </tr>
                        </thead>

                        <tbody>
                        {scores.map(s => (
                            <tr key={s.id} className="neon-row" style={{ borderBottom: "1px solid #222" }}>
                            <td style={{ padding: "0.75rem" }}>
                                <img
                                src={s.flag_url}
                                alt={s.country}
                                width={40}
                                height={25}
                                style={{ objectFit: "cover", boxShadow: "0 0 8px #ff00ff" }}
                                />
                            </td>

                            <td
                                style={{
                                padding: "0.75rem",
                                fontWeight: "bold",
                                color: "#ff00ff",
                                textShadow: "0 0 6px #ff00ff",
                                }}
                            >
                                {s.country}
                            </td>

                            <td style={{ padding: "0.75rem", color: "#00eaff" }}>{s.artist}</td>

                            <td
                                style={{
                                padding: "0.75rem",
                                fontStyle: "italic",
                                color: "#ffea00",
                                textShadow: "0 0 6px #ffea00",
                                }}
                            >
                                {s.song_title}
                            </td>

                            <td style={{ padding: "0.75rem", color: "#147aff", textShadow: "0 0 6px #61cdff" }}>
                                {s.song_score}
                            </td>

                            <td style={{ padding: "0.75rem", color: "#147aff", textShadow: "0 0 6px #61cdff" }}>
                                {s.costume_score}
                            </td>

                            <td style={{ padding: "0.75rem", color: "#147aff", textShadow: "0 0 6px #61cdff" }}>
                                {s.staging_score}
                            </td>

                            <td style={{ padding: "0.75rem", color: "#147aff", textShadow: "0 0 6px #61cdff" }}>
                                {s.performance_score}
                            </td>

                            <td
                                style={{
                                padding: "0.75rem",
                                color: "#39ff14",
                                textShadow: "0 0 6px #39ff14",
                                }}
                            >
                                {s.total}
                            </td>
                            </tr>
                        ))}
                        </tbody>
                    </table>
                </div>
            </div>
            </>


    )
}