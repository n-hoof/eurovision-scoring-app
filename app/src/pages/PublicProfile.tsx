import { useParams, Navigate } from "react-router-dom";
import PublicScoresTablePZE from "../components/PublicScoresTablePZE";
import { RoundSelectButton } from "../components/RoundSelectButton";
import styles from "../styles/PublicProfile.module.css";
import { useState } from "react";
import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { ContestSelect } from "../components/ContestSelect";
import { YearSelect } from "../components/YearSelect";
import PublicScoresTableESC from "../components/PublicScoresTableESC";

export default function PublicProfile() {
  const { user_id } = useParams();
  const [selectedRound, setSelectedRound] = useState<1 | 2 | 3>(3);
  const [selectedYear, setSelectedYear] = useState("2026");
  const [selectedContest, setSelectedContest] = useState<"esc" | "pze">("pze");

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

  let publicScoresTable;

  if (selectedContest === "pze") {
    publicScoresTable = (
      <PublicScoresTablePZE
        year={parseInt(selectedYear)}
        round={selectedRound}
        user_id={user_id}
        username={data.username}
      />
    );
  }

  if (selectedContest === "esc") {
    publicScoresTable = (
      <PublicScoresTableESC
        year={parseInt(selectedYear)}
        round={selectedRound}
        user_id={user_id}
        username={data.username}
      />
    );
  }

  return (
    <div>
      <h1 className={styles.title}>{data.username}</h1>
      <ContestSelect contest={selectedContest} onChange={setSelectedContest} />
      <YearSelect
        contest={selectedContest}
        val={selectedYear}
        onChange={setSelectedYear}
      />
      <RoundSelectButton round={selectedRound} onChange={setSelectedRound} />
      <div className={styles.container}>{publicScoresTable}</div>
    </div>
  );
}
