import { useAuth } from "../hooks/useAuth";
import { useState } from "react";
import { supabase } from "../supabaseClient";
import styles from "../styles/PublicScoresTable.module.css";

interface Props {
  scoreId: number;
  contest: "esc" | "pze";
  onCommentAdded?: () => void;
}

export default function WriteCommentBox({
  scoreId,
  contest,
  onCommentAdded,
}: Props) {
  const { user } = useAuth();
  const [content, setContent] = useState("");
  const [loading, setLoading] = useState(false);

  const commentTable = contest === "pze" ? "pze_comments" : "esc_comments";

  const handleSubmit = async () => {
    if (!user || !content.trim()) return;

    setLoading(true);

    const { error } = await supabase.from(commentTable).insert({
      commenter_id: user.id,
      score_id: scoreId,
      content: content.trim(),
    });

    setLoading(false);

    if (error) {
      console.error(error);
      return;
    }

    setContent("");
    onCommentAdded?.();
  };

  return (
    <div className={styles.writeCommentBox}>
      {!user ? (
        <div className={styles.signInPrompt}>Sign in to leave a comment</div>
      ) : (
        <>
          <textarea
            value={content}
            className={`${styles.textarea} scrollbarPink`}
            onChange={(e) => {
              if (e.target.value.length <= 100) {
                setContent(e.target.value);
              }
            }}
            placeholder="Leave a comment..."
            rows={2}
            disabled={loading}
          />
          <div className={styles.footer}>
            <span className={styles.charCount}>{content.length}/100</span>
          </div>

          <button
            onClick={handleSubmit}
            disabled={loading || content.trim().length === 0}
            className={styles.submitButton}
          >
            {loading ? "Posting..." : "Post"}
          </button>
        </>
      )}
    </div>
  );
}
