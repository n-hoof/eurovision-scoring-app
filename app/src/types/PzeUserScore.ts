export interface PzeUserScore {
    entry_id: number;
    artist: string;
    song_title: string;
    round: number; // (1: semi-1, 2: semi-2, 3: final)
    song_score: number;
    costume_score: number;
    staging_score: number;
    performance_score: number;
    total: number;
    is_scored: boolean;
}