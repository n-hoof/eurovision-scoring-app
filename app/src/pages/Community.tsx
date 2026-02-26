import { useUsers } from "../queries/useUsers";
import styles from "../styles/Community.module.css";
import { Link } from "react-router-dom";

export default function Community() {
  const { data: users, isLoading, isError, error } = useUsers();

  if (isLoading) return <div>Loading users...</div>;
  if (isError) return <div>{(error as Error).message}</div>;

  return (
    <div>
      <h2 className={styles.title}>Our Jury</h2>
      <ul className={styles.userList}>
        {users?.map((user) => (
          <li key={user.id}>
            <Link to={`/user/${user.id}`} className={styles.userItem}>
              <span className={styles.username}>{user.username}</span>

              {/* Only render flag if it exists */}
              {user?.flag_url && (
                <img src={user.flag_url} alt="flag" className={styles.flag} />
              )}
            </Link>
          </li>
        ))}
      </ul>
    </div>
  );
}
