-- v176 WIN-Modus — Was Ist jetzt wichtig
-- Doktrin: Mental Model §13 (Dopamin am Input), §14 (Leading-vor-Lagging), Sam Ovens (Single Goal)
-- Scope: Additiv. Kein Eingriff in bestehende Tabellen.

CREATE TABLE IF NOT EXISTS win_tage (
  id          text primary key,
  pid         text not null,
  datum       date not null,
  task_id     text references aufgaben(id) on delete set null,
  label       text,                                -- Frei-WIN ohne Task, oder Kopie des Task-Namens
  n_ziel      int default 1,
  einheit     text default 'block' check (einheit in ('block','kpi')),
  kpi_id      text,                                -- optional: an existierenden KPI gekoppelt
  kryptonit   jsonb default '[]'::jsonb,           -- [{feind, gegen}]
  blocks      jsonb default '[]'::jsonb,           -- [{ts, ok, label, hits:[{tid,name}]}]
  start_h     int default 8,                       -- Tagesfenster-Beginn (Stunden)
  end_h       int default 17,                      -- Tagesfenster-Ende
  erreicht_at timestamptz,
  created_at  timestamptz default now(),
  created_by  text,
  unique(pid, datum)
);

CREATE INDEX IF NOT EXISTS idx_win_tage_pid_datum ON win_tage(pid, datum);

-- RLS-Hinweis: analog zu monatsziel_inputs (siehe v174). Policies projektweit konsistent ergänzen.
