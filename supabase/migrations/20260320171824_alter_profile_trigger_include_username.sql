-- Drop old profile trigger
drop trigger if exists on_auth_user_created on auth.users;

-- Drop old profile function
drop function if exists public.handle_new_user();

-- Create new updated profile function and re-create trigger
create function public.handle_new_user()
returns trigger
set search_path = ''
as $$
begin
  insert into public.profiles (id, username)
  values (new.id, coalesce(new.raw_user_meta_data->>'username', 'user' || new.id));
  return new;
end;
$$ language plpgsql security definer;

create trigger on_auth_user_created
  after insert on auth.users
  for each row execute procedure public.handle_new_user();