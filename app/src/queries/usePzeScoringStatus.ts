import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { pzeScoringStatusKey } from "./queryKeys";

export function usePzeScoringStatus(
    user_id: string,
    year: number,
    round: number
) {
    return useQuery({
        queryKey: pzeScoringStatusKey(user_id, year, round),
        queryFn: async () => {
            const { count, error } = await supabase
                .from('pze_user_scores')
                .select('id, pze_entries!inner(id)', { count: 'exact', head: true })
                .eq('pze_entries.year', year)
                .eq('user_id', user_id)
                .eq('round', round);

            if (error) throw error;
            return (count ?? 0) > 0;
        },
    });
}