import { useState, useEffect, useCallback } from "react";
import { useAuth } from "../hooks/useAuth";
import * as profileService from "../queries/profileService";
import type { Profile } from "../types/Profile";
import type { ProfileUpdate } from "../types/ProfileUpdate";
import { ProfileContext } from "./ProfileContext";

type Props = {
    children: React.ReactNode;
}
export const ProfileProvider = ({ children }: Props) => {
    const { user } = useAuth();
    const [profile, setProfile] = useState<Profile | null>(null);
    const [loading, setLoading] = useState(true);

    const getProfile = useCallback(async () => {
        if (!user) {
            setProfile(null);
            setLoading(false);
            return;
        }
        setLoading(true);
        const data = await profileService.getProfile(user.id);
        setProfile(data);
        setLoading(false);
    }, [user]);

    useEffect(() => {
        getProfile();
    }, [getProfile]);

    const updateProfile = async (updates: ProfileUpdate) => {
        if (!user) return;
        const updated = await profileService.updateProfile(user.id, updates);
        setProfile(updated);
    };

    return (
    <ProfileContext.Provider value={{ profile, loading, refreshProfile: getProfile, updateProfile }}>
        {children}
    </ProfileContext.Provider>
    );
}