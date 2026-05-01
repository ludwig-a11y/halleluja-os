-- v178 Status-Modell: Pause auf Aufgaben-Ebene + "wartet auf Person"
-- Doktrin: Aktiv ist nicht binär — es gibt "wartet" (Bottleneck liegt woanders)
-- und "pausiert" (geparkt mit Ablaufdatum, kommt automatisch zurück).
-- Scope: Additiv. Bestehende Logik (taskIsPaused = teilziel-derived) bleibt
-- als Default-Vererbung erhalten und wird um Direkt-Pause erweitert.

ALTER TABLE aufgaben ADD COLUMN IF NOT EXISTS pausiert_bis    DATE;
ALTER TABLE aufgaben ADD COLUMN IF NOT EXISTS wartet_auf_pid  TEXT;
ALTER TABLE aufgaben ADD COLUMN IF NOT EXISTS wartet_grund    TEXT;

-- Index für AutoResume-Sweep (täglicher Check: ist pausiert_bis < heute?)
CREATE INDEX IF NOT EXISTS idx_aufgaben_pausiert_bis ON aufgaben(pausiert_bis) WHERE pausiert_bis IS NOT NULL;
CREATE INDEX IF NOT EXISTS idx_aufgaben_wartet_auf  ON aufgaben(wartet_auf_pid) WHERE wartet_auf_pid IS NOT NULL;
