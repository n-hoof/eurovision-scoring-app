import { useAuth } from "../hooks/useAuth";
import Auth from "../components/Auth";
import { Link } from "react-router-dom";
import { supabase } from '../supabaseClient';

export default function Home() {
  const { user } = useAuth();

  return (
    <div className="container">
      {!user && <Auth />}

      {user && (
        <div>
          <p>Welcome, {user.email}</p>
          <Link to="/profile">Go to your profile</Link>
          <button className="button block" type="button" onClick={() => supabase.auth.signOut()}>
            Sign Out
          </button>
        </div>
      )}
    </div>
  );
}
