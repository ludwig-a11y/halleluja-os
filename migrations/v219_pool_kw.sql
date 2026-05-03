-- v219: kw + jahr an wochenziel_pool — Pool-Items können einer KW zugewiesen werden.
-- NULL = ungeplant (klassisches Pool-Verhalten). Gesetzt = Wochenziel für diese KW.

ALTER TABLE wochenziel_pool ADD COLUMN IF NOT EXISTS kw INTEGER;
ALTER TABLE wochenziel_pool ADD COLUMN IF NOT EXISTS jahr INTEGER;
