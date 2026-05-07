import type { Comment } from "../types/Comment";
import styles from "../styles/PublicScoresTable.module.css";
import { useAuth } from "../hooks/useAuth";
import { useDeleteEscComment } from "../queries/useDeleteEscComment";
import { useDeletePzeComment } from "../queries/useDeletePzeComment";
import { formatDate } from "../utils/formatDate";

interface Props {
  comments: Comment[];
  user_id: string;
  year: number;
  round: number;
  contest: "esc" | "pze";
}

export default function Comments({
  comments,
  user_id,
  year,
  round,
  contest,
}: Props) {
  const { user: currentUser } = useAuth();
  const deleteEscComment = useDeleteEscComment(user_id, year, round);
  const deletePzeComment = useDeletePzeComment(user_id, year, round);
  const deleteComment = contest === "pze" ? deletePzeComment : deleteEscComment;
  if (comments.length === 0)
    return <div className={styles.noComments}>No comments yet</div>;

  return (
    <div className={styles.commentsList}>
      {comments.map((c) => (
        <div key={c.id} className={styles.comment}>
          <div className={styles.commentBlock}>
            <strong className={styles.username}>{c.username}</strong>
            <span className={styles.timestamp}>{formatDate(c.created_at)}</span>
            <p className={styles.commentContent}>{c.content}</p>
          </div>
          {(c.commenter_id === currentUser?.id ||
            user_id === currentUser?.id) && (
            <button
              className={styles.deleteCommentButton}
              title="Delete"
              onClick={() => deleteComment.mutate(c.id)}
            >
              ✕
            </button>
          )}
        </div>
      ))}
    </div>
  );
}
