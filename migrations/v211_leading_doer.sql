-- v211: leading_doer_id an Teilzielen — Outcome-Owner ≠ Doer (Sam-Ovens-Split).
-- verantwortlich_id = Outcome-Owner (wer für das Ergebnis grade steht).
-- leading_doer_id   = wer die tägliche Leading-Aktion macht (sieht +1-Karte).
-- Default null → Fallback auf verantwortlich_id (rückwärtskompatibel).

ALTER TABLE teilziele ADD COLUMN IF NOT EXISTS leading_doer_id TEXT REFERENCES personen(id);
