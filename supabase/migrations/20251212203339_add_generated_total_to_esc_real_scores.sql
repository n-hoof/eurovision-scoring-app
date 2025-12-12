alter table "public"."esc_real_scores" add column "total" smallint generated always as ((COALESCE((jury)::integer, 0) + COALESCE((televote)::integer, 0))) stored;


