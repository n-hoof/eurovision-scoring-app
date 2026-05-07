import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { pzeBestSongKey } from "./queryKeys";

interface PzeBestSong {
    entry_id: number;
    artist: string;
    song_title: string;
    song_avg: number;
}

export function usePzeBestSong(year: number, round: number) {
    return useQuery({
        queryKey: pzeBestSongKey(year, round),
        queryFn: async (): Promise<PzeBestSong | null> => {
            const { data, error } = await supabase
                .from('pze_user_results')
                .select(
                    `
                    entry_id,
                    artist,
                    song_title,
                    song_avg
                    `
                )
                .eq('year', year)
                .eq('round', round)
                .order('song_avg', {ascending: false})
                .limit(1)
                .maybeSingle();
            
            if (error) throw error;

            if (!data) return null;

            return {
                entry_id: data.entry_id,
                artist: data.artist,
                song_title: data.song_title,
                song_avg: data.song_avg,
            };
            
        }
    })
}