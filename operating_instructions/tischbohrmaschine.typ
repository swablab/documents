#import "../templates/tmpl_betriebsanweisung.typ": betriebsanweisung, ba-section

#show: doc => betriebsanweisung(
  subject: "Tischbohrmaschine",
  responsible: "",
  date: "10. September 2026",
  doc,
)

#ba-section(
  "Gefahren für Mensch und Umwelt",
  ("W001",),
  (
    "Verletzungsgefahr durch drehendes Bohrwerkzeug und Werkstück",
    "Einzugs- und Quetschgefahr an Spindel, Bohrfutter und Riementrieb",
    "Gefahr durch wegschleudernde Späne und brechende Bohrer",
    "Gefahr von Gehörschädigungen durch Lärm",
    "Gesundheitsgefahr durch Metall- und Holzstaub",
  ),
)

#ba-section(
  "Schutzmaßnahmen und Verhaltensregeln",
  ("M003", "M004", "P028"),
  (
    "Nur geeignete und unbeschädigte Bohrer mit zulässiger Drehzahl verwenden",
    "Werkstück immer sicher spannen oder gegen Verdrehen sichern",
    "Bohrfutterschlüssel (sofern vorhanden) vor dem Einschalten entfernen",
    "Bohrstelle vor dem Bohren ankörnen und den Vorschub kontrolliert führen",
    "Späne niemals mit der Hand entfernen, sondern Bürste oder Spänehaken verwenden",
    "Einstell-, Rüst- und Reinigungsarbeiten nur bei stillstehender und gesicherter Maschine durchführen",
    "Lange Haare, Schmuck und lose Kleidung sichern; enganliegende Kleidung tragen",
    "Schutzbrille, Gehörschutz und Sicherheitsschuhe tragen. Keine Handschuhe an drehenden Teilen!",
    "Auf einen sicheren Stand und ausreichende Beleuchtung achten",
    "Vor dem Verlassen der Maschine ausschalten und nachlaufende Teile abwarten",
    "Auf Ordnung und Sauberkeit achten",
  ),
)

#ba-section(
  "Verhalten bei Störungen und im Gefahrenfall",
  ("F001",),
  (
    "Bei ungewöhnlichen Geräuschen, Vibrationen oder Schäden Maschine sofort ausschalten",
    "Maschine gegen Wiedereinschalten sichern und Vorstand informieren",
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
  ("M008",),
  (
    "Instandsetzung nur durch beauftragte und unterwiesene Personen",
    "Bei Wartungs- und Pflegearbeiten Maschine vom Netz trennen bzw. sichern",
    "Bohrfutter, Schutzabdeckungen und elektrische Leitungen regelmäßig prüfen",
    "Maschine nach Arbeitsende reinigen",
  ),
)
