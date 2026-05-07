create or replace view public.pze_user_results
with (security_invoker = on)
as
with base as (
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
    group by pe."id", pus."round"
),
ranked as (
    select 
        b.*,
        rank() over (
            partition by b.year, b.round
            order by b.total_avg desc,
            song_avg desc,
            performance_avg desc,
            staging_avg desc,
            costume_avg desc
        ) as place
    from base b
)

select 
    r.*,
    prs."place" as real_place,
    (prs."place" - r.place) as diff
from ranked r
left join public."pze_real_scores" prs
    on prs."entry_id" = r.entry_id
    and prs."round" = r.round;