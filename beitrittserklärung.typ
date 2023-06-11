#set document(
  author: "swablab e.V.",
  title: "Beitrittserklärung"
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
  cell_content: none,
  doc,
) = {
  rect(
    fill: rgb("e4e5ea"),
    height: 100%,
    width: width,
    cell_content
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
  dx: -18.5em,
  dy: 16.75em,
  
  rotate(
    90deg,
    origin: top + right,
    text(
      size: 10pt,
      fill: rgb("9c9c9c"),
      [swablab e.V. / Beitrittserklärung v1.5 / #datetime.today().display("[day].[month].[year]")]
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

#block(
  width: 32em,
  above: 1.75em,
  [
  Hiermit trete ich zum #box(height: 0.75em, width: 8em, fill: rgb("e4e5ea"), outset: (y: 3pt)), dem swablab e.V. als Mitglied bei und erkenne die Satzung, die Beitragsordnung und die Ziele des Vereins an.
])

#v(0.5em)
#text(10pt)[Bitte leserlich in Druckbuchstaben ausfüllen. Alle Felder sind Pflichtangaben.]

// Formular
#grid(
  columns: (60pt, auto),
  rows: (2em),
  gutter: 0.5em,
  row-gutter: 1.5em,
  
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
  ),

  cell_text([monatlicher\ Beitrag]),
  stack(
    dir: ltr, 
    spacing: 1.75em,
    cell(width: 2em)[voll (16€\*)],
    cell(width: 2em)[ermäßigt (8€\*)],
    cell(width: 2em)[familie (32€\*)],
    cell(width: 2em)[fördermitglied (2€\*)],
    cell(width: 5em, cell_content: align(right, [€]))[selbsgewählter beitrag],
  ),

  cell_text([Unterschrift]),
  stack(
    dir: ltr,
    spacing: 0.5em,
    cell(width: 50% - 0.25em)[ort & datum], 
    cell(width: 50% - 0.25em)[unterschrift (bei minderjährigen der ges. vertr.)]
  )
)

#v(0.75em)
#text(10pt)[\* Bitte eines der Felder ankreuzen. Es kann auch ein beliebig höherer Beitrag entrichtet werden.]

#v(0.75em)
#strong[SEPA-Lastschriftmandat] \
Hiermit ermächtige ich den

#block(
  inset: (x: 3em),
  [#strong[swablab e.V.], Katharinenstr. 1, 72250 Freudenstadt, Deutschland \
  Gläubiger-ID: DE04ZZZ00002388328 \
  Mandatsreferenz: #box(height: 0.75em, width: 8em, fill: rgb("e4e5ea"), outset: (y: 3pt)) #text(10pt)[(wird vom Verein vergeben)]
])

den jeweils gültigen Vereinsbeitrag bei Fälligkeit zu Lasten meines Kontos mittels Lastschrift einzuziehen. Zugleich weise ich mein Kreditinstitut an, die vom swablab e.V. auf mein Konto gezogenen Lastschriften einzulösen.

#text(10pt)[
Hinweis: Ich kann innerhalb von acht Wochen, beginnend mit dem Belastungsdatum, die Erstattung des belasteten Betrages verlangen. Es gelten dabei die mit meinem Kreditinstitut vereinbarten Bedingungen.]

#grid(
  columns: (60pt, auto),
  rows: (2em),
  gutter: 0.5em,
  row-gutter: 1.5em,
  
  cell_text([Kontoinhaber]),
  stack(
    dir: ltr, 
    spacing: 0.5em,
    cell(width: 50% - 0.25em)[vorname], 
    cell(width: 50% - 0.25em)[nachname]
  ),

  cell_text([IBAN]),
  stack(
    dir: ltr, 
    spacing: 0.5em,
    cell(width: 100%)[iban],
  ),

  cell_text([Institut & BIC]),
  stack(
    dir: ltr, 
    spacing: 0.5em,
    cell(width: 50% - 0.25em)[institut], 
    cell(width: 50% - 0.25em)[bic],
  ),

  cell_text([Unterschrift]),
  stack(
    dir: ltr,
    spacing: 0.5em,
    cell(width: 50% - 0.25em)[ort & datum], 
    cell(width: 50% - 0.25em)[unterschrift kontoinhaber\ (bei minderjährigen der gesetzliche vertreter)]
  )
)