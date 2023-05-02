#let tmpl(
  title: none,
  version: none,
  date: none,
  changes: (),
  heading_size: 18pt,
  heading_font: "Convergence",
  text_font: "Corbel",
  doc,
) = {
set text(
  font: text_font,
  size: 12pt,
  lang: "de"
)

set par(
  justify: true
)

set page(
  paper: "a4"
)

set enum(
  numbering: "(1)"
)

// Titelblatt
align(center)[
  #image("lightmode-swablab.png", width: 70%)

  #text(1.75em, font: heading_font)[
    #heading(outlined: false)[*#title*]
  ]\
  \

  #version - #date \
  swablab e.V. \
  Katharinenstr. 1 \
  72250 Freudenstadt
]

set page(
  footer: [
    #emph[#version]
    #h(2fr)
    #counter(page).display()
  ]
)

// Inhaltsverzeichnis
show heading: it => [
  #v(2.25em, weak: true)
  #set text(font: heading_font, heading_size)
  #strong[#it.body]
  #v(1.25em, weak: true)
]

outline(title: [*Inhaltsverzeichnis*])

set par(
  leading: 1em,
)

// Formatierung Inhalt
set heading(numbering: "§1")
show heading: it => [
  #v(2.25em, weak: true)
  #set text(font: heading_font, heading_size)
  #strong[
    #counter(heading).display()
    #it.body
  ]
  #v(1.25em, weak: true)
]

// Inhalt
doc

// Änderungen
set heading(numbering: none)
show heading: it => [
  #v(2.25em, weak: true)
  #set text(font: heading_font, heading_size)
  #strong[#it.body]
  #v(1.25em, weak: true)
]
heading([Änderungen])
table(
  columns: (auto, auto, auto),
  inset: 8pt,
  align: auto,
  stroke: 0.5pt,
  [*Version*], [*Änderungsdatum*], [*Änderungen*],
  ..changes
)
}