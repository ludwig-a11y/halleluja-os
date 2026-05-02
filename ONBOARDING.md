# Halleluja OS — Onboarding-Manual

Dieses Dokument erklärt, wie die App gedacht ist, warum sie so gebaut ist
und wie du sie als neuer Nutzer in Betrieb nimmst.

Lesezeit: 15–20 Minuten. Nimm sie dir — der Unterschied zwischen "ich klicke
irgendwas" und "ich verstehe, was ich tue" entscheidet, ob dir das System
hilft oder dich nervt.

---

## 1. Was diese App ist — und was nicht

**Was sie ist:** Ein Diagnose-Werkzeug für Wirksamkeit. Ein geteiltes
Betriebssystem, das einem Team hilft, Woche für Woche das Richtige zu tun
— und zu erkennen, warum etwas nicht funktioniert hat, wenn es nicht
funktioniert hat.

**Was sie nicht ist:** Kein Projektmanagement-Tool (kein Jira-Ersatz).
Kein Kanban. Kein Aufgaben-Aggregator. Kein Tool, das deine Todo-Liste
verwaltet, damit du sie abarbeitest.

Der Unterschied ist entscheidend. In den meisten Tools gilt: mehr abhaken
= produktiver. Hier nicht. Hier zählt **nur Arbeit, die auf ein Ziel
einzahlt**. Alles andere ist Busywork und wird bewusst nicht belohnt.

---

## 2. Die zentrale Idee: Leading vs. Lagging (Ovens-Way)

Die wichtigste Unterscheidung in diesem System.

**Lagging Indicator** = Ergebnis. "Hast du den Meilenstein erreicht?"
Antwort kommt erst, wenn es zu spät ist, den Kurs zu korrigieren.

**Leading Indicator** = die *tägliche Aktion*, die das Ergebnis erzwingt.
Eine Zahl, kontrollierbar, klickbar.

Beispiel:
- Lagging: *„30 verkaufte Saunen im Mai"*
- Leading: *„30 qualifizierte Calls/Tag"* — wenn du das hältst, kommen
  die 30 Saunen automatisch.

**Wie es im System lebt** (seit v182):

Jedes Monatsziel kriegt **genau einen Leading-Indicator** mit drei
Eigenschaften:
- **Aktion (Verb):** *„Call gemacht"*, *„Outreach-Mail verschickt"*,
  *„Webinar gemacht"*
- **Frequenz:** `daily` (Default), `weekly`, `monthly`
- **Zielzahl pro Frequenz:** *30 Calls/Tag*, *1 Webinar/Woche*

**Frequenz-Faustregel:**
> *„Würde ich es heute nicht tun, müsste es aber diese Woche?"* — dann
> weekly. Sonst daily. Monatlich nur für echte Monats-Aktionen
> (Bilanz-Review etc.).

**Klick = +1.** Daily-Leadings werden in „Mein Tag" gezählt
(*12/30 heute*), Weekly in „Woche" (*0/1 KW 18*), Monthly in „Monat".
Streak-Mechanik macht den Dopamin-Hit (*Tag 12 von 30, 4× am Stück*).

**KPI-Konzept ist abgeleitet** (nicht mehr Eingabe). KPIs auf
Quartalsziel-Ebene sind aggregierte Sichten der darunter hängenden
Leadings — Read-Only, keine Doppel-Eingabe mehr.

Der **Paddel-Score** (siehe §5) bewertet weiter deine Taktik-Qualität
pro Woche.

Damit kann die App die zentrale Management-Frage beantworten:
> Wenn ein Meilenstein verfehlt wurde — war der Plan zu steil
> (→ weniger ambitionieren) oder die Ausführung zu schwach
> (→ andere Hebel finden)?

---

## 3. Die Kaskade — wie alles zusammenhängt

Zwei parallele Strukturen, jeweils vier Ebenen:

```
🎯 Ziel              (Outcome mit harter Frist)
    └── Monatsziel   (harter Zwischen-Outcome)
         └── Wochenziel  (Big-3-Slot)
              └── Aufgabe (P1/P2/P3)

📁 Bereich           (laufendes Thema, weiche Frist)
    └── Themengebiet (laufender Schwerpunkt)
         └── Wochenziel  (Big-3-Slot)
              └── Aufgabe (P1/P2/P3)
```

### 🎯 Ziel vs. 📁 Bereich (seit v180)

**Ziel** = *„Was muss bis wann erreicht sein?"* — messbarer Wert + Datum.
Verfehlt = das System zwingt am Monatsende ein **Review** (siehe §X).
> Beispiele: *„1500 Termine bis 30.06."*, *„30k MRR bis Q2"*

**Bereich** = *„Welches Thema betreuen wir kontinuierlich?"* — Name +
Verantwortlicher. Datum auf Themengebieten ist eine Zielmarke, kein Cut
— **verlängerbar**, kein Review-Zwang.
> Beispiele: *„Entwicklung Halleluja Sauna"*, *„Finanz"*, *„Operations"*

**Faustregel:** Wenn der 1. Mai dein April-Ergebnis zerstören würde →
**Ziel**. Wenn nicht → **Bereich**.

### Reihenfolge statt Priorität (seit v177)

Wochenziele sind nummeriert (1/2/3). Die Nummer **ist** die Strategie-
Reihenfolge — nicht die Priorität. Du arbeitest erst an 1, dann 2, dann
3. Pfeile ↑↓ überall (Wochenziele, Aufgaben, Monatsziele) lassen dich
manuell sortieren.

P1/P2/P3 bleibt für Aufgaben, die **nicht** an einem Wochenziel hängen
(Ad-hoc, Ops-Notfälle).

### Bottleneck-Logik (seit v178)

„JETZT DRAN" zeigt automatisch den **obersten nicht-wartenden Schritt**
aus der Wochenziel-Sequenz. Wartende und pausierte Aufgaben werden
übersprungen. Das Wochenziel-Header-Badge zeigt:
- 🎯 *Du bist dran* — diese Slot-Aufgabe ist gerade JETZT DRAN
- ⏳ *Engpass: @Person* — alle Slot-Aufgaben warten auf jemanden
- ⏸ *Alles geparkt* — alle Slot-Aufgaben sind pausiert

### Die Regel (Aufgabe → Monatsziel)

Eine Aufgabe, die nicht an ein Monatsziel/Themengebiet hängt, zählt
nicht fürs Paddel und taucht nicht prominent in „Mein Tag" auf. Sie
landet im **Parkplatz** (siehe §X).

**Warum so streng?** Weil sonst jede Mail-Antwort und jedes „kurz
kopieren" zum „erledigt" wird und dein Gefühl von Produktivität von der
tatsächlichen Wertschöpfung entkoppelt.

### Was zählt als Ziel?

Ein Ziel muss **messbar** sein. Heißt: entweder eine Zahl (30k MRR,
50 Saunen, 100 Leads) oder ein klares Ja/Nein-Kriterium (Launchdatum
erreicht ja/nein, Prototyp fertig ja/nein).

"Mehr Umsatz" ist kein Ziel. "30k MRR bis Juni" ist eins.

---

## 4. Der wöchentliche Rhythmus

Der Takt, in dem die App lebt. Jede Woche zwei feste Momente:

### 4.1 Wochenreset (Freitag/Sonntag)

Ein zweistufiger Flow. Dauer: 5–15 Minuten.

**Phase A — Rückblick (30 Sekunden)**

Drei Fragen:

1. Wie viele deiner 3 Wochenziele hast du **geliefert**? (0/1/2/3)
2. Wenn weniger als 3: War das Hauptthema **Ausführung**
   (nicht gemacht, abgelenkt, zu spät) oder **Scoping**
   (zu viel gewollt, falsch eingeschätzt)?
3. Ein Satz Learning (max. 140 Zeichen, Pflicht).

Das ist keine Rechenschafts-Szene. Das ist Daten-Erfassung. Die App
braucht diese drei Werte, um dir (und deiner Führung) ehrliche Diagnose
liefern zu können.

**Phase B — Planung mit Fokus-Coach**

Statt manuell Tasks aus einer Kandidaten-Liste zu picken, öffnet sich der
Fokus-Coach (siehe §6). Der generiert einen Report mit allem, was relevant
ist (letzte 4 Wochen Historie, offene P1s, aktuelle Kaskade, deine
Retro-Antworten von eben) und lässt Claude oder einen anderen Denker
mitüberlegen, was die 3 schärfsten Wochenziele wären.

Du kopierst den Prompt, pastest die Antwort zurück, editierst die
Vorschläge in der Preview — und erst dann werden sie committet.

**Warum so umständlich?** Weil das eigentliche Bottleneck beim Planen
nicht die Eingabe ist, sondern das Denken. Die meisten Wochenplanungs-
Rituale sind zu schnell, zu reflexartig, zu unreferenziert. Der Coach
zwingt zur Tiefe.

**Notfall-Fallback:** Im Wochenreset-Modal gibt es ein eingeklapptes
"↓ Manuell planen"-Panel mit dem alten Picker. Für den Fall, dass Claude
nicht verfügbar ist oder du in 2 Minuten fertig sein musst.

### 4.2 Heute-Tab (täglich)

Der Tab, den du morgens als erstes siehst. Zeigt **nur** deine 3
Wochenziele mit großen "Los"-Buttons. Alles andere (fällige Tasks,
Signale, Termine) ist hinter einem "Weiteres heute"-Toggle
zusammengeklappt.

Warum so hart? Weil der Sinn von Wochenzielen sonst verpufft. Wenn
neben den 3 Big-3 noch 15 andere Tasks im Heute-Tab konkurrieren,
macht jeder die kleinen ersten und die großen zuletzt.

**Für Führungsrollen (GF, Team Lead):** Der Toggle ist jeden Tag zu
— kein State-Remember. Härterer Fokus-Zwang.

---

## 5. Der Paddel-Score

Das ist der zentrale Leading-Indicator der App.

**Zählung:**
- P1-Aufgabe erledigt (mit Monatsziel-Anbindung): **+3 Punkte**
- P2-Aufgabe erledigt (mit Monatsziel-Anbindung): **+1 Punkt**
- Aufgabe ohne Monatsziel-Anbindung: **0 Punkte**

**Was der Score misst:** Wie konsequent hast du diese Woche auf deine
Ziele eingezahlt? Nicht "wie viel hast du gemacht", sondern "wie
ziel-alignt war das, was du gemacht hast".

**Was der Score nicht misst:** Ob du dein Monatsziel erreicht hast. Das
ist eine separate Größe (der Meilenstein-Review, siehe §7).

**Die Diagnose-Kombination:**
- Hoher Paddel + verfehlter Meilenstein → Plan war zu steil. Nächstes
  Mal kleiner planen.
- Niedriger Paddel + verfehlter Meilenstein → Ausführung war schwach.
  Nächstes Mal andere Hebel finden.
- Hoher Paddel + erreichter Meilenstein → Läuft. Nicht überoptimieren.
- Niedriger Paddel + erreichter Meilenstein → Meilenstein war zu einfach.

Das ist der Punkt, an dem diese App nützlicher wird als ein
klassisches To-Do-Tool: sie kann Plan-Problem und Ausführungs-Problem
unterscheiden.

---

## 6. Der Fokus-Coach

Das Denk-Werkzeug. Gibt es in fünf Scopes, je nachdem, auf welcher
Ebene du gerade denkst:

| Scope | Wann | Was |
|-------|------|-----|
| **Quartal** | Einmal pro Quartal | Strategie-Check: Was sind die 1–3 Ziele der nächsten 3 Monate? |
| **Monat** | Zu Monatsstart | Welche Meilensteine zahlen auf das Quartalsziel ein? |
| **Monat-Pivot** | Wenn etwas kippt | Taktik-Wechsel mitten im Monat: was muss anders? |
| **Woche** | Freitag nach Retro | Die 3 Wochenziele für die kommende Woche |
| **Kaskade** | Onboarding / Komplett-Pivot | Alle drei Ebenen in einer Session |

**Ablauf in jedem Scope:**

1. **Kernfrage** sehen (die wichtigste Frage dieser Ebene).
2. **Rolle & Denker** prüfen (Marketing → Cattoni/Brunson, Sales →
   Voss/Hormozi, GF → Drucker/Ovens, Ops → Newport/Ferriss).
3. **Report kopieren** — die App generiert einen Markdown-Bundle mit
   allem relevanten Kontext (Kaskade, Historie, offene Aufgaben, KPIs,
   Retro-Antworten).
4. **In Claude (oder anderem Tool) einfügen**, Antwort bekommen.
5. **Zurück in die App pasten**, "Vorschau →" klicken.
6. **Editieren** — jede Zeile ist inline bearbeitbar. Titel
   umformulieren, Prio ändern, Deadline setzen, einzelne Items
   entfernen.
7. **✓ Anlegen** — erst jetzt wird etwas geschrieben.
8. **Outcome-Screen** zeigt dir den Kaskaden-Baum, was wo gelandet ist.

**Wichtiger Unterschied zu anderen AI-Tools:** Die App schickt die
Prompts nicht automatisch raus. Du kopierst sie selbst. Das wirkt
umständlich, hat aber zwei Gründe:
- Du siehst, was rausgeht — Kontrolle und Lernen.
- Du nutzt das Modell / das Tool, das du willst (keine Lock-in).

---

## 7. Meilenstein-Review

Wenn ein Monatsziel sein Datum erreicht hat, fragt die App beim
nächsten App-Start:

1. Erreicht? (Ja / Teilweise / Nein)
2. Wenn nicht "Ja": War es **Plan** (zu steil) oder **Ausführung**
   (nicht konsequent getackelt)?
3. Ein Satz Learning.

Die Antworten sind die zweite Hälfte der Diagnose-Logik (siehe §5). Sie
werden langfristig akkumuliert: wenn drei Meilensteine in Folge "Nein"
waren bei gleichzeitig hohem Paddel-Score, schlägt die App beim
nächsten Meilenstein-Anlegen vor, kleiner zu planen.

**Warum diese Frage nicht ignorieren:** Wer den Review überspringt,
verliert das Lernsignal. Die App wird dann zu einem reinen Todo-Tool.

---

## 8. Aufgabe anlegen — die Monatsziel-Regel

Beim Aufgabe-Erstellen ist ein **Monatsziel-Dropdown direkt im
Dialog** sichtbar. Die App wählt automatisch dein nächstes eigenes
aktives Monatsziel (nearest deadline) vor, damit du nichts suchen musst.

**Die drei Zustände:**

- **Grün** (Monatsziel gewählt): *"Zählt auf dein Paddel, sichtbar in
  deinem Heute-Tab."*
- **Amber** (Monatsziel existiert, aber abgewählt): *"Landet im
  Parkplatz, erscheint nicht als P1 im Heute-Tab, zählt nicht
  fürs Paddel."*
- **Amber + CTA** (du hast noch kein Monatsziel): *"Aufgabe landet
  im Parkplatz..."* + Button "Kaskade-Session starten".

Du kannst jederzeit eine Aufgabe ohne Monatsziel anlegen. Die App
blockiert nicht. Sie erklärt nur, was das bedeutet.

### Aufgaben an andere zuweisen

Wenn du die "Wer?"-Auswahl auf einen Kollegen änderst, wird das
Monatsziel-Dropdown automatisch mit **dessen** sichtbaren Monatszielen
neu befüllt, und das nächstdringendste wird vorausgewählt. Der Hint
passt sich an: *"Zählt auf X's Paddel, sichtbar in X's Heute-Tab."*

**Wichtig:** "+ Neu"-Monatsziel-Button ist bei Fremdzuweisung
ausgeblendet. Monatsziele sind strategische Akte der Zielperson
selbst — nicht etwas, das der Ersteller festlegt.

Wenn X noch kein sichtbares Monatsziel hat: *"Aufgabe landet in X's
Parkplatz. X kann nach Erhalt selbst zuordnen."*

---

## 9. Onboarding — der erste Tag

Wenn du dich das erste Mal einloggst und noch keine Ziele / Meilensteine /
Wochenziele hast, kommt ein Vollbild-Modal. Kein Abbrechen möglich,
außer Snooze.

**Die vier Schritte:**

1. **Bereich** — In welchem Bereich der Wertschöpfungskette arbeitest du
   (Marketing, Sales, Fulfillment, …)?
2. **Ziel (Quartalskontext)** — Dein wichtigstes Ziel für die nächsten
   ~3 Monate. Messbar. Titel + Bis-Datum (+14 bis +120 Tage).
3. **Meilenstein (Monatskontext)** — Der erste Meilenstein auf dem Weg
   zum Ziel. +7 bis +35 Tage. Auch messbar.
4. **3 Ergebnisvorhaben (Wochenkontext)** — Die drei Dinge, die du
   diese Woche tun willst, um den Meilenstein voranzubringen.

**Snooze-Funktion:** Falls du gerade wirklich kein Ziel formulieren
kannst ("brauche erst Termin mit GF/TL"), kannst du den Flow für 7 Tage
vertagen. Max. 3x verlängerbar (= 21 Tage). Nach dem dritten Snooze
wird ein Signal an GF/TL gesendet: "X braucht Zielgespräch."

Während Snooze funktioniert die App — aber der Heute-Tab zeigt nur den
Platzhalter *"Termin mit GF/TL vereinbaren"*, und Wochenreset ist
deaktiviert. Das ist Absicht: keine Ziele → keine sinnvolle
Wochenplanung.

**Eleganter Onboarding-Weg (empfohlen):** Statt die vier Schritte
einzeln auszufüllen, klick auf "Kaskade-Session starten". Dann kommst
du direkt in den Fokus-Coach (Scope: Kaskade), bekommst einen Prompt mit
deinem Rollen-Kontext, und Claude hilft dir, Quartalsziel +
Meilenstein + 3 Ergebnisvorhaben **in einer einzigen Session** zu
formulieren.

---

## 9.5. Vokabular: Parkplatz, Cleanup, Wartet, Verfehlt-Review (seit v180/181)

Vier zentrale Begriffe, die zusammen das *„nichts versandet"*-Versprechen
einlösen:

### 🅿️ Parkplatz

Eine Aufgabe „nicht jetzt" wegpacken. Optional mit Wiedervorlage-Datum.

- **Mit Datum** *(Parken bis 8.5.)*: kommt automatisch zurück, sanfter
  Toast bei Rückkehr. Im Wochenziel-Slot **gegraut sichtbar**, nicht
  versteckt.
- **Ohne Datum** *(Status = Parkplatz)*: liegt da, du holst es selbst
  beim Cleanup-Termin.

**Parkplatz ersetzt** die alten Begriffe „Backlog" und „Pause" — eine
Achse, zwei Spielarten.

### 🧹 Cleanup · Dein Parkplatz

Tagestermin (Default 15:00, einstellbar). Zeigt **alle geparkten
Aufgaben** + Pflege-Hinweise. Du gehst einmal täglich durch, ziehst
hoch was du heute angehen willst.

Pro Aufgabe Marker: *🅿️ bis X*, *🅿️ ohne Datum*, *⚠ kein Ziel*,
*⏳ wartet auf Person*. Schlafende (Datum > heute) gegraut.

**Doktrin:** keine Aufgabe ist je unsichtbar. Spätestens hier ist sie
da — täglich klärbar in einem Klick.

### ⏳ Wartet auf Person

Status für Aufgaben, die einen externen Bottleneck haben — du wartest
auf Lieferung von jemandem.

Zweistufiger Picker:
1. **Schritt 1:** Person wählen.
2. **Schritt 2:** *Neue Aufgabe für sie erstellen* / *Bestehende
   verknüpfen* / *Nur Marker setzen*.

Ergebnis bei Person X: *„⏳ Andere warten auf dich"*-Block in ihrem
Mein-Tag. Sie kann *„✓ Geliefert"* klicken → bei dir kommt deine
Aufgabe automatisch zurück mit Toast.

Bei dir spiegelnd: *„🕒 Ich warte auf andere"*-Block.

### 📅 MZ-Wochenplaner (seit v184)

Pro Monatsziel ein eigener Wochenplaner: Pool oben (ungeplante
Wochenziele) + KW-Streifen unten (verplante Wochen).

**Öffnen:** Klick auf 📅 in der Zielkarte oder „📅 Wochenplaner
öffnen" im Monats-Check-in.

**Pool:** Wochenziel-Vorschläge unter dem MZ sammeln, ohne KW-Bindung.
„Was muss alles passieren, damit dieses MZ erreicht wird?"

**Drag&Drop bidirektional:**
- Pool → KW: erstes freies Big3-Slot wird gefüllt, Pool-Eintrag
  verschwindet.
- KW → Pool: Slot leer, Aufgaben lösen sich vom Slot, bleiben am MZ.
- KW → andere KW: Slot wandert mit Aufgaben (Wochenziel-Move).

**Aus vergangener KW ziehen** = implizites *„Neu formulieren"* (=
Verfehlt-Review-Geste). Confirm-Dialog erinnert: *„Aufgaben ziehen
mit."*

**Limit pro KW:** drei Big3-Slots. Vierter Drop wird abgelehnt.

### ⚠ Verfehlt-Review (Outcome-Monatsziele)

Ein Outcome-Monatsziel (unter Quartalsziel) das überfällig + nicht
erledigt ist gilt als **verfehlt**. Das System zwingt am Monatsanfang
ein Review:

- **🗄 Verfehlt — archivieren** — Aufgaben + Wochenziele können
  mit-archiviert, umgehängt oder losgelöst werden.
- **🔄 Neu formulieren** — neues Datum + ggf. Titel/Zahl. Aufgaben
  und Wochenziele ziehen automatisch mit.
- **✓ Doch erreicht** — erledigt setzen.

Banner in Mein Tag und Block in Monatsübersicht (rote Box) machen die
verfehlten sichtbar. Snooze pro Tag möglich.

**Themengebiete (unter Bereich) kennen kein Verfehlt** — sie sind
verlängerbar, zeigen nur *„⚠ Datum aktualisieren?"* in Gelb.

---

## 10. Signale & Beobachtungen

Wenn dir im Alltag etwas auffällt, was wichtig sein könnte — ein
Muster bei Kunden, ein Hinweis aus einem Call, eine Zahl, die dich
stutzig macht — kannst du das als **Beobachtung** festhalten.

Beobachtungen sind keine Tasks. Sie sind Rohmaterial. Jede Beobachtung
hat Titel, Beschreibung, Status (offen/bearbeitet/archiviert) und kann
bei Bedarf zu einer Aufgabe, zu einem Decision Request oder zu einem
Archiv-Eintrag weiterverarbeitet werden.

Der Zweck: Das Gehirn entlasten ("ich muss mir das merken") und gleich-
zeitig ein Korpus an echten Observations aufbauen, das in zukünftigen
Strategie-Sessions hilft.

---

## 11. Decision Requests

Wenn du eine Entscheidung brauchst, die nicht du alleine treffen
kannst — nicht weil du unsicher bist, sondern weil sie über deine
Befugnis hinausgeht oder andere involviert —, öffnest du einen
Decision Request.

Warum eigenes Tool und nicht einfach eine Aufgabe? Weil
Entscheidungs-Prozesse andere Eigenschaften haben als Taten:

- Sie haben Optionen (A/B/C), keine Schritte.
- Sie brauchen Entscheider (nicht Ausführende).
- Sie haben eine Deadline, aber auch ein "wer darf warten".
- Sie sollten dokumentiert bleiben (Warum wurde A gewählt, nicht B?).

In einem generischen Task-Tool würde all das verschwimmen. Separate
Entität = klare Wiederauffindbarkeit und sauberes Denken.

---

## 12. Drift Detection

Wenn die gleiche Aufgabe zwei, drei, vier Wochen in Folge als
Wochenziel gewählt wird und nie erledigt, benennt die App das:

- **2. Woche:** Gelbes Badge auf der Card *"⚠️ 2. Woche"*.
- **3. Woche:** Pflicht-Dialog beim Wochenreset: *"Diese Aufgabe läuft
  dir seit 3 Wochen hinterher. Was ist der Grund?"* — Auswahl:
  Ausführung / Scoping / Irrelevant.
- **4. Woche:** Freeze. Die Aufgabe kann nicht mehr als Wochenziel
  gewählt werden, bis sie erledigt oder archiviert ist.

Das verhindert, dass dieselbe Hausaufgabe quartalsweise mitgeschleppt
wird. Entweder klein schneiden, löschen oder endlich machen.

---

## 13. Die Denker hinter der App

Nicht zur Folklore — jede Designentscheidung hat einen Grund, der in
der Management-Literatur verankert ist.

**Peter Drucker** — Wirksamkeit > Effizienz. "Tu die richtigen Dinge,
nicht Dinge richtig." Der Paddel-Score und die Kaskade-Logik sind
direkte Anwendungen seines Knowledge-Worker-Frameworks.

**Sam Ovens** — "Build the glue, not what exists." Tools, die einem
System dienen, sollten unsichtbar werden. Kein Feature um des Features
willen. Daher: ein Planungs-Tool pro Job, keine Parallelstrukturen.

**Ray Dalio** — "Pain + Reflection = Progress." Der Meilenstein-Review
und die Phase-A-Retro sind direkt aus seinem Framework für
institutionalisiertes Lernen.

**Gary Keller / The One Thing** — Pareto-Extrem: 4% der Aktivitäten
erzeugen 64% der Ergebnisse. Daher: 3 Wochenziele, nicht 10. Fokus ist
nicht "viele Dinge priorisieren", Fokus ist "wenige Dinge zulassen".

**Cal Newport** — Deep Work. Der Heute-Tab mit seinem harten Collapse
ist ein Ausdruck davon: die meisten Tools produzieren Shallow Work,
diese App verweigert das systematisch.

---

## 14. Was du am ersten Tag tun solltest

In dieser Reihenfolge:

1. **Einloggen.** Falls Onboarding-Modal kommt: "Kaskade-Session
   starten". 20 Minuten einplanen, ernst nehmen.
2. **Quartalsziel, Meilenstein, 3 Wochenziele** sind nach der Session
   angelegt. Im Zweifel mit GF/TL kurz absprechen, ob das Ziel
   tatsächlich das richtige ist.
3. **Heute-Tab öffnen.** Dort stehen jetzt die 3 Wochenziele. Ein
   Klick auf einen = Fokus-Modus startet.
4. **Erste Aufgabe anlegen.** Schau, dass das Monatsziel-Dropdown
   vorausgewählt ist. Prüfe den Hint: grün = gut, amber = überlegen.
5. **Am Freitag: Wochenreset.** Die drei Retro-Fragen beantworten,
   dann Fokus-Coach für nächste Woche starten.

**Verbotene Faulheit:**
- Aufgaben ohne Monatsziel anlegen, weil es schneller ist.
- Wochenreset überspringen, weil gerade keine Zeit ist.
- Meilenstein-Review wegklicken, weil er als Modal nervt.

All das kostet die App ihre Diagnose-Fähigkeit. Dann wäre sie ein
langsameres Trello. Für das wäre sie nicht gebaut worden.

---

## 15. Häufige Fragen

**"Warum kann ich Tasks nicht einfach ohne Ziel anlegen wie früher?"**
Du kannst. Der Hint erklärt dir nur, dass die Aufgabe dann im
Parkplatz landet und nicht im Heute-Tab erscheint. Die Entscheidung
ist bei dir. Die Konsequenz ist nur ehrlich.

**"Warum ist der Fokus-Coach kein Chat? Ich muss immer copy/paste."**
Weil wir nicht an die API von Claude / OpenAI gekoppelt sein wollen,
und weil Copy/Paste dich zwingt, den Output anzuschauen. Wer den Prompt
nie liest, lernt nie zu fragen.

**"Der Coach schlägt manchmal schlechte Wochenziele vor."** Dann
editierst du sie in der Preview. Oder du passt deinen Prompt an
(Kernfrage verschärfen, Rolle wechseln). Der Coach ist ein
Denker-Ersatz, kein Orakel.

**"Ich habe kein Quartalsziel, aber viele Aufgaben. Was mache ich?"**
Genau die Situation, für die der Onboarding-Snooze da ist. Vereinbare
einen Termin mit deiner Führung, formuliere zusammen ein Ziel, und
fang dann an. Ohne Ziel an der Spitze ist Paddel bedeutungslos.

**"Müssen alle im Team das gleich machen?"** Ja, bei den Kern-Rhythmen
(Wochenreset, Meilenstein-Review). Bei der Aufgaben-Ebene: ja, bei der
Monatsziel-Anbindung — denn sonst bricht das Paddel-System teamweit
zusammen.

---

## 16. Wenn etwas kaputt ist

- **App lädt nicht:** In DevTools → Application → Service Workers →
  Update. Dann Reload. Prüfe die Cache-Version unten im UI.
- **Daten fehlen:** Im "Chef"-Tab gibt es ein Diagnose-Panel. Zeigt
  Live-Sync-Status zu Supabase.
- **Coach funktioniert nicht:** Fallback-Planung im Wochenreset-Modal
  unter "↓ Manuell planen". Plus: GF / Admin informieren, damit das
  Problem behoben wird.

---

## 17. Nicht vergessen

Das wichtigste Prinzip dieser App in einem Satz:

> **Meilensteine sollen steil sein. Erreicht-ja/nein ist Lagging.
> Taktik-Qualität (= Ergebnisvorhaben geliefert + Ziel-alignt) ist
> Leading. Paddel misst Leading.**

Wenn du das im Kopf hast, macht jede Designentscheidung in der App
Sinn. Wenn nicht, wirkt die App umständlich. Dann nochmal §2 lesen.

Viel Erfolg.
