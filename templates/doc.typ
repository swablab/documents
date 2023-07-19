#let tmpl(
  title: none,
  changes: (),
  heading_size: 18pt,
  heading_font: "Ubuntu",
  text_size: 12pt,
  text_font: "Noto Sans",
  doc,
) = {
set document(
  title: title,
  author: "swablab e.V."
)

set text(
  font: text_font,
  size: text_size,
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

  #pad(bottom: 2em)[
    #text(1.75em, font: heading_font, hyphenate: false)[
      #heading(outlined: false)[*#title*]
  ]]
  

  #changes.at(-3) - #changes.at(-2) \
  swablab e.V. \
  Katharinenstr. 1 \
  72250 Freudenstadt
]

set page(
  footer: [
    #emph[#changes.at(-3)]
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
  columns: (auto, auto, 1fr),
  inset: 8pt,
  align: auto,
  stroke: 0.5pt,
  [*Version*], [*Änderungsdatum*], [*Änderungen*],
  ..changes
)

}