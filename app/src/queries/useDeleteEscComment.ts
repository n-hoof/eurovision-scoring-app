import { useMutation, useQueryClient } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import { escUserScoresKey } from "./queryKeys";

export function useDeleteEscComment(
  user_id: string,
  year: number,
  round: number,
) {
  const qc = useQueryClient();

  return useMutation({
    mutationFn: async (comment_id: number) => {
      const { error } = await supabase
        .from('esc_comments')
        .delete()
        .eq('id', comment_id);

      if (error) throw error;
    },
    onSuccess: () => {
      qc.invalidateQueries({
        queryKey: escUserScoresKey(user_id, year, round),
      });
    },
  });
}
