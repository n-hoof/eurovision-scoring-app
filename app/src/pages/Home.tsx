import { useAuth } from "../hooks/useAuth";
import Auth from "../components/Auth";
import Dashboard from "../components/Dashboard";

export default function Home() {
  const { user } = useAuth();

  return (
    <div>
      {!user && <Auth />}
      {user && <Dashboard />}
    </div>
  );
}
