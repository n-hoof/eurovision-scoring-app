import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { escScoringStatusKey } from "../queries/queryKeys";

export function useEscScoringStatus(
    user_id: string,
    year: number,
    round: number
) {
    return useQuery({
        queryKey: escScoringStatusKey(user_id, year, round),
        queryFn: async () => {
            const { count, error } = await supabase
                .from('esc_user_scores')
                .select('id, esc_entries!inner(id)', { count: 'exact', head: true })
                .eq('esc_entries.year', year)
                .eq('user_id', user_id)
                .eq('round', round);

            if (error) throw error;
            return (count ?? 0) > 0;
        },
    });
}