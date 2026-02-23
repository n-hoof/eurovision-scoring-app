// src/components/Navbar.jsx
import { Link } from "react-router-dom";
import { useProfile } from "../hooks/useProfile";
import { supabase } from "../supabaseClient";
import { useAuth } from "../hooks/useAuth";

export default function Navbar() {
  const { profile } = useProfile();
  const { user, loading: authLoading } = useAuth();
  
  return (
    <nav className="navbar">
      <div className="navbar-links">
        <Link to="/" className="nav-link">Home</Link>
        <Link to="/my-scores" className="nav-link">My Scores</Link>
        <Link to="/profile" className="nav-link">My Profile</Link>
      </div>

      <div className="navbar-user">
        {profile?.username && (
          <span className="nav-username">{profile.username}</span>
        )}
        {!authLoading && user && (
          <button
          className="button sign-out"
          type="button"
          onClick={() => supabase.auth.signOut()}
        >
          Sign Out
        </button>
        )}
      </div>
    </nav>
  );
}