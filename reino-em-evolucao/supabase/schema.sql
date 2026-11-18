-- Uma jornada completa por usuário. O estado é versionado no próprio app.
create table if not exists public.journeys (
  user_id uuid primary key references auth.users (id) on delete cascade,
  state jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default timezone('utc', now())
);

alter table public.journeys enable row level security;

revoke all on table public.journeys from anon;
grant select, insert, update, delete on table public.journeys to authenticated;

drop policy if exists "Usuário lê a própria jornada" on public.journeys;
create policy "Usuário lê a própria jornada"
  on public.journeys for select
  to authenticated
  using ((select auth.uid()) = user_id);

drop policy if exists "Usuário cria a própria jornada" on public.journeys;
create policy "Usuário cria a própria jornada"
  on public.journeys for insert
  to authenticated
  with check ((select auth.uid()) = user_id);

drop policy if exists "Usuário atualiza a própria jornada" on public.journeys;
create policy "Usuário atualiza a própria jornada"
  on public.journeys for update
  to authenticated
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);

drop policy if exists "Usuário remove a própria jornada" on public.journeys;
create policy "Usuário remove a própria jornada"
  on public.journeys for delete
  to authenticated
  using ((select auth.uid()) = user_id);
