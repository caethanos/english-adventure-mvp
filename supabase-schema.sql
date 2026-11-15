create extension if not exists pgcrypto;
create table if not exists public.leads(id uuid primary key default gen_random_uuid(),nome text not null,whatsapp text not null,nivel text,objetivo text,treinamento text,segmento text not null default 'lista_espera',origem text not null default 'landing_page',created_at timestamptz not null default now());
alter table public.leads enable row level security;
-- Sem policy pública: inserts são feitos pela Netlify Function usando service_role.
