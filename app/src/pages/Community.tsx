import UserList from "../components/UserList";
import OurPzeResultsMini from "../components/OurPzeResultsMini";
import styles from "../styles/Community.module.css";

export default function Community() {
  return (
    <div className={styles.container}>
      {<UserList />}
      <div>
        <h2 className={styles.title}>Recent Results</h2>
      {<OurPzeResultsMini year={2026} round={3} />}
      </div>
    </div>
  );
}
