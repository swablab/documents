#import "templates/tmpl_letter.typ": tmpl_letter
#import "templates/common.typ": colors, money
#import "@preview/cades:0.3.0": qr-code
#let config = yaml("rechnung.yml")

#show: doc => tmpl_letter(
  title: (
    invoice: "Rechnung",
    offer: "Angebot",
    estimate: "Kostenvoranschlag",
    internal: "Eigenbeleg",
  ).at(config.type),
  address: config.address,
  info: [
    Datum: #config.date \
    #if config.type != "internal" [
      Kunden-Nr.: #config.customer_no \
    ]
    #if config.type == "invoice" [
      Rechnungs-Nr.: #config.invoice_no \
    ] else if config.type == "offer" [
      Angebots-Nr.: #config.invoice_no \
    ]
  ],
  footer: [
    #if config.type == "invoice" [
      Vielen Dank für deine Bestellung! \
    ] else if config.type == "estimate" or config.type == "offer" [
      Wir freuen uns auf deine Bestellung! \
    ] else if config.type == "internal" [
      *Grund für Eigenbeleg:* \
      #config.internal_reason
    ]

    #text(size: 0.7em, fill: colors.subtext)[
      #if config.type == "invoice" [
        Gesamtbetrag fällig in 10 Tagen ab Rechnungserhalt. \
        Für überfällige Zahlungen wird eine Bearbeitungsgebühr von min. 5 % pro Monat berechnet.
      ] else if config.type == "offer" [
        Dieses Angebot ist für einen Monat gültig.
      ] else if config.type == "estimate" [
        Dieser Kostenvoranschlag ist unverbindlich.
      ]
    ]
  ],
  doc,
)


#if config.type == "invoice" [
  Bitte nutze deine Rechnungs-Nr. als Verwendungszweck für die Überweisung!
]
#table(
  columns: (auto, 1fr, auto, auto, auto, auto),
  fill: (_, row) => if row == 0 { colors.highlight } else { white },
  stroke: 0.1pt + colors.subtext,
  [*Pos.*],
  [*Beschreibung*],
  [*Stück*],
  [*Einzelpreis*],
  [*Rabatt*],
  [*Betrag*],
  ..config
    .entries
    .enumerate()
    .map(e => (
      e.at(0) + 1,
      e.at(1).description,
      e.at(1).pieces,
      money(e.at(1).price),
      money(e.at(1).sale),
      money(e.at(1).pieces * e.at(1).price - e.at(1).sale),
    ))
    .flatten()
    .map(e => [#e]),
)

#align(right)[
  #pad(x: 1em)[
    *Gesamtbetrag: #money(config.entries.map(e => e.pieces * e.price - e.sale).sum())*
  ]
]

#if config.type == "invoice" [
  #v(1em)
  #align(right)[
    #block(
      stroke: 1pt,
      inset: 1em,
      radius: 1em,
    )[
      #qr-code(
        "BCD\n002\n1\nSCT\n\nswablab e.V.\nDE18603913100125634005\nEUR"
          + str(config.entries.map(e => e.pieces * e.price - e.sale).sum())
          + "\nGDDS\n\nRechnung "
          + str(config.invoice_no)
          + "\nswablab Rechnung",
        width: 2cm,
      )

      #place(center + bottom, dy: 1.1em)[
        #block(width: 100% + 0.75em, fill: white)[
          #text(size: 8pt)[
            Zahlen mit Code
          ]
        ]
      ]
    ]
  ]
]
