#import "templates/form.typ": tmpl, colors
#let config = yaml("rechnung.yml")

#show: doc => tmpl(
  title: (
    invoice: "Rechnung",
    offer: "Angebot",
    estimate: "Kostenvoranschlag",
    internal: "Eigenbeleg"
  ).at(config.type),
  version: "",
  change_date: config.date,
  text_size: 11.25pt,
  doc,
)

// DIN 5008 Sichtfenster: 45mm
#place(
  top+left,
  dy: 25mm,
)[
  #text(size: 0.75em)[#underline[swablab e.V. - Katharinenstr. 1 - 72250 Freudenstadt]] \
  #v(0.5em)
  #config.address
]

// DIN 5008 Informationsblock: 50mm
#place(
  top+right,
  dy: 30mm,
)[
  #v(1em)
  Datum: #config.date \
  #if config.type != "internal" [
    Kunden-Nr.: #config.customer_no \
  ]
  #if config.type == "invoice" [
    Rechnungs-Nr.: #config.invoice_no \
  ] else if config.type == "offer" [
    Angebots-Nr.: #config.invoice_no \
  ]
]

// DIN 5008 Faltmarke 1: 105mm
#place(
  top+left,
  dy: 85mm,
  dx: -1cm,
  line(
    length: -1em, 
    stroke: 0.5pt + colors.subtext
  )
)
// DIN 5008 Faltmarke 2: 210mm
#place(
  top+left,
  dy: 190mm,
  dx: -1cm,
  line(
    length: -1em, 
    stroke: 0.5pt + colors.subtext
  )
)

#let money(i) = {
  if i == 0 {
    return "0.00€"
  }

  let j = str(calc.round(i * 100))

  if i < 1 {
    "0." + j.slice(-2) + "€"
  } else {
    j.slice(0,-2)+ "." + j.slice(-2) + "€"
  }
}

// DIN 5008 nach Faltmarke 1
#place(
  top+left,
  dy: 85mm,
)[
  #table(
    columns: (auto, 1fr, auto, auto, auto ,auto),
    fill: (_, row) => if row == 0 { colors.highlight } else { white },
    stroke: 0.1pt + colors.subtext,
    [*Pos.*],
    [*Beschreibung*],
    [*Stück*],
    [*Einzelpreis*],
    [*Rabatt*],
    [*Betrag*],
    ..config.entries.enumerate().map(e => (
      e.at(0)+1, 
      e.at(1).description,
      e.at(1).pieces,
      money(e.at(1).price),
      money(e.at(1).sale),
      money(e.at(1).pieces * e.at(1).price - e.at(1).sale),
    )).flatten().map(e => [#e]),
  )

  #align(right)[
    #pad(x:1em)[
      *Gesamtbetrag: #money(config.entries.map(e => e.pieces * e.price - e.sale).sum())*
    ]
  ]
]

// Footer
#place(bottom+left)[
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
    ]else if config.type == "estimate" [
      Dieser Kostenvoranschlag ist unverbindlich.
    ]

    #table(
    stroke: none,
    align: top+left,
    columns: (1fr,1fr,auto,1fr,1fr),
      [*Telefon*],[*E-Mail / Web*],[*Bankverbindung*],[*Vereinsregister*],[*Vorstand*],
      [
        +49 15679232971
      ],
      [
        info\@swablab.de \
        https://swablab.de
      ],
      [
        VR-Bank Dornstetten-Horb \
        DE12 6426 2408 0125 6340 05
      ],
      [
        VR 724909 \
        Amtsgericht Stuttgart
      ],
      [
        Fabian Haas \
        Manuel Knodel
      ],
  )
  ]
]