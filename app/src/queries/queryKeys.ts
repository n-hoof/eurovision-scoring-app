export const escScoringStatusKey = (
    user_id: string,
    year: number,
    round: number
) => ['esc-scoring-status', user_id, year, round];

export const escUserScoresKey = (
    user_id: string,
    year: number,
    round: number
) => ['esc-user-scores', user_id, year, round];

export const pzeScoringStatusKey = (
    user_id: string,
    year: number,
    round: number
) => ['pze-scoring-status', user_id, year, round];

export const pzeUserScoresKey = (
    user_id: string,
    year: number,
    round: number
) => ['pze-user-scores', user_id, year, round];

export const countriesKey = ['countries'] as const;

export const usersKey = ['profiles'];