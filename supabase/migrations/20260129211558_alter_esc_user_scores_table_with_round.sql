alter table "public"."esc_user_scores"
    drop constraint "esc_user_scores_akey";

alter table "public"."esc_user_scores"
    add column "round" smallint,
    alter column "round" set not null;

alter table "public"."esc_user_scores"
    add constraint "esc_user_scores_round_chk" check ("round" in (1,2,3));

alter table "public"."esc_user_scores"
    add constraint "esc_user_scores_akey" unique ("user_id", "entry_id", "round");

alter table "public"."esc_user_scores"
    drop column "is_final";