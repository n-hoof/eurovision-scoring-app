import { useState, useEffect } from 'react';
import { useAuth } from '../hooks/useAuth';
import { Navigate } from 'react-router-dom';
import { useProfile } from '../hooks/useProfile';
import { useCountries } from '../queries/useCountries';
import styles from "../styles/Profile.module.css";



export default function Profile() {
  const { user, loading: authLoading } = useAuth();
  const { profile, loading: profileLoading, updateProfile } = useProfile();
  const { data: countries = [], isLoading: countriesLoading } = useCountries();

  const [formUsername, setFormUsername] = useState('');
  const [formCountryId, setFormCountryId] = useState<number | null>(null);
  const [saving, setSaving] = useState(false);

  useEffect(() => {
    if(profile) {
      setFormUsername(profile.username);
      setFormCountryId(profile.country_id);
    }
  }, [profile]);

  if (authLoading || profileLoading || countriesLoading) return <div>Loading...</div>;
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
            pattern="^[a-zA-Z0-9._\\-]*$"
            title="Please enter a valid name (letters and spaces only)"
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
    </div>
  );
}