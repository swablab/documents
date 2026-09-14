#import "../templates/tmpl_betriebsanweisung.typ": betriebsanweisung, ba-section

#show: doc => betriebsanweisung(
  subject: "Kappsäge",
  responsible: "Manuel Knodel",
  date: "10. September 2026",
  doc,
)

#ba-section(
  "Gefahren für Mensch und Umwelt",
  ("W001","W022",),
  (
    "Schwere Schnittgefahr durch das rotierende Sägeblatt",
    "Rückschlag und Herausschleudern von Werkstücken oder Abschnitten",
    "Quetschgefahr an Werkstückauflage, Anschlag und Schwenkbereich",
    "Gefahr durch Lärm, Holzstaub und wegfliegende Späne",
    "Brandgefahr durch Holzstaub und überhitztes oder beschädigtes Sägeblatt",
  ),
)

#ba-section(
  "Schutzmaßnahmen und Verhaltensregeln",
  ("M003","M031","P028"),
  (
    "Nur scharfe und für die Kappsäge geeignete Sägeblätter verwenden",
    "Werkstück immer am Anschlag anlegen und gegen Verrutschen sichern",
    "Hände außerhalb des gekennzeichneten Gefahrenbereichs und mit ausreichendem Abstand zum Sägeblatt halten",
    "Sägekopf vollständig nach unten führen und erst nach dem Stillstand wieder anheben",
    "Kurze Werkstücke mit geeigneter Spannvorrichtung oder Hilfseinrichtung sichern",
    "Abschnitte erst nach vollständigem Stillstand des Sägeblatts entfernen",
    "Nicht in das Sägeblatt greifen und keine Werkstücke bei laufendem Blatt verschieben",
    "Eng anliegende Kleidung, Sicherheitsschuhe, Schutzbrille und Gehörschutz tragen. Keine Handschuhe beim Sägen!",
    "Lange Werkstücke auf beiden Seiten sicher abstützen",
    "Absaugung anschließen und Maschine während des Betriebs beaufsichtigen",
    "Vor dem Verlassen ausschalten und Netztrennung bei längeren Unterbrechungen herstellen",
  ),
)

#ba-section(
  "Verhalten bei Störungen und im Gefahrenfall",
  ("F001",),
  (
    "Bei verkantetem Werkstück, ungewöhnlichen Geräuschen oder Schäden sofort ausschalten",
    "Stillstand abwarten, Netzstecker ziehen und gegen Wiedereinschalten sichern",
    "Vorstand informieren; Reparaturen nur durch Fachpersonal durchführen lassen",
    "Bei Brand Alarm auslösen und Löschversuch nur ohne Eigengefährdung unternehmen",
  ),
)

#ba-section(
  "Erste Hilfe",
  ("E003",),
  (
    "Maschine abschalten und sichern",
    "Notruf 112 verständigen und Vorstand informieren",
    "Verletzungen sofort versorgen und in das Verbandbuch eintragen",
  ),
)

#ba-section(
  "Instandhaltung",
  ("M002",),
  (
    "Sägeblattwechsel und Reinigungsarbeiten nur bei stillstehender und gesicherter Maschine durchführen",
    "Sägeblatt, Schutzhaube, Anschlag, Spannvorrichtung und Not-Halt regelmäßig prüfen",
    "Absaugung und Arbeitsbereich von Holzstaub und Spänen freihalten",
  ),
)
