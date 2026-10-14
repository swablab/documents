#import "templates/tmpl_page.typ": tmpl_page
#import "templates/form.typ": form, form_field, form_inline

#show: doc => tmpl_page(
  title: "Getränkeliste",
  version: "v1.1",
  change_date: "14.10.2026",
  subtext: [
    Für jedes Getränk einen Strich (egal, welche Größe), für Wasser und Capri Sun einen halben.\
    Bei mehr als 10 Strichen bitte den Betrag in die Getränkekasse werfen\
    und entsprechend durchstreichen.
  ],
  doc,
)

#table(
  columns: (8em, 1fr),
  table.header([Name], [Anzahl Getränke]),
  ..array.range(0, 58).map(i => [#v(1em)]),
)
