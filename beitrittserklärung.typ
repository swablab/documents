#set text(
  font: "Corbel",
  size: 12pt,
  lang: "de"
)

#set par(justify: true)
#set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
)

// Formularfelder
#let cell(
  width: 10em,
  doc,
) = {
  rect(
    fill: rgb("e4e5ea"),
    height: 100%,
    width: width,
  )
  v(-1em)
  text(
    size: 9pt,
    fill: rgb("000000"),
    doc
  )
}

// Vorlage Spalte 1
#let cell_text(
  doc,
) = {
  v(weak: false, 0.5em)
  set text(10pt)
  align(right, strong(doc))
}

// Version
#place(
  top + left,
  dx: -18em,
  dy: 16.5em,
  
  rotate(
    90deg,
    origin: top + right,
    text(
      size: 10pt,
      fill: rgb("9c9c9c"),
      [swablab e.V. / Beitrittserklärung v1.5 / 30.04.2023]
    )
  )
)

// Logo
#place(
  top + right,
  dx: 2.5em,
  dy: -2.5em,
  image("templates/lightmode-swablab.png", width: 25%)
)

#text(1.75em, font:"Convergence")[
  #heading(outlined: false)[*Beitrittserklärung*]
]

#v(4em)

Bitte leserlich in Druckbuchstaben ausfüllen. Alle Felder sind Pflichtangaben.

#v(1em)

// Formular
#grid(
  columns: (60pt, auto),
  rows: (2em),
  gutter: 0.5em,
  row-gutter: 2em,
  
  cell_text([Name]),
  stack(
    dir: ltr, 
    spacing: 0.5em,
    cell(width: 50%)[vorname], 
    cell(width: 50%)[nachname]
  ),

  cell_text([Anschrift]),
  stack(
    dir: ltr, 
    spacing: 0.5em,
    cell(width: 50%)[straße & hausnummer], 
    cell(width: 50%)[plz & ort],
  ),

  cell_text([Kontakt]),
  stack(
    dir: ltr, 
    spacing: 0.5em,
    cell(width: 50%)[email], 
    cell(width: 50%)[telefon],
  ),

  cell_text([Geburtstag]),
  stack(
    dir: ltr, 
    spacing: 0.5em,
    cell(width: 50%)[datum],
  ),

  cell_text([mtl. Beitrag]),
  stack(
    dir: ltr, 
    spacing: 0.5em,
    cell(width: 2em)[voll (16€\*)],
    cell(width: 2em)[ermäßigt (8€\*)],
    cell(width: 2em)[als Familie (32€\*)],
  ),

  cell_text([Unterschrift]),
  stack(
    dir: ltr,
    spacing: 0.5em,
    cell(width: 50%)[ort & datum], 
    cell(width: 50%)[unterschrift (bei minderjährigen der ges. vertr.)]
  ),
)

#v(2em)

#strong([Datenschutzrechtliche Einwilligungserklärung nach DSGVO]) \
Mit meiner Unterschrift willige ich (und ggf. mein Kind, s.u.) in die Speicherung und Verarbeitung der von mir angegebenen personenbezogenen Daten ein. Diese sind für die Nutzerverwaltung erforderlich. Unsere vollständige Datenschutzerklärung ist unter #link("https://swablab.de/XYZ")[swablab.de/XYZ] einsehbar. \

#strong([Allgemeinen Geschäftsbedingungen (AGB)]) \
Mit meiner Unterschrift akzeptiere ich (und ggf. mein Kind, s.u.) die Allgemeinen Geschäftsbedingungen (AGB). Einsehbar unter #link("https://swablab.de/XYZ")[swablab.de/XYZ] und als Aushang im swablab. \

#strong([Werkstattregeln]) \
Ich bestätige, dass ich (und ggf. mein Kind, s.u.) die Werkstattregeln zur Kenntnis genommen habe und diese zu befolgen. Eine Ersteinweisung in die Werkstatt habe ich erhalten. \
