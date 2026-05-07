import { useAuth } from "../hooks/useAuth";
import Auth from "../components/Auth";
import Dashboard from "../components/Dashboard";
import styles from "../styles/ScoresNeon.module.css";

export default function Home() {
  const { user } = useAuth();

  return (
    <div>
      <div className={styles.gridFloor}></div>
      {!user && <Auth />}
      {user && <Dashboard />}
    </div>
  );
}
