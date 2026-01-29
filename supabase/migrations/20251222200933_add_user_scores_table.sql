-- Create a table for user scores
create table esc_user_scores (
  id bigint generated always as identity primary key,
  user_id uuid references public.profiles on delete cascade not null,
  entry_id bigint references public.esc_entries on delete cascade not null,
  is_final boolean not null,
  song_score numeric(3,2) not null check (song_score >= 0.00 and song_score <= 4.00),
  costume_score numeric(3,2) not null check (costume_score >= 0.00 and costume_score <= 2.00),
  staging_score numeric(3,2) not null check (staging_score >= 0.00 and staging_score <= 2.00),
  performance_score numeric(3,2) not null check (performance_score >= 0.00 and performance_score <= 2.00),
  total numeric(3,2) generated always as (song_score + costume_score + staging_score + performance_score) stored,
  constraint esc_user_scores_akey unique (user_id, entry_id, is_final)
);

-- Set up Row Level Security (RLS)
-- See https://supabase.com/docs/guides/database/postgres/row-level-security for more details.
alter table esc_user_scores
  enable row level security;
create policy "Public scores are viewable by everyone." on esc_user_scores
  for select using (true);
create policy "Users can insert scores for their own profile." on esc_user_scores
  for insert with check ((select auth.uid()) = user_id);
create policy "Users can update scores for their own profile." on esc_user_scores
  for update using ((select auth.uid()) = user_id);
create policy "Users can delete scores for their own profile." on esc_user_scores
  for delete using ((select auth.uid()) = user_id);