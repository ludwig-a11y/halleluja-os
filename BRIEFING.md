# Halleluja OS — Briefing für neue Chat-Sessions

## Was ist das?

Halleluja OS ist ein **Team-Betriebssystem** — eine Single-Page-App (eine einzige `index.html`), die das operative Management eines kleinen Unternehmens abbildet. Kein klassisches Projektmanagement-Tool, sondern ein **Wirksamkeits-System** nach den Prinzipien von Peter Drucker:

> "Wirksamkeit bedeutet nicht, viel zu tun. Sie bedeutet, das Richtige zu tun — konsequent, jeden Tag."

**Kernidee:** Jeder Mensch im Team soll jeden Tag wissen, was das Wichtigste ist — und genau das tun. Nicht 20 Tasks abarbeiten, sondern die 1-3 Sachen erledigen, die wirklich zählen.

---

## Die Management-Philosophie

### Prioritäten-System (P1 / P2 / P3)
- **P1 — "Konsequenzen heute"**: Wenn das nicht erledigt wird, passiert etwas Schlimmes. Rot, urgent, committed Fokuszeit. Das muss heute fertig werden.
- **P2 — "Wichtig, kein Feuer"**: Wichtige Arbeit, aber kein akuter Brand. Orange, sekundär.
- **P3 — "Wenn Zeit ist"**: Nice-to-have. Grau, nur wenn P1 und P2 erledigt sind.

### Big 3 (Wochenziele)
Jede Person wählt **maximal 3 Ziele für die Woche** (KW). Nicht 10, nicht 5 — drei. Das zwingt zur Priorisierung. Am Ende der Woche wird ehrlich reflektiert: geschafft oder nicht?

### Wochenreset (Freitag-Reflexion)
Jeden Freitag ab 16:00 öffnet sich der Wochenreset:
- Big 3 der Woche: erledigt ✅ oder nicht ❌?
- Blocker melden: Was hat mich aufgehalten?
- Beobachtungen: Was ist mir aufgefallen?
- Wenn-Dann-Regel: "Wenn X passiert, dann mache ich Y" (Verhaltensdesign)
- Neue Big 3 für nächste Woche setzen

### Ziele & Meilensteine
- **Ziele** = strategische Jahresziele (mit Farbcodierung, KPIs, Verantwortlichem)
- **Meilensteine** = messbare Zwischenschritte unter einem Ziel
- Meilensteine können zwischen Zielen verschoben werden
- Vertrauliche Ziele/Meilensteine: nur GF + Verantwortlicher sehen sie

### Signale (Wolken & Ideen)
Statt starrer Backlogs arbeiten wir mit **Signalen aus dem Alltag**:
- **Wolken** ☁️ = Reibungspunkte, Beschwerden, wiederkehrende Probleme
- **Ideen** 💡 = Verbesserungsvorschläge, Chancen
- Signale können **geparkt** werden (bewusst aufgeschoben, nicht vergessen)
- Signale können einem Bereich/Person zugeordnet werden
- Aus Signalen entstehen Aufgaben — wenn die Zeit reif ist

### Kapazität & Fokuszeit
- Jede Person hat ein Zeitbudget (Fokuszeit für P1, Restzeit für P2/P3)
- Visuelle Kapazitäts-Anzeige: Grün (gesund), Orange (vorsicht), Rot (überbucht)
- Verhindert Überlastung und macht Engpässe sichtbar

### Paddel-Score — Leading Indicator (WICHTIG)

Der Paddel-Score misst **Ausführungs-Qualität**, nicht Aktivität. Er ist der **Leading Indicator** für gute Arbeit.

**Kernregel:** Eine erledigte Aufgabe zählt **nur dann** für den Paddel-Score, wenn sie einem **Meilenstein zugeordnet** ist (= über Meilenstein an ein Ziel gebunden).

| Aufgabe | Paddel-Punkte |
|---|---|
| P1 mit Meilenstein | **3 🏅** |
| P2 mit Meilenstein | **1 🏅** |
| P1/P2/P3 **ohne** Meilenstein | **0 Punkte** |
| P3 generell | 0 Punkte |

**Warum so streng?**
- **Meilensteine dürfen steil sein** — Erreichen ja/nein ist Lagging Indicator.
- **Taktik-Qualität** (Aufgaben-Ausführung mit Ziel-Bezug) ist Leading — genau das misst Paddel.
- Wer viele Aufgaben _ohne_ Meilenstein-Zuordnung erledigt, macht **Busywork**: erzeugt hohe Aktivität, aber keinen Zielfortschritt. Der Paddel-Score bleibt niedrig — die App macht das sichtbar.
- Ovens-Prinzip: **no fake rewards**. Ohne Meilenstein-Zuordnung → kein Konfetti, nur nüchterne Bestätigung.

**UX:**
- Beim Anlegen einer Aufgabe: Hint-Box zeigt live "⚠️ Kein Meilenstein" (grau) oder "✅ Meilenstein zugeordnet" (grün)
- Beim Erledigen ohne Meilenstein: Toast "✓ Erledigt · ohne Meilenstein-Zuordnung kein Paddel-Punkt", keine Feier
- Beim Erledigen mit Meilenstein: volle Celebration + Paddel-Schlag-Animation

**Für das Team kommunizieren:**
> "Qualität von Input = Qualität von Output. Eine Aufgabe ohne Meilenstein ist operative Notwendigkeit, aber kein Schritt Richtung Ziel. Der Paddel-Score zeigt dir und dem Team, wie gut deine Taktik tatsächlich auf die Ziele einzahlt — nicht wie fleißig du wirkst."

---

## Die vier Ansichten

### 1. Mein Tag (Hauptansicht)
- **Tagesplan**: Visuelle Zeitleiste 9-17 Uhr mit gebuchten Stunden
- **Aktive Aufgabe**: Große Karte mit Timer, Schritte (Unteraufgaben), Erledigt-Button
- **P1/P2/P3-Listen**: Aufgaben sortiert nach Priorität
- **Streak**: Tage-am-Stück mit erledigten Aufgaben (Gamification)
- Beim **Starten** einer Aufgabe: dezenter Motivations-Banner "💪 Los geht's!"
- Beim **Erledigen**: Konfetti-Celebration "🎉 Geschafft!"

### 2. Woche
- Big 3 der aktuellen KW
- Wochenreset-Flow (Freitags)
- Rückblick auf vergangene Wochen

### 3. Ziele
- Alle strategischen Ziele mit Fortschritt
- Meilensteine pro Ziel (abhakbar)
- KPIs mit Soll/Ist-Tracking
- Hebel-Analyse: Welche Aufgabe hat den größten Multiplikator-Effekt?

### 4. Team
- Übersicht: Wer arbeitet woran?
- Aufgaben delegieren und weiterleiten
- Wolken/Ideen pro Bereich sehen
- Team-Ziele und deren Fortschritt

---

## Benachrichtigungen & Motivation

### Slack-Integration (via n8n Webhook)
- **Aufgabe gestartet** → Team sieht: "▶ Ludwig hat losgelegt (P1)"
- **Aufgabe erledigt** → Team sieht: "✅ Ludwig hat eine Aufgabe erledigt"
- **Meilenstein erreicht** → Team sieht: "🎯 Ludwig hat einen Meilenstein erreicht!"
- **Aufgabe zugewiesen** → DM an die Person: "📋 Ludwig hat dir eine Aufgabe zugewiesen"
- **Self-Motivation**: Eigene DM beim Starten ("💪 Los geht's!") und Erledigen ("🎉 Geschafft!")
- **Blocker** → Team-Channel: "⚠️ Ludwig meldet einen Blocker"
- **Diskussions-Themen** → Team-Channel mit Thread-Aufforderung

### In-App Celebrations
- **Aufgabe starten**: Dezenter Banner von oben "💪 Los geht's! Du packst das."
- **Aufgabe erledigen**: Konfetti-Regen + "🎉 Geschafft! Weiter so 💪"
- **Meilenstein erreicht**: Konfetti + "🎯 Meilenstein erreicht!"
- **Big 3 erledigt**: Große Celebration

---

## Technische Architektur

### Stack
- **Frontend**: Single HTML file (`index.html`, ~4500 Zeilen), Vanilla JS, CSS Variables für Dark/Light Mode
- **Backend**: Supabase (PostgreSQL REST API) — kein eigener Server
- **Notifications**: n8n Webhook → Slack Bot
- **Hosting**: GitHub Pages (`ludwig-a11y/halleluja-os`)
- **Deploy**: `GIT_SSH_COMMAND="ssh -i ~/.ssh/halleluja" git push origin main`

### Datenmodell (Supabase-Tabellen)
- `personen` — Team-Mitglieder (name, rolle, team, slack_id, stufe)
- `ziele` — Strategische Ziele (name, farbe, verantwortlich_id, vertraulich, monat_start/ende)
- `teilziele` — Meilensteine (name, ziel_id, verantwortlich_id, datum, erledigt, vertraulich)
- `aufgaben` — Aufgaben (titel, status, prio, pid, ziel_id, teilziel_id, geplant, gebucht, dl, vertraulich)
- `signale` — Wolken/Ideen (typ, was, von, bereich, vertraulich)
- `wochenresets` — Wochenreviews (pid, kw, jahr, big3, focus_ziel_id, blockiert, beobachtungen)
- `kpis` — KPI-Tracking (ziel_id, name, freq, ziel_wert, ist_wert)
- `kontext_feed` — Aktivitäts-Feed

### Schlüssel-Funktionen im Code
- `notify(evt, data)` — Sendet Events an n8n Webhook (~Zeile 467)
- `celebrate(emoji, text)` — Konfetti-Animation (~Zeile 509)
- `focusTakeover()` — Dezenter Motivations-Banner (~Zeile 499)
- `toast(msg)` — Kleine Benachrichtigung (~Zeile 492)
- `render()` — Haupt-Render-Funktion, dispatcht an rAufgaben/rZiele/rWoche/rTeam
- `dbPatch/dbInsert/dbDel` — Supabase CRUD-Operationen
- `isGF()` — Prüft ob aktueller User Geschäftsführung ist (für vertrauliche Inhalte)

### Konfiguration (localStorage pro Gerät)
- `n8n_webhook` — URL zum n8n Halleluja-Notify Workflow
- `n8n_whisper` — URL zum Whisper-Transkriptions-Workflow (Meeting Dump)
- `app_url` — App-URL für Slack-Links
- `anthropic_key` — Für KI-Features (Aufgaben-Erstellung, Hebel-Analyse)

---

## Aktuelle Navbar-Buttons
- **Mein Tag / Woche / Ziele / Team** — Navigation
- **🎙 + Aufgabe** — Meeting-Transkript einfügen → KI extrahiert Aufgaben
- **+ Aufgabe** — Manuelle Aufgabe erstellen
- **Profil-Badge** — Eigenes Profil, Kapazität
- **⚙** — Einstellungen (nur GF)
- **🌙/☀️** — Dark/Light Mode Toggle

---

## Design-Prinzipien
1. **Klarheit vor Features** — Lieber weniger Buttons, dafür jeder sofort verständlich
2. **Mobile-first** — Muss am Handy genauso gut funktionieren
3. **Belohnung für die richtige Action** — Starten wird gefeiert, Erledigen wird GROSS gefeiert
4. **Transparenz im Team** — Jeder sieht, woran andere arbeiten (außer vertraulich)
5. **Keine Notification-Flut** — Nur Task-Start und Task-Ende als Slack-Signale, kein Login-Spam
6. **Session bleibt 30 Tage** — Kein nerviges tägliches Einloggen

---

## Team-Mitglieder
Personen sind in Supabase hinterlegt mit Slack-IDs für DMs. GF-Rolle hat erweiterte Rechte (vertrauliche Inhalte sehen, Einstellungen ändern).
