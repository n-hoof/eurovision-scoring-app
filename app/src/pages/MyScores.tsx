import { Link, Navigate } from "react-router-dom";
import { useAuth } from "../hooks/useAuth";





export default function MyScores() {
    const { user, loading } = useAuth();
    const ESC_YEARS = ["2025", "2024", "2023", "2022"];

    if (loading) return <div>Loading...</div>;
    if (!user) return <Navigate to="/" />; 
    
    return (
        <div>
            <h1>My ESC Scores</h1>
            <ul>
                {ESC_YEARS.map(year => (
                    <li key={year}>
                        <Link to={year}>{year}</Link>
                    </li>
                ))}
            </ul>
        </div>
    )
}