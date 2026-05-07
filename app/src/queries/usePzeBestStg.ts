import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { pzeBestStgKey } from "./queryKeys";

interface PzeBestStg {
    entry_id: number;
    artist: string;
    song_title: string;
    staging_avg: number;
}

export function usePzeBestStg(year: number, round: number) {
    return useQuery({
        queryKey: pzeBestStgKey(year, round),
        queryFn: async (): Promise<PzeBestStg | null> => {
            const { data, error } = await supabase
                .from('pze_user_results')
                .select(
                    `
                    entry_id,
                    artist,
                    song_title,
                    staging_avg
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
                artist: data.artist,
                song_title: data.song_title,
                staging_avg: data.staging_avg,
            };
            
        }
    })
}