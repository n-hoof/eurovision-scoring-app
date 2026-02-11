export const escScoringStatusKey = (
    user_id: string,
    year: number,
    round: number
) => ['scoring-status', user_id, year, round];

export const escUserScoresKey = (
    user_id: string,
    year: number,
    round: number
) => ['user-scores', user_id, year, round];