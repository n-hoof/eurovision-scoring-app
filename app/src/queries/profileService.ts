import { supabase } from "../supabaseClient";
import type { Profile } from "../types/Profile";
import type { ProfileUpdate } from "../types/ProfileUpdate";


export const getProfile = async(user_id: string): Promise<Profile | null> => {
    const { data, error } = await supabase
        .from('profiles')
        .select('id, username, country_id')
        .eq('id', user_id)
        .single();

    if (error) {
        console.error(error);
        return null;
    }

    return data as Profile;
};

export const updateProfile = async (user_id: string, updates: ProfileUpdate): Promise<Profile | null> => {
    const { data, error } = await supabase
        .from('profiles')
        .update(updates)
        .eq('id', user_id)
        .select()
        .single();

    if (error) {
        console.error(error);
        return null;
    }

    return data as Profile;
}