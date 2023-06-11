#set document(
  author: "swablab e.V.",
  title: "Haftungsausschluss"
)

#set text(
  font: "Corbel",
  size: 12pt,
  lang: "de",
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
  dx: -19.5em,
  dy: 17.3em,
  
  rotate(
    90deg,
    origin: top + right,
    text(
      size: 10pt,
      fill: rgb("9c9c9c"),
      [swablab e.V. / Haftungsausschluss v1.0 / #datetime.today().display("[day].[month].[year]")]
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
  #heading(outlined: false)[*Haftungsauschluss*]
]

#v(4em)

Bitte leserlich in Druckbuchstaben ausfüllen. Alle Felder sind Pflichtangaben.

#v(1em)

// Formular
#grid(
  columns: (50pt, auto),
  rows: (2em),
  gutter: 0.5em,
  row-gutter: 2em,
  
  cell_text([Name]),
  stack(
    dir: ltr, 
    spacing: 0.5em,
    cell(width: 50% - 0.25em)[vorname], 
    cell(width: 50% - 0.25em)[nachname]
  ),

  cell_text([Anschrift]),
  stack(
    dir: ltr, 
    spacing: 0.5em,
    cell(width: 50% - 0.25em)[straße & hausnummer], 
    cell(width: 50% - 0.25em)[plz & ort],
  ),

  cell_text([Kontakt]),
  stack(
    dir: ltr, 
    spacing: 0.5em,
    cell(width: 50% - 0.25em)[email], 
    cell(width: 50% - 0.25em)[telefon],
  ),

  cell_text([Geburtstag]),
  stack(
    dir: ltr, 
    spacing: 0.5em,
    cell(width: 50% - 0.25em)[datum],
  )
)

#v(2em)

#strong([Datenschutzrechtliche Einwilligungserklärung nach DSGVO]) \
Mit meiner Unterschrift willige ich (und ggf. mein Kind, s.u.) in die Speicherung und Verarbeitung der von mir angegebenen personenbezogenen Daten ein. Diese sind für die Nutzerverwaltung erforderlich. Unsere vollständige Datenschutzerklärung ist unter #link("https://swablab.de/XYZ")[swablab.de/XYZ] einsehbar. \

#strong([Allgemeinen Geschäftsbedingungen (AGB)]) \
Mit meiner Unterschrift akzeptiere ich (und ggf. mein Kind, s.u.) die Allgemeinen Geschäftsbedingungen (AGB). Einsehbar unter #link("https://swablab.de/XYZ")[swablab.de/XYZ] und als Aushang im swablab. \

#strong([Werkstattregeln]) \
Ich bestätige, dass ich (und ggf. mein Kind, s.u.) die Werkstattregeln zur Kenntnis genommen habe und diese befolgen werde. Eine Ersteinweisung in die Werkstatt habe ich erhalten. \

#v(2em)

// Unterschrift
#grid(
  columns: (50pt, auto),
  rows: (2em),
  gutter: 0.5em,
  row-gutter: 2em,
  
  cell_text([Unterschrift]),
  stack(
    dir: ltr,
    spacing: 0.5em,
    cell(width: 50% - 0.25em)[ort & datum], 
    cell(width: 50% - 0.25em)[unterschrift (bei minderjährigen der ges. vertr.)]
  ),
)

#v(2em)
#block(
  stroke: 1pt + black,
  inset: 0.5em,
[
#strong([Regelung für Minderjährige]) \
Mit meiner Unterschrift bestätige ich, 
#box(height: 0.75em, width: 18em, fill: rgb("e4e5ea"), outset: (y: 3pt)),
dass mein Kind
#box(height: 0.75em, width: 18em, fill: rgb("e4e5ea"), outset: (y: 3pt)),
die Werkstatt des swablab e.V. eigenständig und auf eigene bzw. meine Verantwortung und mit meinem Einverständnis nutzen darf. Welche Werkräume und Gerätschaften mein Kind benutzen darf, kläre ich vorab mit meinem Kind. Für die Einhaltung dieser Vereinbarung bin ausschließlich ich in Absprache mit meinem Kind verantwortlich. Die Werkstattbetreiber können und werden nicht die Aufsicht und Kontrolle dieser Vorgaben übernehmen.
])