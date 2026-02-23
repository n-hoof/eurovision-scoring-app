import { useQuery } from "@tanstack/react-query";
import { supabase } from "../supabaseClient";
import type { Country } from "../types/Country";
import { countriesKey } from "./queryKeys";

export function useCountries() {
    return useQuery({
        queryKey: countriesKey,
        queryFn: async (): Promise<Country[]> => {
            const { data, error } = await supabase
                .from('countries')
                .select('id, country, flag_url')
                .order('country');
            
            if (error) throw error;
            return data ?? [];
        },
        staleTime: Infinity,
    })
}