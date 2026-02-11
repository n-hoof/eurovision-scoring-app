alter table "public"."esc_user_scores"
    add column "is_scored" boolean,
    alter column "is_scored" set not null,
    alter column "is_scored" set default false,
    alter column "song_score" set default 0,
    alter column "costume_score" set default 0,
    alter column "staging_score" set default 0,
    alter column "performance_score" set default 0;