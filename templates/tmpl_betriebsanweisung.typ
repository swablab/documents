#import "@preview/typsium-iso-7010:0.1.2": iso-7010

#let blue = rgb("1111dd")
#let body-size = 9.5pt

#let ba-sign(codes) = stack(
  spacing: 0.2em,
  ..codes.map(code => iso-7010(code, height: 1.6cm, inset: 0%)),
)

#let ba-section(title, code, items) = block(
  [
    #block(fill: blue, width: 100%, height: 0.8cm, inset: (x: 0.35em, y: 0.25em))[
      #align(center + horizon)[#text(fill: white, weight: "bold", size: 11pt)[#title]]
    ]
    #grid(
      columns: (3.2cm, 1fr),
      gutter: 0.35cm,
      inset: (x: 0.2cm, top: 0.15cm, bottom: 0.3cm),
      align: (center + horizon, left),
      ba-sign(code),
      [
        #stack(
          spacing: 0.8em,
          ..items.map(item => [#text(size: body-size)[• #item]]),
        )
      ],
    )
  ],
  width: 100%,
  stroke: 1.2pt + blue,
  breakable: false,
)

#let betriebsanweisung(
  organisation: "swablab e.V.",
  title: "Betriebsanweisung",
  subject: "",
  responsible: "",
  release: "",
  date: "",
  doc,
) = {
  set document(title: title, author: organisation)
  set page(paper: "a4", margin: (top: 1cm, bottom: 1cm, left: 1.2cm, right: 1.2cm))
  set text(font: "Ubuntu", size: body-size, lang: "de")
  set par(leading: 1em, spacing: 0em)

  block(stroke: 2pt + blue, width: 100%)[
    #grid(
      columns: (1fr, 3fr, 1fr),
      inset: (x: 0.2cm, y: 0.05cm),
      align: (left + top, center + horizon, right + top),
      [
        #image("lightmode-swablab.png", width: 3.2cm)
      ],
      [
        #align(center)[
          #text(size: 24pt, weight: "bold")[#title]\
          #text(size: 14pt)[Für das Arbeiten an]\
          #text(size: 20pt, weight: "bold")[#subject]
        ]
      ],
      [
        #align(center + horizon)[
          #text(size: 7pt, weight: "bold")[Verantwortlich]\
          #v(0.6em)
          #text(size: 7pt, weight: "bold")[für Maschine]\
          #v(0.6em)
          #box(width: 3cm, height: 0.55cm, fill: luma(94%))[
            #align(center + horizon)[#responsible]
          ]
        ]
      ],
    )

    #doc
  ]

  v(1cm)
  grid(
    columns: (2fr, 1fr),
    gutter: 0.5cm,
    align: (left + horizon, right + horizon),
    [
      #grid(
        columns: (auto, 1fr),
        rows: (0.55cm,),
        gutter: 0.15cm,
        align: horizon,
        [*Freigabe durch Vorstand:*],
        box(width: 6cm, height: 0.55cm, fill: luma(94%)),
      )
    ],
    [
      #align(right + horizon)[
        #grid(
          columns: (auto, auto),
          rows: (0.55cm,),
          gutter: 0.15cm,
          align: horizon,
          [*Stand:*],
          box(width: 3.2cm, height: 0.55cm, fill: luma(94%))[#date],
        )
      ]
    ],
  )
}