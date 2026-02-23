import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { pzeUserScoresKey } from "./queryKeys";
import type { PzeUserScore } from "../types/PzeUserScore";


export function usePzeUserScores(
    user_id: string,
    year: number,
    round: number,
    enabled: boolean
) {
    return useQuery({
        queryKey: pzeUserScoresKey(user_id, year, round),
        enabled,
        queryFn: async (): Promise<PzeUserScore[]> => {
            const { data, error } = await supabase
                .from('pze_user_scores')
                .select(
                    `
                    entry_id,
                    song_score,
                    costume_score,
                    staging_score,
                    performance_score,
                    total,
                    is_scored,
                    round,
                    ...pze_entries!inner(
                    artist,
                    song_title
                    )
                    `,
                )
                .eq('user_id', user_id)
                .eq('round', round)
                .eq('pze_entries.year', year);

            if (error) throw error;

            return data.map((s) => ({
                entry_id: s.entry_id,
                round: s.round,
                song_score: s.song_score,
                costume_score: s.costume_score,
                staging_score: s.staging_score,
                performance_score: s.performance_score,
                total: s.total,
                is_scored: s.is_scored,
                artist: s.artist,
                song_title: s.song_title,
            }));
        }
    });
}