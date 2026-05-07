import type { Comment } from "../types/Comment";

interface Props {
  comments?: Comment[];
}

export default function CommentIndicator({ comments = [] }: Props) {
  if (!comments || comments.length === 0) return null;

  return (
    <span style={{ marginLeft: "70px", opacity: 0.6, float: "right" }}>
      🗨 <span style={{fontSize:"10px"}}>{comments.length}</span>
    </span>
  );
}
