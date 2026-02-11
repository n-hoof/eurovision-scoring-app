import { useState } from "react";
import type { UserScore } from "../types/UserScore";

const SONG_SCORES = [0, 0.25, 0.5, 0.75, 1, 1.25, 1.5, 1.75, 2, 2.25, 2.5, 2.75, 3, 3.25, 3.5, 3.75, 4];
const OTHER_SCORES = [0, 0.25, 0.5, 0.75, 1, 1.25, 1.5, 1.75, 2];

interface ScoreSubmitPayload {
    song: number;
    costume: number;
    staging: number;
    performance: number;
}

interface Props {
    score: UserScore;
    onClose: () => void;
    onSubmit: (payload: ScoreSubmitPayload) => void;

}

export function EscScorecard({ score, onClose, onSubmit }: Props) {
    const[song, setSong] = useState<number>(score.song_score);
    const[costume, setCostume] = useState<number>(score.costume_score);
    const [staging, setStaging] = useState<number>(score.staging_score);
    const [performance, setPerformance] = useState<number>(score.performance_score);

    const handleSubmit = () => {
        //convert dropdown selections from string to number
        const payload: ScoreSubmitPayload = {
            song: Number(song),
            costume: Number(costume),
            staging: Number(staging),
            performance: Number(performance),
        };

        onSubmit(payload);
    };

    return (
        <div style={{
            position: "fixed",
            inset: 0,
            background: "rgba(0,0,0,0.7)",
            display: "flex",
            justifyContent: "center",
            alignItems: "center",
            zIndex: 100
            }}>
            <div style={{
                background: "#101010",
                border: "2px solid #ff00ff",
                boxShadow: "0 0 25px #ff00ff",
                padding: "1.5rem",
                borderRadius: "10px",
                minWidth: 300
            }}>
                <button onClick={onClose} style={{ float: "right" }}>✕</button>

                <h3>{score.artist} – {score.song_title}</h3>

                <label>Song</label>
                <select value={song} onChange={e => setSong(+e.target.value)}>
                {SONG_SCORES.map(v => <option key={v}>{v}</option>)}
                </select>

                <label>Costume</label>
                <select value={costume} onChange={e => setCostume(+e.target.value)}>
                {OTHER_SCORES.map(v => <option key={v}>{v}</option>)}
                </select>

                <label>Staging</label>
                <select value={staging} onChange={e => setStaging(+e.target.value)}>
                {OTHER_SCORES.map(v => <option key={v}>{v}</option>)}
                </select>

                <label>Performance</label>
                <select value={performance} onChange={e => setPerformance(+e.target.value)}>
                {OTHER_SCORES.map(v => <option key={v}>{v}</option>)}
                </select>

                <button
                onClick={handleSubmit}
                style={{
                    marginTop: "1rem",
                    background: "#ff00ff",
                    border: "none",
                    padding: "0.6rem 1rem",
                    color: "#fff",
                    cursor: "pointer"
                }}
                >
                Submit
                </button>
            </div>
        </div>
    )
}