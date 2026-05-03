-- v216: Cleanup von Phantom-MZ aus der alten saveWochenreset-Logik.
-- Heuristik: Teilziele die in mindestens einem wochenreset als big3_X_tz_id stehen,
-- KEINE Aufgaben mit teilziel_id auf sich haben, KEINE leading-Konfiguration tragen,
-- und deren Name exakt mit einem wochenreset.big3_X-Text übereinstimmt.
-- → Manuell prüfen vor DELETE!

-- Schritt 1: Identifiziere Kandidaten (read-only Query)
SELECT t.id, t.name, t.ziel_id, t.created_at
FROM teilziele t
WHERE EXISTS (
  SELECT 1 FROM wochenresets w
  WHERE (w.big3_1_tz_id=t.id AND w.big3_1=t.name)
     OR (w.big3_2_tz_id=t.id AND w.big3_2=t.name)
     OR (w.big3_3_tz_id=t.id AND w.big3_3=t.name)
)
AND NOT EXISTS (SELECT 1 FROM aufgaben a WHERE a.teilziel_id=t.id)
AND (t.metrik IS NULL OR t.metrik='')
AND t.leading_doer_id IS NULL
AND COALESCE(t.leading_disabled, FALSE)=FALSE;

-- Schritt 2 (manuell, NUR ausführen wenn Schritt-1-Liste OK aussieht):
-- Erst die Referenzen in wochenresets nullen, dann delete.
-- UPDATE wochenresets SET
--   big3_1_tz_id = CASE WHEN big3_1_tz_id IN (...) THEN NULL ELSE big3_1_tz_id END,
--   big3_2_tz_id = CASE WHEN big3_2_tz_id IN (...) THEN NULL ELSE big3_2_tz_id END,
--   big3_3_tz_id = CASE WHEN big3_3_tz_id IN (...) THEN NULL ELSE big3_3_tz_id END;
-- DELETE FROM teilziele WHERE id IN (...);
