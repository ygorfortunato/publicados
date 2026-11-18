-- Uma jornada completa por usuário. O estado é versionado no próprio app.
create table if not exists public.journeys (
  user_id uuid primary key references auth.users (id) on delete cascade,
  state jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default timezone('utc', now())
);

alter table public.journeys enable row level security;

drop policy if exists "Usuário lê a própria jornada" on public.journeys;
create policy "Usuário lê a própria jornada"
  on public.journeys for select
  using ((select auth.uid()) = user_id);

drop policy if exists "Usuário cria a própria jornada" on public.journeys;
create policy "Usuário cria a própria jornada"
  on public.journeys for insert
  with check ((select auth.uid()) = user_id);

drop policy if exists "Usuário atualiza a própria jornada" on public.journeys;
create policy "Usuário atualiza a própria jornada"
  on public.journeys for update
  using ((select auth.uid()) = user_id)
  with check ((select auth.uid()) = user_id);

drop policy if exists "Usuário remove a própria jornada" on public.journeys;
create policy "Usuário remove a própria jornada"
  on public.journeys for delete
  using ((select auth.uid()) = user_id);
