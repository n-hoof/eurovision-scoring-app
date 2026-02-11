import { useMutation, useQueryClient } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { escUserScoresKey } from "../queries/queryKeys";

export function useEscUpdateScore(
    user_id: string,
    year: number,
    round: number
) {
    const qc = useQueryClient();

    return useMutation({
        mutationFn: async (payload: {
            entry_id: number;
            song: number;
            costume: number;
            staging: number;
            performance: number;
        }) => {
            const { error } = await supabase
                .from('esc_user_scores')
                .update({
                    song_score: payload.song,
                    costume_score: payload.costume,
                    staging_score: payload.staging,
                    performance_score: payload.performance,
                    is_scored: true,
                })
                .eq('user_id', user_id)
 	            .eq('round', round)
	            .eq('entry_id', payload.entry_id);


            if (error) throw error;
        },
        onSuccess: () => {
            qc.invalidateQueries({queryKey: escUserScoresKey(user_id, year, round)});
        }
    })
}