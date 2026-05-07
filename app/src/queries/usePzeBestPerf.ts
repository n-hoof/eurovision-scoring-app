import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { pzeBestPerfKey } from "./queryKeys";

interface PzeBestPerf {
    entry_id: number;
    artist: string;
    song_title: string;
    performance_avg: number;
}

export function usePzeBestPerf(year: number, round: number) {
    return useQuery({
        queryKey: pzeBestPerfKey(year, round),
        queryFn: async (): Promise<PzeBestPerf | null> => {
            const { data, error } = await supabase
                .from('pze_user_results')
                .select(
                    `
                    entry_id,
                    artist,
                    song_title,
                    performance_avg
                    `
                )
                .eq('year', year)
                .eq('round', round)
                .order('performance_avg', {ascending: false})
                .limit(1)
                .maybeSingle();
            
            if (error) throw error;

            if (!data) return null;

            return {
                entry_id: data.entry_id,
                artist: data.artist,
                song_title: data.song_title,
                performance_avg: data.performance_avg,
            };
            
        }
    })
}