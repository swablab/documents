#set document(
  author: "swablab e.V.",
  title: "Datenschutzrechtliche Hinweise"
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
  dx: -22.85em,
  dy: 21.75em,
  
  rotate(
    90deg,
    origin: top + right,
    text(
      size: 10pt,
      fill: rgb("9c9c9c"),
      [swablab e.V. / Datenschutzrechtliche Hinweise v1.2 / #datetime.today().display("[day].[month].[year]")]
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
  #heading(outlined: false)[*Datenschutzrechtliche \ Hinweise*]
]

#v(1em)

Der swablab e. V. verarbeitet personenbezogene Daten seiner Mitglieder, sowie bei minderjährigen Mitgliedern auch personenbezogene Daten deren Sorgeberechtigter.

== Verantwortlicher
Verantwortlicher für die Datenverarbeitung ist der swablab e. V., vertreten durch den Vorstand: Manuel Knodel, Fabian Haas, den weiteren einzelvertretungsberechtigten Vorstandsmitgliedern, sowie den in der Verwaltung tätigen Mitgliedern. \
Vereinsanschrift: swablab e. V., Katharinenstr. 1, 72250 Freudenstadt; E-Mail: #link("info@swablab.de").

== Zweck der Verarbeitung personenbezogener Daten
- Mitgliederverwaltung und Mitgliederbetreuung
- Förderung der Ziele des Vereinszwecks
Rechtsgrundlage: Art. 6 Abs. 1 b\) DSGVO

== Nutzung der personenbezogenen Daten
Der Verein veröffentlicht Daten seiner Mitglieder unter anderem im Internet (auf seiner Homepage #link("https://swablab.de")[swablab.de]), auf Social Media sowie in Printmedien (wie den Schwarzwälder Boten). Insbesondere werden in obigen Medien auch Bilder von Vereinsveranstaltungen veröffentlicht. Das Mitglied willigt in diese Veröffentlichung ein, Art. 6 Abs. 1 a\) DSGVO. Diese Einwilligung kann jederzeit ohne Angabe von Gründen widerrufen werden. Der Widerruf ist an die Verantwortlichen (Ziff. 1) zu richten.

== Dauer der Speicherung
Nach dem Austritt werden Name, Adresse und Geburtsdatum aus der Mitgliederliste gelöscht. Personenbezogene Daten des austretenden Mitglieds, die die Kassenverwaltung betreffen, werden gemäß den steuerrechtlichen Bestimmungen bis zu 10 Jahre ab Austritt aufbewahrt.

== Auskunftsrecht
Jedes Vereinsmitglied hat das Recht auf
- Auskunft über die zu seiner Person gespeicherten Daten,
- Berichtigung der zu seiner Person gespeicherten Daten, wenn sie unrichtig sind,
- Sperrung der zu seiner Person gespeicherten Daten, wenn sich bei behaupteten Fehlern weder deren Richtigkeit noch deren Unrichtigkeit feststellen lässt,
- Löschung der zu seiner Person gespeicherten Daten, wenn die Speicherung unzulässig war.

== Verstöße
Das Mitglied hat das Recht, sich bei der Aufsichtsbehörde (Landesdatenschutzbeauftragter des Landes Baden-Württemberg) bei Verstößen des swablab e.V. gegen datenschutzrechtliche Bestimmungen bei der Verarbeitung seiner personenbezogenen Daten zu beschweren.

#v(1em)

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
