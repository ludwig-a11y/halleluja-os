-- v184 Wochenziel-Pool — MZ-zentrische Wochenplanung
-- Doktrin: Wochenziele werden unter dem Monatsziel gesammelt (Pool) und
-- per Drag&Drop in konkrete KWs verteilt. Eine Quelle pro Zustand:
-- Pool → diese Tabelle, Verplant → wochenresets.big3_*.
-- Keine Doppel-Speicherung.

CREATE TABLE IF NOT EXISTS wochenziel_pool (
  id          text primary key,
  pid         text not null,
  teilziel_id text references teilziele(id) on delete cascade,
  titel       text not null,
  sort_index  integer,
  created_at  timestamptz default now(),
  created_by  text
);

CREATE INDEX IF NOT EXISTS idx_wzpool_pid_tz ON wochenziel_pool(pid, teilziel_id);
CREATE INDEX IF NOT EXISTS idx_wzpool_sort ON wochenziel_pool(teilziel_id, sort_index);
