import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import type { DisplayProfile } from "../types/DisplayProfile";
import { usersKey } from "./queryKeys";

export function useUsers() {
    return useQuery({
        queryKey: usersKey,
        queryFn: async (): Promise<DisplayProfile[]> => {
            const { data, error } = await supabase
                .from('profiles')
                .select(`
                    id,
                    username,
                    ...countries (flag_url)
                    `);
            if (error) throw new Error(error.message);

            return data;
        }
    })
}