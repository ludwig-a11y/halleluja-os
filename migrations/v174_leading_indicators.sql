-- v174 Leading-Indicator-System für Monatsziele
-- Doktrin: Mental Model §14 (2026-04-24)
-- Scope: Additiv, kein Datenverlust, kein Downstream-Impact.

ALTER TABLE teilziele
  ADD COLUMN IF NOT EXISTS metrik text,       -- Verb-Form, z.B. "Call gemacht"
  ADD COLUMN IF NOT EXISTS zielwert int;       -- optional, Anker (keine Gauge)

CREATE TABLE IF NOT EXISTS monatsziel_inputs (
  id text primary key,
  teilziel_id text references teilziele(id) on delete cascade,
  datum date not null,
  quelle text,
  created_at timestamptz default now(),
  created_by text
);

CREATE INDEX IF NOT EXISTS idx_mz_inputs_tz    ON monatsziel_inputs(teilziel_id);
CREATE INDEX IF NOT EXISTS idx_mz_inputs_datum ON monatsziel_inputs(datum);

-- RLS (falls in diesem Projekt genutzt — analog zu anderen Tabellen):
-- ALTER TABLE monatsziel_inputs ENABLE ROW LEVEL SECURITY;
-- (Policies nach dem Muster der anderen Tabellen ergänzen)
