import { useProfile } from "../hooks/useProfile";
import { useNavigate } from "react-router-dom";
import styles from "../styles/Dashboard.module.css";

export default function Dashboard() {
  const { profile, loading } = useProfile();
  const navigate = useNavigate();

  if (loading) return <div className={styles.loading}>Loading...</div>;

  return (
    <div className={styles.dashboardWrapper}>
      <em>
        <h1 className={styles.welcomeText}>
          Welcome to the show,{" "}
          <span className={styles.username}>{profile?.username}</span>
        </h1>
      </em>

      <h2 className={styles.currentEvents}>Current Events</h2>

      <button
        className={styles.crtButton}
        onClick={() => navigate("/my-scores/esc/2026")}
      >
        <div className={styles.buttonMain}>Eurovision 2026</div>
        <div className={styles.buttonSub}>SCORE THE GRAND FINAL</div>
      </button>
    </div>
  );
}
