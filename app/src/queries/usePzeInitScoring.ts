import { useMutation, useQueryClient } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { pzeScoringStatusKey, pzeUserScoresKey } from "./queryKeys";

export function usePzeInitScoring(
    user_id: string,
    year: number,
    round: number,
) {
    const qc = useQueryClient();

    return useMutation({
        mutationFn: async () => {
            const { data, error: entriesError } = await supabase
                .from('pze_entries')
                .select(
                    `
                    id,
                    ...pze_real_scores!inner()
                    `,
                )
                .eq('year', year)
                .eq('pze_real_scores.round', round);

            if (entriesError) throw entriesError;

            const initScores = data.map((entry) => ({
                user_id: user_id,
                entry_id: entry.id,
                round,
            }));

            const { error: upsertError } = await supabase
                .from('pze_user_scores')
	            .upsert(initScores, { onConflict: 'user_id, entry_id, round', ignoreDuplicates: true });

            if (upsertError) throw upsertError;
        },
        onSuccess: () => {
            qc.invalidateQueries({queryKey: pzeScoringStatusKey(user_id, year, round)});
            qc.invalidateQueries({queryKey: pzeUserScoresKey(user_id, year, round)});
        }
    });
}