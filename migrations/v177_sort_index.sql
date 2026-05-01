-- v177 Manuelle Reihenfolge — sort_index für Listen
-- Doktrin: Strategie = Reihenfolge, Tagesgeschäft = Priorität.
-- Pfeile ↑↓ überschreiben Default-Sort (Deadline). NULL = unsortiert (fällt auf Deadline-Fallback zurück).
-- Scope: Additiv. Bestehende Sort-Logik bleibt als Fallback.

ALTER TABLE teilziele ADD COLUMN IF NOT EXISTS sort_index INTEGER;
ALTER TABLE aufgaben  ADD COLUMN IF NOT EXISTS sort_index INTEGER;

CREATE INDEX IF NOT EXISTS idx_teilziele_sort_index ON teilziele(ziel_id, sort_index);
CREATE INDEX IF NOT EXISTS idx_aufgaben_sort_index  ON aufgaben(teilziel_id, sort_index);

-- Wochenziele (big3_1/2/3 in wochenresets) brauchen kein sort_index:
-- Reihenfolge wird durch In-Place-Swap der drei Slots realisiert (big3_N + big3_N_done + big3_N_tz_id).
