-- =============================================
-- Leadrix Assessment — Setup Supabase
-- Execute no SQL Editor do seu projeto Supabase
-- =============================================

-- 1. Criar tabela de respostas
create table if not exists assessments (
  id          bigserial primary key,
  submitted_at timestamptz default now(),
  name        text,
  company     text,
  role        text,
  fill_date   text,
  answers     jsonb
);

-- 2. Habilitar Row Level Security
alter table assessments enable row level security;

-- 3. Permitir inserção pública (qualquer pessoa pode enviar respostas)
create policy "Inserção pública"
  on assessments for insert
  to anon
  with check (true);

-- 4. Permitir leitura pública (protegida por senha no frontend)
create policy "Leitura pública"
  on assessments for select
  to anon
  using (true);

-- 5. Permitir deleção pública (usada pelo botão "Limpar respostas" no admin)
create policy "Deleção pública"
  on assessments for delete
  to anon
  using (true);
