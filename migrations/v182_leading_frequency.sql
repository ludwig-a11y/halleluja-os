-- v182 Leading-Indicator-Frequenz (Ovens-Way)
-- Doktrin: Leading-Indicator ist eine Aktion mit Frequenz, kein abstrakter KPI.
-- Daily ist Default. Weekly/Monthly nur wenn Aktion ehrlich nicht häufiger passiert.
-- KPI-Konzept verschwindet als eigene Eingabe — KPIs werden zu abgeleiteten Sichten.

ALTER TABLE teilziele ADD COLUMN IF NOT EXISTS leading_freq TEXT DEFAULT 'daily'
  CHECK (leading_freq IN ('daily','weekly','monthly'));
ALTER TABLE teilziele ADD COLUMN IF NOT EXISTS leading_count INTEGER;

-- Migration der bestehenden Leadings: alle, die metrik gesetzt haben, kriegen 'daily' als Default.
-- (Optional — der CHECK-Default oben übernimmt das ohnehin für neue Zeilen.)
UPDATE teilziele SET leading_freq = 'daily' WHERE leading_freq IS NULL;
