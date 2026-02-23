import { useState } from "react";
import SignIn from "./SignIn";
import SignUp from "./SignUp";
import styles from "../styles/Auth.module.css";

export default function Auth() {
    const [activeForm, setActiveForm] = useState<'signIn' | 'signUp'>('signIn');



  return (
    <div className={styles.authWrapper}>
      <h1 className={styles.authTitle}>MY euro VISION</h1>
      <p className={styles.authSubtitle}>
        Join today and cement your EuroVision scores in history!
      </p>
      {/* Toggle buttons */}
      <div className={styles.toggleButtons}>
        <button
          onClick={() => setActiveForm('signIn')}
          className={`${styles.toggleButton} ${activeForm === 'signIn' ? styles.toggleButtonActive : ''}`}
        >
          Sign IN
        </button>
        <button
          onClick={() => setActiveForm('signUp')}
          className={`${styles.toggleButton} ${activeForm === 'signUp' ? styles.toggleButtonActive : ''}`}
        >
          Sign UP
        </button>
      </div>

      {/* Display the selected form */}
      <div>
        {activeForm === 'signIn' ? <SignIn /> : <SignUp />}
      </div>
    </div>
  );
}