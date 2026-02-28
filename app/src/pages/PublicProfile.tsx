import { useParams, Navigate } from "react-router-dom";
import PublicScoresTablePZE from "../components/PublicScoresTablePZE";
import { RoundSelectButton } from "../components/RoundSelectButton";
import styles from "../styles/ScoresNeon.module.css";
import { useState } from "react";
import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";

export default function PublicProfile() {
  const { user_id } = useParams();
  const [selectedRound, setSelectedRound] = useState<1 | 2 | 3>(1);

  const { data, isLoading, error } = useQuery({
    queryKey: ["profile", user_id],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("profiles")
        .select("username")
        .eq("id", user_id)
        .single();

      if (error) throw error;
      return data;
    },
    enabled: !!user_id, // prevents running before param exists
  });

  if (isLoading) return <div>Loading...</div>;
  if (error) return <div>Profile not found</div>;

  if (!user_id || !data?.username) return <Navigate to="/" />;

  return (
    <div className={styles.page}>
      <div className={styles.pageWrapper}>
        <h1 className={styles.neonTitle}>{data.username}</h1>
        <h2>PZE 2026</h2>

        <RoundSelectButton round={selectedRound} onChange={setSelectedRound} />

        <PublicScoresTablePZE
          year={2026}
          round={selectedRound}
          user_id={user_id}
        />
      </div>
    </div>
  );
}
