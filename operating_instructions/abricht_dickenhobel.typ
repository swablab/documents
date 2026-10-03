#import "../templates/tmpl_betriebsanweisung.typ": betriebsanweisung, ba-section

#show: doc => betriebsanweisung(
  subject: "Abricht- und Dickenhobel",
  responsible: "Fabian Haas",
  date: "10. September 2026",
  doc,
)

#ba-section(
  "Gefahren für Mensch und Umwelt",
  ("W024","W088"),
  (
    "Schwere Schnitt- und Amputationsgefahr durch die rotierende Messerwelle",
    "Einzugs- und Quetschgefahr an Messerwelle, Werkstück und Vorschubwalzen",
    "Rückschlag von Werkstücken sowie herausgeschleuderte Holzsplitter",
    "Gefahr durch Lärm und Holzstaub",
    "Brandgefahr durch Holzstaub und brennbare Ablagerungen",
  ),
)

#ba-section(
  "Schutzmaßnahmen und Verhaltensregeln",
  ("M003", "M004", "P028"),
  (
    "Nur scharfes, unbeschädigtes und für die Maschine zugelassenes Hobelwerkzeug verwenden",
    "Werkstück vor dem Hobeln auf Nägel, Schrauben, Steine und lose Äste prüfen",
    "Werkstück sicher und mit ausreichendem Abstand zur Messerwelle führen",
    "Beim Abrichthobeln die Schutzvorrichtung so einstellen, dass nur der erforderliche Teil der Messerwelle frei liegt",
    "Beim Dickenhobeln Werkstück nur bei laufendem Vorschub zuführen und nicht in den Einzugsbereich greifen",
    "Kurze, schmale oder sehr dünne Werkstücke nur mit geeigneten Hilfsmitteln bearbeiten",
    "Nie über die laufende Messerwelle greifen und Werkstücke nicht gegen die Drehrichtung herausziehen",
    "Eng anliegende Kleidung, Sicherheitsschuhe, Schutzbrille und Gehörschutz tragen. Keine Handschuhe an rotierenden Werkzeugen!",
    "Absaugung vor dem Einschalten anschließen und während der Bearbeitung betreiben",
    "Maschine während des Betriebs nicht unbeaufsichtigt lassen",
    "Vor dem Verlassen ausschalten, Stillstand abwarten und Arbeitsplatz reinigen",
  ),
)

#ba-section(
  "Verhalten bei Störungen und im Gefahrenfall",
  ("F001",),
  (
    "Bei ungewöhnlichen Geräuschen, Vibrationen oder Rückschlag Maschine sofort ausschalten",
    "Stillstand abwarten, Netzstecker ziehen und gegen Wiedereinschalten sichern",
    "Vorstand informieren; Störungen nur durch Fachpersonal beseitigen lassen",
    "Bei Brand Alarm auslösen und Löschversuch nur ohne Eigengefährdung unternehmen",
  ),
)

#ba-section(
  "Erste Hilfe",
  ("E003",),
  (
    "Maschine abschalten und sichern",
    "Notruf 112 verständigen und Vorstand informieren",
    "Blutungen mit geeignetem Verbandmaterial versorgen",
    "Verletzungen in das Verbandbuch eintragen",
  ),
)

#ba-section(
  "Instandhaltung",
  ("M002",),
  (
    "Wartung, Messerwechsel und Reinigung nur bei stillstehender und gesicherter Maschine durchführen",
    "Messerwelle, Schutzvorrichtungen, Vorschubwalzen und Not-Halt regelmäßig prüfen",
    "Absaugung und Schlauch auf freien Durchgang und Beschädigungen kontrollieren",
    "Holzstaub und Späne mit geeigneter Absaugung entfernen, nicht mit Druckluft aufwirbeln",
  ),
)
