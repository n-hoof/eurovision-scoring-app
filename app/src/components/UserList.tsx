import { useUsers } from "../queries/useUsers";
import { useState } from "react";
import styles from "../styles/UserList.module.css";
import { Link } from "react-router-dom";

export default function UserList() {
  const { data: users, isLoading, isError, error } = useUsers();
  const [search, setSearch] = useState("");

  if (isLoading) return <div>Loading users...</div>;

  if (isError) {
    console.log(error.message);
    return <div>Something went wrong...</div>;
  }

  const filteredUsers = users?.filter((user) =>
    user.username.toLowerCase().includes(search.toLowerCase()),
  );

  return (
    <div>
      <h2 className={styles.title}>Our Jury</h2>
      <input
        type="text"
        placeholder="Search by username..."
        value={search}
        onChange={(e) => setSearch(e.target.value)}
        className={styles.searchBar}
      />
      <div className={styles.listContainer}>
        <ul className={`${styles.userList} scrollbarPink`}>
          {filteredUsers?.map((user) => (
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
    </div>
  );
}
