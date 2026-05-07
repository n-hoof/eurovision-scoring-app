import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { escUserResultsKey } from "./queryKeys";
import type { EscUserResult } from "../types/EscUserResult";

export function useEscUserResults(
    year: number,
    round: number
) {
    return useQuery({
        queryKey: escUserResultsKey(year, round),
        queryFn: async (): Promise<EscUserResult[]> => {
            const { data, error } = await supabase
                .from('esc_user_results')
                .select(
                    `
                    entry_id,
                    artist,
                    song_title,
                    song_avg,
                    costume_avg,
                    staging_avg,
                    performance_avg,
                    total_avg,
                    place,
                    real_place,
                    diff,
                    ...countries!inner(
                    country,
                    flag_url
                    )
                    `
                )
                .eq('year', year)
                .eq('round', round)
                .order('place');

            if (error) throw error;

            return data.map((s) => ({
                entry_id: s.entry_id,
                country: s.country,
                flag_url: s.flag_url,
                artist: s.artist,
                song_title: s.song_title,
                song_avg: s.song_avg,
                costume_avg: s.costume_avg,
                staging_avg: s.staging_avg,
                performance_avg: s.performance_avg,
                total_avg: s.total_avg,
                place: s.place,
                real_place: s.real_place,
                diff: s.diff,
            }));
        }
    })
}