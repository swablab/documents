#import "templates/tmpl_letter.typ": tmpl_letter
#import "templates/common.typ": colors, money
#import "templates/form.typ": form_field
#let config = yaml("bestellung.yml")

#show: doc => tmpl_letter(
  title: "Bestellung",
  address: config.address,
  info: [
    Datum: #config.date \
    Bestell-Nr.: #config.order_no \
    Angebots-Nr.: #config.offer_no \
  ],
  footer: [
    Bitte bestätigen Sie den Erhalt dieser Bestellung und den voraussichtlichen Liefertermin.
  ],
  doc,
)

#table(
  columns: (auto, 1fr, auto, auto, auto),
  fill: (_, row) => if row == 0 { colors.highlight } else { white },
  stroke: 0.1pt + colors.subtext,
  [*Pos.*],
  [*Beschreibung*],
  [*Stück*],
  [*Einzelpreis*],
  [*Betrag*],
  ..config
    .entries
    .enumerate()
    .map(e => (
      e.at(0) + 1,
      e.at(1).description,
      e.at(1).pieces,
      money(e.at(1).price),
      money(e.at(1).pieces * decimal(e.at(1).price)),
    ))
    .flatten()
    .map(e => [#e]),
)

#let subtotal = config.entries.map(e => e.pieces * decimal(e.price)).sum()
#let discount_amount = decimal(config.discount)
#let total = subtotal - discount_amount

#align(right)[
  #pad(x: 1em)[
    #table(
      columns: (auto, auto),
      stroke: none,
      inset: (x: 0.5em, y: 0.3em),
      align: (left, right),
      [Zwischensumme:], [#money(subtotal)],
      [Rabatt:], [-#money(discount_amount)],
      [Steuer:], [#money(config.tax)],
      [*Gesamtsumme:*], [*#money(total)*],
    )
  ]
]

#v(2em)
#grid(columns: (1fr, 1fr), gutter: 2em)[
  #form_field[Vorstand 1]
][
  #form_field[Vorstand 2]
]
