import { useParams, Navigate } from "react-router-dom";
import { useAuth } from "../hooks/useAuth";
import DisplayUserScores from "../components/DisplayUserScores";
import "./YearMyScores.css";

export default function YearMyScores() {
    const { year } = useParams();
    const { user, loading } = useAuth();

    if (loading) return <div>Loading...</div>;
    if (!user || !year) return <Navigate to="/" />;

    return (
        <>
            <h1 className="neon-title">SCORES FOR {year}</h1>
            <div className="grid-floor"></div>
            <div className="fog"></div>
            <div className="neon-heart"></div>
            <DisplayUserScores year={parseInt(year)} />
        </>
    )
}