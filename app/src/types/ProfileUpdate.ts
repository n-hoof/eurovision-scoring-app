import type { Profile } from "../types/Profile";

export type ProfileUpdate = Partial<Omit<Profile, 'id'>>;