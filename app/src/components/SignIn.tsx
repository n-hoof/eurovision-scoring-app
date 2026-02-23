import { useState } from 'react'
import { supabase } from '../supabaseClient'
import styles from "../styles/Auth.module.css";

export default function SignIn() {
  const [loading, setLoading] = useState(false)
  const [email, setEmail] = useState('')

  const handleLogin = async (event: React.FormEvent) => {
    event.preventDefault()

    setLoading(true)

    const { error } = await supabase.auth.signInWithOtp({ 
      email,
      options: {
        shouldCreateUser: false
      } 
    })

    if (error) {
      alert(`Sign-in failed for ${email}`)
    } else {
      alert('Check your email for the login link!')
    }
    setLoading(false)
  }

  return (
    <form className={styles.formWidget} onSubmit={handleLogin}>
      <div className={styles.formGroup}>
        <input
          className={styles.inputField}
          type="email"
          placeholder="Your email"
          value={email}
          required
          onChange={(e) => setEmail(e.target.value)}
        />
      </div>

      <div className={styles.formGroup}>
        <button className={styles.button} disabled={loading}>
          {loading ? (
            <span className={styles.loading}>Loading...</span>
          ) : (
            <span>Send magic link</span>
          )}
        </button>
      </div>
    </form>
  );
}