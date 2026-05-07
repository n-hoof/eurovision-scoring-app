create or replace view public.pze_user_results
with (security_invoker = on)
as
select
    pe."id" as entry_id,
    pe."year",
    pe."artist",
    pe."song_title",
    pus."round",
    round(avg(pus."song_score"), 2) as song_avg,
    round(avg(pus."costume_score"), 2) as costume_avg,
    round(avg(pus."performance_score"), 2) as performance_avg,
    round(avg(pus."staging_score"), 2) as staging_avg,
    round(avg(pus."total"), 2) as total_avg
from "public"."pze_entries" pe join "public"."pze_user_scores" pus on pe."id"=pus."entry_id"
where pus."is_scored"=true
group by pe."id", pus."round";