#import "templates/tmpl_page.typ": tmpl_page
#import "templates/form.typ": form, form_field, form_inline

#show: doc => tmpl_page(
  title: "Getränkeliste",
  version: "v1.1",
  change_date: "14.10.2026",
  subtext: [
    Wasser und Capri Sun kosten 50ct, alles andere 1€.\
    Die Flaschengröße ist hierbei nicht relevant.\
    Ab 10€ bitte den Betrag in die Getränkekasse zurückzahlen.
  ],
  doc,
)

#table(
  columns: (8em, 1fr),
  table.header([Name], [Anzahl Getränke]),
  ..array.range(0, 58).map(i => [#v(1em)]),
)
