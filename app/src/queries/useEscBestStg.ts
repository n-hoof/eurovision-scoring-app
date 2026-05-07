import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { escBestStgKey } from "./queryKeys";

interface EscBestStg {
    entry_id: number;
    country: string;
    flag_url: string;
    artist: string;
    song_title: string;
    staging_avg: number;
}

export function useEscBestStg(year: number, round: number) {
    return useQuery({
        queryKey: escBestStgKey(year, round),
        queryFn: async (): Promise<EscBestStg | null> => {
            const { data, error } = await supabase
                .from('esc_user_results')
                .select(
                    `
                    entry_id,
                    artist,
                    song_title,
                    staging_avg,
                    ...countries!inner(
                    country,
                    flag_url
                    )
                    `
                )
                .eq('year', year)
                .eq('round', round)
                .order('staging_avg', {ascending: false})
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
                staging_avg: data.staging_avg,
            };
            
        }
    })
}