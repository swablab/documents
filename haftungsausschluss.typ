#import "templates/tmpl_page.typ": tmpl_page
#import "templates/form.typ": form, form_field, form_inline

#show: doc => tmpl_page(
  title: "Haftungsausschluss",
  version: "v1.0",
  change_date: "23.06.2023",
  doc,
)

#v(-1em)

#block(width: 32em)[
  #text(10pt, style: "italic")[
    Bitte leserlich in Druckbuchstaben ausfüllen. Alle Felder sind Pflichtangaben.
  ]
]

#form[Name][
  #form_field[vorname]
][
  #form_field[nachname]
]

#form[Anschrift][
  #form_field[straße & hausnummer]
][
  #form_field[plz & ort]
]

#form[Kontakt][
  #form_field[email]
][
  #form_field[telefon]
]

#form[Geburtstag][
  #form_field[datum]
][]

== Datenschutzrechtliche Einwilligungserklärung nach DSGVO

Mit meiner Unterschrift willige ich (und ggf. mein Kind, s.u.) in die Speicherung und Verarbeitung der von mir angegebenen personenbezogenen Daten ein. Diese sind für die Nutzerverwaltung erforderlich. Unsere vollständige Datenschutzerklärung ist unter #link("https://swablab.de/docs/datenschutz")[swablab.de/docs/datenschutz] einsehbar.

== Allgemeinen Geschäftsbedingungen (AGB)
Mit meiner Unterschrift akzeptiere ich (und ggf. mein Kind, s.u.) die Allgemeinen Geschäftsbedingungen (AGB). Einsehbar unter #link("https://swablab.de/docs/werkstatt-agb")[swablab.de/docs/werkstatt-agb] und als Aushang im swablab.

== Werkstattregeln
Ich bestätige, dass ich (und ggf. mein Kind, s.u.) die Werkstattregeln zur Kenntnis genommen habe und diese befolgen werde. Eine Ersteinweisung in die Werkstatt habe ich erhalten.

#form[Unterschrift][
  #form_field[ort & datum]
][
  #form_field[unterschrift (bei minderjährigen der ges. vertr.)]
]

#v(1em)
#block(stroke: 1pt + black,inset: 0.5em)[
  == Regelung für Minderjährige

  Mit meiner Unterschrift bestätige ich, #form_inline(), dass mein Kind #form_inline(), die Werkstatt des swablab e.V. eigenständig und auf eigene bzw. meine Verantwortung und mit meinem Einverständnis nutzen darf. Welche Werkräume und Gerätschaften mein Kind benutzen darf, kläre ich vorab mit meinem Kind. Für die Einhaltung dieser Vereinbarung bin ausschließlich ich in Absprache mit meinem Kind verantwortlich. Die Werkstattbetreiber können und werden nicht die Aufsicht und Kontrolle dieser Vorgaben übernehmen.
]