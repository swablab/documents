#import "../templates/tmpl_betriebsanweisung.typ": ba-section, betriebsanweisung

#show: doc => betriebsanweisung(
  subject: "xTool S1 Laser",
  responsible: "Daniel Moser",
  date: "10.09.2026",
  doc,
)

#ba-section(
  "Gefahren für Mensch und Umwelt",
  ("W004", "W001"),
  (
    "Laserstrahlung kann Augen und Haut schwer schädigen. Die Einhausung darf während des Betriebs nicht geöffnet oder umgangen werden.",
    "Brand- und Rauchgefahr durch brennbare Werkstoffe, Fehlfokus, falsche Parameter oder Ablagerungen in der Maschine",
    "Beim Lasern entstehen gesundheitsgefährliche Gase, Dämpfe und Feinstäube; die Abluft kann krebserzeugende Stoffe enthalten",
    "Gefahr durch giftige oder korrosive Zersetzungsprodukte, insbesondere bei Kunststoffen und Beschichtungen",
    "Gefahr durch elektrischen Strom sowie durch bewegte Teile und heisse Werkstücke",
  ),
)

#ba-section(
  "Schutzmassnahmen und Verhaltensregeln",
  ("M004", "M003", "P028"),
  (
    "Nur unterwiesene Personen dürfen die Anlage bedienen; Betriebsanleitung von xTool und diese Betriebsanweisung beachten",
    "Vor jedem Start Einhausung, Not-Halt und Flammensensoren prüfen",
    "Deckel und Abdeckungen während des Betriebs geschlossen halten; Sicherheitseinrichtungen niemals überbrücken",
    "SafetyPro IF2 vor dem Laser einschalten und den Abluftweg nach aussen auf freien Durchgang, dichte Verbindungen und sicheren Sitz prüfen",
    "Der IF2 ist ein Abluftventilator, kein Luftreiniger. Abluft niemals in den Arbeitsraum zurückführen",
    "Maschine während des gesamten Laserprozesses beaufsichtigen; bei Flammen, ungewöhnlichem Geruch oder Rauch sofort Not-Halt betätigen",
    "Werkstück plan auflegen, Fokus und Parameter prüfen und zürst einen Probelauf mit geeigneten Reststücken durchführen",
    "Keine reflektierenden Werkstücke wie Spiegel oder blanke Metallflächen mit dem Diodenlaser bearbeiten",
    "Maschine nach dem Prozess ausschalten, IF2-Nachlauf abwarten und den Arbeitsbereich auf Glut und Rückstände kontrollieren",
    "Linsen, Arbeitsfläche und Absaugung regelmässig nach Herstellerangabe reinigen; Filter gibt es beim IF2 nicht",
  ),
)

#ba-section(
  "Materialverbote - niemals lasern",
  ("W021", "W071"),
  (
    "PVC, Vinyl, Kunstleder und alle chlorhaltigen oder halogenhaltigen Kunststoffe: Es können giftige und korrosive Gase entstehen",
    "PTFE/Teflon, unbekannte Kunststoffe sowie ABS, Polycarbonat und Schaumstoffe ohne ausdrückliche Freigabe des Herstellers",
    "Asbest und asbesthaltige Produkte sowie krebserzeugende oder keimzellmutagene Stoffe und deren beschichtete Träger",
    "Mit Holzschutzmitteln, Teer, Kreosot, Flammschutzmitteln oder anderen Chemikalien behandeltes Holz und unbekannte Holzwerkstoffe",
    "Lacke, Farben und Beschichtungen mit Blei, Chrom(VI), Arsen, PCB oder anderen krebserzeugenden bzw. toxischen Bestandteilen",
    "Carbonfaser, kohlenstofffaserverstärkte Werkstoffe und Materialien mit unbekannter Harzmatrix",
    "Materialien mit unbekannter Zusammensetzung oder ohne Sicherheitsdatenblatt; im Zweifel nicht bearbeiten",
    "Niemals Materialien lasern, die vom Hersteller nicht für den verwendeten Laser freigegeben sind. Der IF2 macht ungeeignete Materialien nicht sicher.",
  ),
)

#ba-section(
  "Verhalten bei Störungen und im Gefahrenfall",
  ("F001",),
  (
    "Bei Feuer, starker Rauchentwicklung oder ungewöhnlichem Geruch sofort Not-Halt betätigen und Netzstecker nur gefahrlos ziehen",
    "Deckel geschlossen halten, solange dadurch die Flammen eingeschlossen bleiben; bei Brand sofort Bereich verlassen",
    "Vorstand informieren; Maschine gegen Wiedereinschalten sichern",
    "Bei Rauch oder Verdacht auf Schadstofffreisetzung den Raum verlassen, lüften und erst nach Freigabe betreten",
    "Brand nur mit geeignetem Feuerlöscher und ohne Eigengefährdung bekämpfen",
    "SafetyPro IF2 bei störender oder unzureichender Abluft nicht weiter betreiben",
  ),
)

#ba-section(
  "Erste Hilfe",
  ("E003",),
  (
    "Person aus dem Gefahrenbereich bringen und Notruf 112 verständigen",
    "Bei Augen- oder Hautkontakt mit Laserstrahlung sofort medizinische Hilfe anfordern",
    "Nach Einatmen von Rauch oder Dämpfen an die frische Luft bringen; bei Beschwerden Notruf 112",
    "Verletzungen versorgen und in das Verbandbuch eintragen",
    "Vorstand informieren",
  ),
)

#ba-section(
  "Instandhaltung",
  ("M002", "M006"),
  (
    "Wartung und Reinigung nur durch beauftragte und unterwiesene Personen",
    "Vor Arbeiten Maschine ausschalten, Netzstecker ziehen und gegen Wiedereinschalten sichern",
    "Einhausung, Verriegelungen, Not-Halt, Laser-Schlüssel, Flammensensoren und Abluftverbindungen regelmässig prüfen",
    "Abluftschlauch und IF2 nach Herstellerangabe reinigen; Ablagerungen und Filterstaub als potenziell schadstoffbelastet behandeln",
    "Defekte Sicherheitseinrichtungen oder Absaugung sofort melden und die Maschine ausser Betrieb nehmen",
  ),
)
