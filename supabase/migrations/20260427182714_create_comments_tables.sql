-- Create PZE comments table and set up rls

create table pze_comments (
    id bigint generated always as identity primary key,
    commenter_id uuid references public.profiles on delete cascade not null,
    score_id bigint references public.pze_user_scores on delete cascade not null,
    content varchar(100),
    created_at timestamptz not null default now()
);

alter table pze_comments
    enable row level security;
create policy "Comments are viewable by everyone." on pze_comments
    for select using (true);
create policy "Users can comment only from their own profile." on pze_comments
    for insert with check ((select auth.uid()) = commenter_id);
create policy "Users can delete their comments and comments on their scores." on pze_comments
    for delete using (
        (select auth.uid()) = commenter_id
        OR
        (select auth.uid()) = (
            select user_id
            from public.pze_user_scores
            where id = pze_comments.score_id
        )
    );


-- Create ESC comments table and set up rls

create table esc_comments (
    id bigint generated always as identity primary key,
    commenter_id uuid references public.profiles on delete cascade not null,
    score_id bigint references public.esc_user_scores on delete cascade not null,
    content varchar(100),
    created_at timestamptz not null default now()
);

alter table esc_comments
    enable row level security;
create policy "Comments are viewable by everyone." on esc_comments
    for select using (true);
create policy "Users can comment only from their own profile." on esc_comments
    for insert with check ((select auth.uid()) = commenter_id);
create policy "Users can delete their comments and comments on their scores." on esc_comments
    for delete using (
        (select auth.uid()) = commenter_id
        OR
        (select auth.uid()) = (
            select user_id
            from public.esc_user_scores
            where id = esc_comments.score_id
        )
    );