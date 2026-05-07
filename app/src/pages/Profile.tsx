import { useState, useEffect } from "react";
import { useAuth } from "../hooks/useAuth";
import { Navigate } from "react-router-dom";
import { useProfile } from "../hooks/useProfile";
import { useCountries } from "../queries/useCountries";
import { supabase } from "../supabaseClient";
import styles from "../styles/Profile.module.css";

export default function Profile() {
  const { user, loading: authLoading, session } = useAuth();
  const { profile, loading: profileLoading, updateProfile } = useProfile();
  const { data: countries = [], isLoading: countriesLoading } = useCountries();

  const [formUsername, setFormUsername] = useState("");
  const [formCountryId, setFormCountryId] = useState<number | null>(null);
  const [saving, setSaving] = useState(false);
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [isDeleting, setIsDeleting] = useState(false);

  useEffect(() => {
    if (profile) {
      setFormUsername(profile.username);
      setFormCountryId(profile.country_id);
    }
  }, [profile]);

  if (authLoading || profileLoading || countriesLoading)
    return <div>Loading...</div>;
  if (!user) return <Navigate to="/" />;

  async function handleSubmit(e: React.FormEvent<HTMLFormElement>) {
    e.preventDefault();
    setSaving(true);

    try {
      await updateProfile({
        username: formUsername,
        country_id: formCountryId,
      });
    } catch (error) {
      alert(`Error updating profile: ${error}`);
    }

    setSaving(false);
  }

  async function handleDelete() {
    setIsDeleting(true);
    try {
      if (!user || !session) throw new Error("No user/session found");
      const accessToken = session.access_token;

      await supabase.functions.invoke("user-self-delete", {
        headers: {
          Authorization: `Bearer ${accessToken}`,
        },
        body: {},
      });

      alert("Account deleted succesfully!");
      
      
    } catch (error) {
      alert("Error deleting account!");
      console.log(error);
    } finally {
      setIsDeleting(false);
      setIsModalOpen(false);
      await supabase.auth.signOut();
    }
  }

  return (
    <div className={styles.profileWrapper}>
      <form onSubmit={handleSubmit} className={styles.profileForm}>
        <h2 className={styles.profileTitle}>Your Profile</h2>

        <div className={styles.formGroup}>
          <label>Email</label>
          <input type="text" value={user.email} disabled />
        </div>

        <div className={styles.formGroup}>
          <label>Name</label>
          <input
            type="text"
            required
            minLength={3}
            pattern="[a-zA-Z0-9 ]+"
            title="Please enter a valid name (letters, numbers and spaces only)"
            value={formUsername}
            onChange={(e) => setFormUsername(e.target.value)}
          />
        </div>

        <div className={styles.formGroup}>
          <label>Country</label>
          <select
            value={formCountryId ?? ""}
            onChange={(e) =>
              setFormCountryId(e.target.value ? parseInt(e.target.value) : null)
            }
          >
            <option value="">Choose a country to represent!</option>
            {countries.map((country) => (
              <option key={country.id} value={country.id}>
                {country.country}
              </option>
            ))}
          </select>
        </div>

        <button
          className={`${styles.button} ${styles.signOut}`}
          type="submit"
          disabled={saving}
        >
          {saving ? "Saving..." : "Update"}
        </button>
      </form>

      <div>
        <button
          className={styles.buttonDelete}
          onClick={() => setIsModalOpen(true)}
        >
          Delete Account
        </button>
      </div>

      {isModalOpen && (
        <div className="modal-container">
          <div className="modal-content">
            <h2>Confirm Account Deletion</h2>
            <p>Are you sure you want to delete your account?</p>
            <div>
              <button className={styles.buttonDelete} onClick={handleDelete} disabled={isDeleting}>
                {isDeleting ? <span className="spinner" /> : "Confirm"}
              </button>
              <button className="button" onClick={() => setIsModalOpen(false)} disabled={isDeleting}>
                Cancel
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
