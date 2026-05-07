import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { pzeBestCostKey } from "./queryKeys";

interface PzeBestCost {
    entry_id: number;
    artist: string;
    song_title: string;
    costume_avg: number;
}

export function usePzeBestCost(year: number, round: number) {
    return useQuery({
        queryKey: pzeBestCostKey(year, round),
        queryFn: async (): Promise<PzeBestCost | null> => {
            const { data, error } = await supabase
                .from('pze_user_results')
                .select(
                    `
                    entry_id,
                    artist,
                    song_title,
                    costume_avg
                    `
                )
                .eq('year', year)
                .eq('round', round)
                .order('costume_avg', {ascending: false})
                .limit(1)
                .maybeSingle();
            
            if (error) throw error;

            if (!data) return null;

            return {
                entry_id: data.entry_id,
                artist: data.artist,
                song_title: data.song_title,
                costume_avg: data.costume_avg,
            };
            
        }
    })
}