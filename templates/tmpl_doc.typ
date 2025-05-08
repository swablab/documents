#import "common.typ": common, colors

#let tmpl_doc(
  title: none,
  changes: (),
  doc,
) = {
  show: doc => common(title: title, doc)

  set enum(numbering: "(1)")
  set text(size: 12pt)

  // Titelblatt
  align(center)[
    #image("lightmode-swablab.png", width: 70%)

    #pad(top: 2em, bottom: 2em)[
      #text(1.75em, font: "Ubuntu", hyphenate: false)[
        #heading(outlined: false)[*#title*]
      ]
    ]

    #changes.at(-3) - #changes.at(-2) \
    swablab e.V. \
    Katharinenstr. 1 \
    72250 Freudenstadt
  ]

  set page(
    footer: [
      #text(size: 10pt, fill: colors.subtext)[#changes.at(-3)]
      #h(2fr)
      #text(size: 10pt, fill: colors.subtext)[#context counter(page).display()]
    ],
    margin: (bottom: 2.5cm),
  )

  // Inhaltsverzeichnis
  show heading: it => [
    #v(2.25em, weak: true)
    #set text(font: "Ubuntu", 18pt)
    #strong[#it.body]
    #v(1.25em, weak: true)
  ]

  outline(title: [*Inhaltsverzeichnis*])

  set par(leading: 1em)

  pagebreak()

  // Formatierung Inhalt
  set heading(numbering: "§1")
  show heading: it => [
    #v(2.25em, weak: true)
    #set text(font: "Ubuntu", 18pt)
    #strong[
      #counter(heading).display()
      #it.body
    ]
    #v(1.25em, weak: true)
  ]

  // Inhalt
  doc

  pagebreak()

  // Änderungen
  set heading(numbering: none)
  show heading: it => [
    #set text(font: "Ubuntu", 18pt)
    #strong[#it.body]
    #v(1.25em, weak: true)
  ]
  block(breakable: false)[
    #heading([Änderungen])
    #table(
      columns: (auto, auto, 1fr),
      inset: 8pt,
      align: auto,
      stroke: 0.5pt,
      [*Version*], [*Änderungsdatum*], [*Änderungen*],
      ..changes
    )]
}
