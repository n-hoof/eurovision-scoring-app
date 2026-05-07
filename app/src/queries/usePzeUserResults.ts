import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { pzeUserResultsKey } from "./queryKeys";
import type { PzeUserResult } from "../types/PzeUserResult";

export function usePzeUserResults(
    year: number,
    round: number
) {
    return useQuery({
        queryKey: pzeUserResultsKey(year, round),
        queryFn: async (): Promise<PzeUserResult[]> => {
            const { data, error } = await supabase
                .from('pze_user_results')
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
                    diff
                    `
                )
                .eq('year', year)
                .eq('round', round)
                .order('place');

            if (error) throw error;

            return data.map((s) => ({
                entry_id: s.entry_id,
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