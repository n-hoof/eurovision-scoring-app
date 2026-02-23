import { Link, Navigate } from "react-router-dom";
import { useAuth } from "../hooks/useAuth";
import styles from "../styles/MyScores.module.css";

export default function MyScores() {
    const { user, loading } = useAuth();
    const ESC_YEARS = ["2025", "2024", "2023", "2022"];
    const PZE_YEARS = ["2026"];

    if (loading) return <div>Loading...</div>;
    if (!user) return <Navigate to="/" />; 
    
    return (
        <div className={styles.scoresWrapper}>
            <div className={styles.listsContainer}>
                <div className={styles.listWrapper}>
                <h1 className={styles.neonTitle}>Eurovision</h1>
                <ul className={styles.yearList}>
                    {ESC_YEARS.map(year => (
                    <li key={year}>
                        <Link className={styles.yearLink} to={`esc/${year}`}>
                        {year}
                        </Link>
                    </li>
                    ))}
                </ul>
                </div>

                <div className={styles.listWrapper}>
                <h1 className={styles.neonTitle}>Pesma za Evroviziju</h1>
                <ul className={styles.yearList}>
                    {PZE_YEARS.map(year => (
                    <li key={year}>
                        <Link className={styles.yearLink} to={`pze/${year}`}>
                        {year}
                        </Link>
                    </li>
                    ))}
                </ul>
                </div>
            </div>
        </div>
    );
}