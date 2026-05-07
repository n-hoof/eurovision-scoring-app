import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { escBestPerfKey } from "./queryKeys";

interface EscBestPerf {
    entry_id: number;
    country: string;
    flag_url: string;
    artist: string;
    song_title: string;
    performance_avg: number;
}

export function useEscBestPerf(year: number, round: number) {
    return useQuery({
        queryKey: escBestPerfKey(year, round),
        queryFn: async (): Promise<EscBestPerf | null> => {
            const { data, error } = await supabase
                .from('esc_user_results')
                .select(
                    `
                    entry_id,
                    artist,
                    song_title,
                    performance_avg,
                    ...countries!inner(
                    country,
                    flag_url
                    )
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
                country: data.country,
                flag_url: data.flag_url,
                artist: data.artist,
                song_title: data.song_title,
                performance_avg: data.performance_avg,
            };
            
        }
    })
}