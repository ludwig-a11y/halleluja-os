-- v179 Wartet-auf-Aufgabe — Verknüpfung mit konkretem Aufgaben-Trigger
-- Doktrin: "Wartet auf @Person" alleine ist Wunschdenken — Simon weiß nichts davon.
-- Mit wartet_auf_aufgabe_id wird eine konkrete Aufgabe bei der anderen Person referenziert.
-- Wenn diese Aufgabe erledigt wird → wartender Task kehrt automatisch zurück.
-- Optional: wenn null gesetzt, ist der Marker rein informativ (Simon sieht ihn trotzdem im "Andere warten auf dich"-Block).

ALTER TABLE aufgaben ADD COLUMN IF NOT EXISTS wartet_auf_aufgabe_id TEXT REFERENCES aufgaben(id) ON DELETE SET NULL;

CREATE INDEX IF NOT EXISTS idx_aufgaben_wartet_auf_aufgabe ON aufgaben(wartet_auf_aufgabe_id) WHERE wartet_auf_aufgabe_id IS NOT NULL;
