#import "../templates/tmpl_betriebsanweisung.typ": betriebsanweisung, ba-section

#show: doc => betriebsanweisung(
  subject: "Tischkreissäge",
  responsible: "Fabian Haas",
  date: "9. September 2026",
  doc,
)

#ba-section(
  "Gefahren für Mensch und Umwelt",
  ("W001",),
  (
    "Schnitt- und Einzugsgefahr durch das schnell laufende Sägeblatt",
    "Gefahr durch das zu bearbeitende Material (Bruch, Splitter, Oberflächenbeschaffenheit)",
    "Gefahr von Gehörschädigungen durch Lärm",
    "Gefahr durch unkontrolliert bewegte Teile",
    "Gefahr beim Sägen durch Holzstaub",
  ),
)

#ba-section(
  "Schutzmaßnahmen und Verhaltensregeln",
  ("M003","M004","M031","P028"),
  (
    "Nur geeignete Kreissägeblätter verwenden",
    "Erforderliche Hilfseinrichtungen bei Bedarf benutzen (Parallelanschlag, Winkelanschlag, Keilschneideeinrichtung, Schiebestock)",
    "Auf die richtige Anbringung und Einstellung der Schutzhaube achten",
    "Beim Einsetzschneiden Rückschlagklotz und Begrenzungsklotz verwenden",
    "Auf einen sicheren Stand beim Arbeiten achten",
    "Splitter und Späne nie mit der Hand aus dem Bereich des laufenden Sägeblattes entfernen",
    "Vor dem Verlassen der Kreissäge die Maschine ausschalten",
    "Auf Ordnung und Sauberkeit achten",
    "Eng anliegende Kleidung, Gehörschutz und geeignete Sicherheitsschuhe tragen. Keine Handschuhe!",
    "Auf die Funktion der Absaugung achten und den Anlauf abwarten",
  ),
)

#ba-section(
  "Verhalten bei Störungen und im Gefahrenfall",
  ("F001",),
  (
    "Bei Störungen oder Schäden Maschine ausschalten und vor unbefugtem Wiedereinschalten sichern",
    "Vorstand informieren",
    "Schäden nur von Fachpersonal beseitigen lassen",
    "Im Brandfall Löschversuch unternehmen",
  ),
)

#ba-section(
  "Erste Hilfe",
  ("E003",),
  (
    "Maschine abschalten und sichern",
    "Vorstand informieren",
    "Verletzungen sofort versorgen",
    "Eintragung in das Verbandbuch vornehmen",
    "Notruf: 112",
  ),
)

#ba-section(
  "Instandhaltung",
  ("M002",),
  (
    "Instandsetzung nur durch beauftragte und unterwiesene Personen",
    "Bei Rüst-, Einstellungs-, Wartungs- und Pflegearbeiten Maschine vom Netz trennen bzw. sichern",
    "Maschine nach Arbeitsende reinigen",
  ),
)