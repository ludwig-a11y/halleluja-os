-- v191 Leading-Indicator auf Ziel-Ebene (Sam-Ovens-Hybrid mit Inheritance)
-- Doktrin: ONE Leading per Strategie (Ziel). MZ erbt by default.
-- MZ-Override nur explizit für Build-/Test-Phasen.
-- effectiveLeading(tz): wenn tz.metrik gesetzt → MZ-Override; sonst → vom Ziel erben.

ALTER TABLE ziele ADD COLUMN IF NOT EXISTS metrik TEXT;
ALTER TABLE ziele ADD COLUMN IF NOT EXISTS leading_freq TEXT DEFAULT 'daily'
  CHECK (leading_freq IN ('daily','weekly','monthly'));
ALTER TABLE ziele ADD COLUMN IF NOT EXISTS leading_count INTEGER;
ALTER TABLE ziele ADD COLUMN IF NOT EXISTS zielwert INTEGER;

-- Default leading_freq für bestehende Ziele auf 'daily' setzen (analog v182)
UPDATE ziele SET leading_freq = 'daily' WHERE leading_freq IS NULL;
