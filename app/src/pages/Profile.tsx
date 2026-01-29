import { useState, useEffect } from 'react';
import { supabase } from '../supabaseClient';
import { useAuth } from '../hooks/useAuth';
import { Navigate, Link } from 'react-router-dom';

interface Country {
  id: number;
  country: string;
  flag_url: string | null;
}

// Add later, when adding function for user to select a favourite entry

// interface EscEntry {
//   id: number;
//   country_id: number;
//   year: number;
//   artist: string;
//   song_title: string;
// }

export default function Profile() {
  const { user, loading } = useAuth();
  const [profileLoading, setProfileLoading] = useState(true)
  const [username, setUsername] = useState<string | null>(null)
  const [userCountryId, setUserCountryId] = useState<number | null>(null)
  const [countries, setCountries] = useState<Country[]>([])

  useEffect(() => {
    let isMounted = true;
    
    if (!user) {
      setProfileLoading(false)
      return
    }

    async function getProfile() {
      setProfileLoading(true)

      const { data, error } = await supabase
        .from('profiles')
        .select('username, country_id')
        .eq('id', user!.id)
        .single()

      if (error) console.warn(error);
      if (data && isMounted) {
        setUsername(data.username);
        setUserCountryId(data.country_id);
      }
      setProfileLoading(false);
    }

    async function getCountries() {
      const { data, error } = await supabase
        .from('countries')
        .select('id, country, flag_url')
        .order('country')

      if (error) console.warn(error);
      if (data && isMounted) setCountries(data);
    }

    getProfile();
    getCountries();
    
    return () => { isMounted = false; };
  }, [user, loading]);

  if (loading) return <div>Loading...</div>;
  
  if (!user) return <Navigate to="/" />;

  async function updateProfile(event: React.FormEvent) {
    event.preventDefault()

    setProfileLoading(true)

    const { error } = await supabase.from('profiles').upsert({
      id: user!.id,
      username,
      country_id: userCountryId,
    })

    if (error) {
      alert(error.message)
    } 
    setProfileLoading(false)
  }

  return (
    <form onSubmit={updateProfile} className="form-widget">
      <h2>Your Profile</h2>
      
      <div>
        <label htmlFor="email">Email</label>
        <input id="email" type="text" value={user.email} disabled />
      </div>

      <div>
        <label htmlFor="username">Name</label>
        <input
          id="username"
          type="text"
          required
          value={username || ''}
          onChange={(e) => setUsername(e.target.value)}
        />
      </div>

      <div>
        <label htmlFor="country">Your Country</label>
        <select
          id="country"
          value={userCountryId || ''}
          onChange={(e) => setUserCountryId(e.target.value ? parseInt(e.target.value) : null)}
          >
          <option value="">Choose a country to represent!</option>
          {countries.map((country) => (
            <option key={country.id} value={country.id}>
              {country.country}
            </option>
          ))}
        </select>
      </div>

      <div>
        <button className="button block primary" type="submit" disabled={profileLoading}>
          {profileLoading ? 'Loading ...' : 'Update'}
        </button>
      </div>

      <div>
        <button className="button block" type="button" onClick={() => supabase.auth.signOut()}>
          Sign Out
        </button>
      </div>

      <div>
        <Link to="/">Go to your dashboard</Link>
      </div>

      <div>
        <Link to ="/myscores">See your scores</Link>
      </div>

    </form>
  )
}