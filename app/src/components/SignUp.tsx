import { useState } from 'react'
import { supabase } from '../supabaseClient'
import styles from "../styles/Auth.module.css"

export default function SignUp() {
  const [loading, setLoading] = useState(false)
  const [email, setEmail] = useState('')
  const [confirmEmail, setConfirmEmail] = useState('')

  const handleLogin = async (event: React.FormEvent) => {
    event.preventDefault()

    if (email !== confirmEmail) {
      alert('Emails do not match')
      return
    }

    setLoading(true)

    const { error:signUpError } = await supabase.auth.signInWithOtp({ 
      email
    })

    if (signUpError) {
      alert(`Sign-up failed for ${email}`)
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
        <input
          className={styles.inputField}
          type="email"
          placeholder="Confirm your email"
          value={confirmEmail}
          required
          onChange={(e) => setConfirmEmail(e.target.value)}
          onPaste={(e) => e.preventDefault()}
        />
      </div>

      <div className={styles.formGroup}>
        <button className={styles.button} disabled={loading}>
          {loading ? (
            <span className={styles.loading}>Loading...</span>
          ) : (
            <span>Create account</span>
          )}
        </button>
      </div>
    </form>
  );
}