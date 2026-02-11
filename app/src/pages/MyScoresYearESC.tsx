import { useParams, Navigate } from "react-router-dom";
import { useAuth } from "../hooks/useAuth";
import UserScoresTableESC from "../components/UserScoresTableESC";
import "../styles/scores-neon.css";

export default function MyScoresYearESC() {
    const { year } = useParams();
    const { user, loading } = useAuth();

    if (loading) return <div>Loading...</div>;
    if (!user || !year) return <Navigate to="/" />;

    return (
         <>
            <div className="page-wrapper">
            <h1 className="neon-title">SCORES FOR {year}</h1>

            <div className="table-center">
                <div className="table-wrapper crt">
                <UserScoresTableESC year={parseInt(year)} round={3} />
                </div>
            </div>
            </div>

            {/* Background effects */}
            <div className="grid-floor"></div>
            <div className="fog"></div>
            <div className="neon-heart"></div>
        </>
    )
}