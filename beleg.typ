#import "templates/tmpl_page.typ": tmpl_page
#import "templates/common.typ": colors
#import "templates/form.typ": form, form_field

#show: doc => tmpl_page(
  title: "Belegblatt",
  version: "v2.0",
  change_date: "19.09.2026",
  subtext: "Formular zum Abrechnen von Ausgaben für den Verein.",
  doc,
)

#grid(columns: (9cm, 1fr))[
  #box(height: 58em, width: 100%, fill: colors.highlight, stroke: black, inset: 1em)[
    = Ablauf:
    + Kläre die Beschaffung mit dem Vorstand ab
    + Kaufe ein
    + Fülle rechts das Formular aus
    + Klebe den Beleg auf diesen Bereich
    + Wenn du keinen Beleg hast, dann fülle die unten stehenden Punkte aus
    + Gib das Belegblatt beim Vorstand ab
    + Das Geld wird dir überwiesen

    = Grund für Eigenbeleg:
    \
    \

    = Liste an Aufwendungen:
  ]
][
  #box(inset: (x: 1em))[
    #form_field[Vorname]
    #form_field[Nachname]
    #form_field[Datum des Einkaufs]
    #form_field[Datum des Belegs]
    #form_field[Lieferant/Bezugsquelle (z.B. Kaufland)]
    #form_field[Betrag]
    #form_field[Unterschrift Einkäufer]
    #form_field[Unterschrift Vorstand]
  ]
]
