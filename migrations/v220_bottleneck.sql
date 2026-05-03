-- v220: Bottleneck-Tag auf Ziele. Top-Goal-Level only.
-- Boolean. Default false. User togglet manuell in Ziel-Edit.
-- Goldratt Theory of Constraints: Bottleneck sichtbar machen.

ALTER TABLE ziele ADD COLUMN IF NOT EXISTS is_bottleneck BOOLEAN DEFAULT FALSE;
