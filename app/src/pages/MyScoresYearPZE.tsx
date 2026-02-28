import { useParams, Navigate } from "react-router-dom";
import { useAuth } from "../hooks/useAuth";
import UserScoresTablePZE from "../components/UserScoresTablePZE";
import { useState } from "react";
import { RoundSelectButton } from "../components/RoundSelectButton";
import styles from "../styles/ScoresNeon.module.css";

export default function MyScoresYearPZE() {
    const { year } = useParams();
    const { user, loading } = useAuth();
    const [selectedRound, setSelectedRound] = useState<1 | 2 | 3>(3);

    if (loading) return <div>Loading...</div>;
    if (!user || !year) return <Navigate to="/" />;

    return (

        <div className={styles.page}>
            {/* Background effects */}
            <div className={styles.gridFloor}></div>
            <div className={styles.fog}></div>
            <div className={styles.neonHeart}></div>

            <div className={styles.pageWrapper}>
                <h1 className={styles.neonTitle}>PZE {year}</h1>

                <RoundSelectButton round={selectedRound} onChange={setSelectedRound} />

                <UserScoresTablePZE year={parseInt(year)} round={selectedRound} />

            </div>
        </div>

    )
}