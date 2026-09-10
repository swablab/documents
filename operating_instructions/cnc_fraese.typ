#import "../templates/tmpl_betriebsanweisung.typ": betriebsanweisung, ba-section

#show: doc => betriebsanweisung(
  subject: "CNC-Fräse",
  responsible: "",
  date: "10. September 2026",
  doc,
)

#ba-section(
  "Gefahren für Mensch und Umwelt",
  ("W001",),
  (
    "Schwere Verletzungsgefahr durch automatisch bewegte Achsen und rotierendes Fräswerkzeug",
    "Werkzeugbruch, herausgeschleuderte Werkstücke und wegfliegende Späne",
    "Quetsch- und Einzugsgefahr im Arbeitsraum sowie an Antrieben und Spannmitteln",
    "Gefahr durch Lärm, Holz-, Kunststoff- oder Metallstaub und Kühlschmierstoffe",
    "Brandgefahr durch falsche Schnittdaten, Funken, Staub und brennbare Werkstoffe",
  ),
)

#ba-section(
  "Schutzmaßnahmen und Verhaltensregeln",
  ("M003", "P028"),
  (
    "Nur unterwiesene Personen dürfen die CNC-Fräse bedienen",
    "Werkstück, Spannmittel und Werkzeug passend zur Bearbeitung auswählen und sicher befestigen",
    "Vor dem Start Werkzeugweg, Nullpunkt, Freifahrten, Drehzahl und Vorschub prüfen",
    "Arbeitsraum vor dem Start schließen; Schutzeinrichtungen und Not-Halt nicht überbrücken",
    "Werkstück, Spannmittel und Werkzeug niemals bei laufender Spindel berühren",
    "Maschine während des gesamten Programmlaufs beaufsichtigen und bei Auffälligkeiten sofort stoppen",
    "Schutzbrille, Gehörschutz und Sicherheitsschuhe tragen; bei Staub geeignete Absaugung betreiben",
    "Nur freigegebene Materialien und Bearbeitungsparameter verwenden",
    "Späne nicht mit der Hand entfernen; Stillstand abwarten und geeignete Hilfsmittel verwenden",
    "Vor dem Verlassen Programm beenden, Maschine ausschalten und Arbeitsraum sichern",
  ),
)

#ba-section(
  "Verhalten bei Störungen und im Gefahrenfall",
  ("F001",),
  (
    "Bei Werkzeugbruch, Kollision, ungewöhnlichen Geräuschen oder Rauch sofort Not-Halt betätigen",
    "Abstand halten, bis Spindel und Achsen vollständig stillstehen",
    "Maschine gegen Wiedereinschalten sichern und Vorstand informieren",
    "Brand nur mit geeignetem Löschmittel und ohne Eigengefährdung bekämpfen",
  ),
)

#ba-section(
  "Erste Hilfe",
  ("E003",),
  (
    "Maschine abschalten und sichern",
    "Notruf 112 verständigen und Vorstand informieren",
    "Bei Staub- oder Kühlschmierstoffkontakt betroffene Stelle versorgen",
    "Verletzungen in das Verbandbuch eintragen",
  ),
)

#ba-section(
  "Instandhaltung",
  ("M008",),
  (
    "Werkzeugwechsel, Reinigung und Wartung nur bei stillstehender und gesicherter Maschine durchführen",
    "Not-Halt, Einhausung, Verriegelungen, Absaugung und Spannmittel regelmäßig prüfen",
    "Führungen, Werkzeuge und Spannmittel nach Herstellerangaben warten",
    "Späne und Staub mit geeigneter Absaugung oder Hilfsmitteln entfernen",
  ),
)
