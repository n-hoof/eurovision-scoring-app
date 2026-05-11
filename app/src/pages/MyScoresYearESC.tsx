import { useParams, Navigate } from "react-router-dom";
import { useAuth } from "../hooks/useAuth";
import UserScoresTableESC from "../components/UserScoresTableESC";
import { RoundSelectButton } from "../components/RoundSelectButton";
import { useState } from "react";
import styles from "../styles/ScoresNeon.module.css";

export default function MyScoresYearESC() {
    const { year } = useParams();
    const { user, loading } = useAuth();
    const [selectedRound, setSelectedRound] = useState<1 | 2 | 3>(1);

    if (loading) return <div>Loading...</div>;
    if (!user || !year) return <Navigate to="/" />;

    return (


        <div className={styles.page}>
            {/* Background effects */}
            <div className={styles.neonHeart}></div>

            <div className={styles.pageWrapper}>
                <h1 className={styles.neonTitle}>Eurovision {year}</h1>

                <RoundSelectButton round={selectedRound} onChange={setSelectedRound} disableFinal={year==="2026"}/>

                <UserScoresTableESC year={parseInt(year)} round={selectedRound} />

            </div>
        </div>
    )
}