alter table "public"."pze_entries"
    alter column "year" type smallint;

-- Create a table for PZE real scores
create table pze_real_scores (
  id bigint generated always as identity primary key,
  entry_id bigint references public.pze_entries on delete cascade not null,
  round smallint not null,
  place smallint null,
  running_order smallint null,
  jury smallint null,
  televote smallint null,
  total smallint generated always as ((COALESCE((jury)::integer, 0) + COALESCE((televote)::integer, 0))) stored,  
  constraint pze_real_scores_akey unique (entry_id, round),
  constraint pze_real_scores_round_chk check (round in (1,2,3))
);

alter table pze_real_scores
  enable row level security;
  
create policy "Enable read access for all users" on pze_real_scores
  for select using (true);

-- Create a table for PZE user scores
create table pze_user_scores (
  id bigint generated always as identity primary key,
  user_id uuid references public.profiles on delete cascade not null,
  entry_id bigint references public.pze_entries on delete cascade not null,
  round smallint not null,
  is_scored boolean not null default false,
  song_score numeric(3,2) not null default 0 check (song_score >= 0.00 and song_score <= 4.00),
  costume_score numeric(3,2) not null default 0 check (costume_score >= 0.00 and costume_score <= 2.00),
  staging_score numeric(3,2) not null default 0 check (staging_score >= 0.00 and staging_score <= 2.00),
  performance_score numeric(3,2) not null default 0 check (performance_score >= 0.00 and performance_score <= 2.00),
  total numeric(4,2) generated always as (song_score + costume_score + staging_score + performance_score) stored,
  constraint pze_user_scores_akey unique (user_id, entry_id, round),
  constraint pze_real_scores_round_chk check (round in (1,2,3))
);

alter table pze_user_scores
  enable row level security;

create policy "Public scores are viewable by everyone." on pze_user_scores
  for select using (true);
create policy "Users can insert scores for their own profile." on pze_user_scores
  for insert with check ((select auth.uid()) = user_id);
create policy "Users can update scores for their own profile." on pze_user_scores
  for update using ((select auth.uid()) = user_id);
create policy "Users can delete scores for their own profile." on pze_user_scores
  for delete using ((select auth.uid()) = user_id);