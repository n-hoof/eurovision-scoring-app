create or replace view public.esc_user_results
with (security_invoker = on)
as
with base as (
    select
        ee."id" as entry_id,
        ee."year",
        ee."artist",
        ee."song_title",
        ee."country_id",
        eus."round",
        round(avg(eus."song_score"), 2) as song_avg,
        round(avg(eus."costume_score"), 2) as costume_avg,
        round(avg(eus."performance_score"), 2) as performance_avg,
        round(avg(eus."staging_score"), 2) as staging_avg,
        round(avg(eus."total"), 2) as total_avg
    from "public"."esc_entries" ee join "public"."esc_user_scores" eus on ee."id"=eus."entry_id"
    where eus."is_scored"=true
    group by ee."id", eus."round"
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
    ers."place" as real_place,
    (ers."place" - r.place) as diff
from ranked r
left join public."esc_real_scores" ers
    on ers."entry_id" = r.entry_id
    and ers."round" = r.round;