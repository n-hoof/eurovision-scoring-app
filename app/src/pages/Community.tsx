import UserList from "../components/UserList";
import OurEscResultsMini from "../components/OurEscResultsMini";
import styles from "../styles/Community.module.css";

export default function Community() {
  return (
    <div className={styles.container}>
      {<UserList />}
      <div>
        <h2 className={styles.title}>Recent Results</h2>
        {<OurEscResultsMini year={2026} round={3} />}
      </div>
    </div>
  );
}
