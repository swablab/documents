#import "templates/tmpl_page.typ": tmpl_page
#import "templates/common.typ": colors
#import "templates/form.typ": form, form_field

#show: doc => tmpl_page(
  title: "Belegblatt",
  version: "v1.0",
  change_date: "31.05.2024",
  subtext: "Formular zum Abrechnen von Ausgaben für den Verein.",
  doc,
)

#grid(columns: (9cm, 1fr))[
  #box(height: 58em, width: 100%, fill: colors.highlight, stroke: black, inset: 1em)[
    = Ablauf
    + Kläre die Beschaffung mit dem Vorstand ab
    + Kaufe ein
    + Fülle rechts das Formular aus
    + Klebe den Beleg auf diesen Bereich 
    + Gib das Belegblatt beim Vorstand ab
  ]
][
  #box(inset: (x: 1em))[
    #form_field[Vorname]
    #form_field[Nachname]
    #form_field[Datum des Belegs]
    #form_field[Lieferant/Bezugsquelle]

    Der Betrag wurde...
    #grid(columns: (1fr,1fr,1fr))[
      #form_field(width: 2em)[gespendet]
    ][
      #form_field(width: 2em)[ausgezahlt]
    ][
      #form_field(width: 2em)[überwiesen]
    ]
    
    #form_field[IBAN (bei Überweisung)]


    #form_field[Unterschrift Einkäufer]
    #form_field[Unterschrift Vorstand]
  ]
]