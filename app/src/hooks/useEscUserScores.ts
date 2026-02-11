import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { escUserScoresKey } from "../queries/queryKeys";
import type { UserScore } from "../types/UserScore";


export function useEscUserScores(
    user_id: string,
    year: number,
    round: number,
    enabled: boolean
) {
    return useQuery({
        queryKey: escUserScoresKey(user_id, year, round),
        enabled,
        queryFn: async (): Promise<UserScore[]> => {
            const { data, error } = await supabase
                .from('esc_user_scores')
                .select(
                    `
                    entry_id,
                    song_score,
                    costume_score,
                    staging_score,
                    performance_score,
                    total,
                    is_scored,
                    ...esc_entries!inner(
                    artist,
                    song_title,
                    ...countries!inner(
                        country,
                        flag_url
                    )
                    )
                    `,
                )
                .eq('user_id', user_id)
                .eq('round', round)
                .eq('esc_entries.year', year);

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
                country: s.country,
                flag_url: s.flag_url,
            }));
        }
    });
}