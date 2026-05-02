-- v210: leading_hits an Aufgabe — wie viele Leading-Inputs eine Aufgaben-Completion erzeugt.
-- Default 1 (alte Aufgaben verhalten sich identisch). User kann höher setzen, wenn ein Block
-- mehrere Termine/Hits enthält (z.B. 1×Block Akquise = 8 Termine).

ALTER TABLE aufgaben ADD COLUMN IF NOT EXISTS leading_hits INTEGER DEFAULT 1;
