-- v214: leading_disabled — Sentinel für Manager-MZ ohne Counter.
-- Wenn TRUE: MZ trägt nicht zum Leading-Counter bei, kein +1, keine Health-Card.
-- Sam-Way: nicht jedes MZ unter einem Leading-Ziel ist Quoten-Arbeit. Manche sind
-- Begleit-Arbeit (Manager-MZ wie "Email-Kampagne verschickt") und sollen das System
-- nicht mit falschen Inputs beladen.

ALTER TABLE teilziele ADD COLUMN IF NOT EXISTS leading_disabled BOOLEAN DEFAULT FALSE;
