import { createContext } from "react";
import type { Profile } from "../types/Profile";
import type { ProfileUpdate } from "../types/ProfileUpdate";

interface ProfileContextType {
    profile: Profile | null;
    loading: boolean;
    refreshProfile: () => Promise<void>;
    updateProfile: (updates: ProfileUpdate) => Promise<void>;
}

export const ProfileContext = createContext<ProfileContextType | undefined>(undefined);
