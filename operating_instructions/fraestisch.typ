#import "../templates/tmpl_betriebsanweisung.typ": betriebsanweisung, ba-section

#show: doc => betriebsanweisung(
  subject: "Frästisch (Oberfräse)",
  responsible: "Daniel Moser",
  date: "10. September 2026",
  doc,
)

#ba-section(
  "Gefahren für Mensch und Umwelt",
  ("W001","W022"),
  (
    "Schwere Schnitt- und Einzugsgefahr durch den schnell rotierenden Fräser",
    "Rückschlag und Herausschleudern des Werkstücks oder von Fräserteilen",
    "Quetschgefahr zwischen Werkstück, Anschlag, Tisch und Führungseinrichtungen",
    "Gefahr durch Holzstaub, Lärm und wegfliegende Späne",
    "Brandgefahr durch falsche Drehzahl, stumpfe Werkzeuge oder Holzstaub",
  ),
)

#ba-section(
  "Schutzmaßnahmen und Verhaltensregeln",
  ("M003", "M004", "P028"),
  (
    "Nur scharfe, unbeschädigte und für die Drehzahl geeignete Fräser verwenden",
    "Fräser vollständig und sicher einspannen; Spannzange und Fräser vor jeder Nutzung prüfen",
    "Werkstück immer gegen den Anschlag und in der richtigen Vorschubrichtung führen",
    "Schutzhaube, Anlaufring, Druckvorrichtungen und Anschlag passend zur Arbeit einstellen",
    "Werkstück niemals rückwärts oder freihändig am Fräser vorbeiführen",
    "Hände außerhalb des Gefahrenbereichs halten; bei kleinen Werkstücken Schiebestock oder Hilfsvorrichtung verwenden",
    "Einstell-, Rüst- und Reinigungsarbeiten nur bei stillstehendem und vom Netz getrenntem Frästisch durchführen",
    "Eng anliegende Kleidung, Sicherheitsschuhe, Schutzbrille und Gehörschutz tragen. Keine Handschuhe an rotierenden Werkzeugen!",
    "Absaugung anschließen und Maschine während des Betriebs beaufsichtigen",
    "Vor dem Verlassen ausschalten, Stillstand abwarten und Arbeitsplatz reinigen",
  ),
)

#ba-section(
  "Verhalten bei Störungen und im Gefahrenfall",
  ("F001",),
  (
    "Bei Rückschlag, Werkzeugbruch, ungewöhnlichen Geräuschen oder Rauch sofort ausschalten",
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
    "Verletzungen sofort versorgen und in das Verbandbuch eintragen",
  ),
)

#ba-section(
  "Instandhaltung",
  ("M002","M006"),
  (
    "Fräserwechsel, Reinigung und Wartung nur bei stillstehender und gesicherter Maschine durchführen",
    "Fräser, Spannzange, Schutzhaube, Anschlag, Druckvorrichtungen und Not-Halt regelmäßig prüfen",
    "Absaugung und Arbeitsbereich von Holzstaub und Spänen freihalten",
  ),
)
