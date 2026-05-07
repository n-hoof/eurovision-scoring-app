import { useMutation, useQueryClient } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { pzeUserScoresKey } from "./queryKeys";

export function useDeletePzeComment(
  user_id: string,
  year: number,
  round: number,
) {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async (comment_id: number) => {
      const { error } = await supabase
        .from('pze_comments')
        .delete()
        .eq('id', comment_id);

      if (error) throw error;
    },
    onSuccess: () => {
      qc.invalidateQueries({
        queryKey: pzeUserScoresKey(user_id, year, round),
      });
    },
  });
}
