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

export const pzeUserResultsKey = (
    year: number,
    round: number
) => ['pze-user-results', year, round];

export const escUserResultsKey = (
    year: number,
    round: number
) => ['esc-user-results', year, round];

export const escBestSongKey = (
    year: number,
    round: number
) => ['esc-best-song', year, round];

export const pzeBestSongKey = (
    year: number,
    round: number
) => ['pze-best-song', year, round];

export const escBestStgKey = (
    year: number,
    round: number
) => ['esc-best-stg', year, round];

export const pzeBestStgKey = (
    year: number,
    round: number
) => ['pze-best-stg', year, round];

export const escBestPerfKey = (
    year: number,
    round: number
) => ['esc-best-perf', year, round];

export const pzeBestPerfKey = (
    year: number,
    round: number
) => ['pze-best-perf', year, round];

export const escBestCostKey = (
    year: number,
    round: number
) => ['esc-best-cost', year, round];

export const pzeBestCostKey = (
    year: number,
    round: number
) => ['pze-best-cost', year, round];