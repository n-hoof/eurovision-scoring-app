import { useMutation, useQueryClient } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { escScoringStatusKey, escUserScoresKey } from "../queries/queryKeys";

export function useEscInitScoring(
    user_id: string,
    year: number,
    round: number,
) {
    const qc = useQueryClient();

    return useMutation({
        mutationFn: async () => {
            const { data, error: entriesError } = await supabase
                .from('esc_entries')
                .select(
                    `
                    id,
                    ...esc_real_scores!inner()
                    `,
                )
                .eq('year', year)
                .eq('esc_real_scores.round', round);

            if (entriesError) throw entriesError;

            const initScores = data.map((entry) => ({
                user_id: user_id,
                entry_id: entry.id,
                round,
            }));

            const { error: upsertError } = await supabase
                .from('esc_user_scores')
	            .upsert(initScores, { onConflict: 'user_id, entry_id, round', ignoreDuplicates: true });

            if (upsertError) throw upsertError;
        },
        onSuccess: () => {
            qc.invalidateQueries({queryKey: escScoringStatusKey(user_id, year, round)});
            qc.invalidateQueries({queryKey: escUserScoresKey(user_id, year, round)});
        }
    });
}