#import "templates/tmpl_page.typ": tmpl_page
#import "templates/form.typ": form, form_field, form_inline

#show: doc => tmpl_page(
  title: "Mitgliedsantrag",
  version: "v2.0",
  change_date: "16.10.2024",
  subtext: [
    Hiermit trete ich zum #form_inline(width: 10em), dem swablab e.V. als Mitglied bei und erkenne die Satzung, die Beitragsordnung und die Ziele des Vereins an.
  ],
  doc,
)

#text(10pt, style: "italic")[
  Bitte leserlich in Druckbuchstaben ausfüllen. Alle Felder sind Pflichtangaben.
]

#form(width: 65pt)[Name][
  #form_field[vorname]
][
  #form_field[nachname]
]

#form(width: 65pt)[Anschrift][
  #form_field[straße & hausnummer]
][
  #form_field[plz & ort]
]

#form(width: 65pt)[Kontakt][
  #form_field[email]
][
  #form_field[telefon]
]

#form(width: 65pt)[Geburtstag][
  #form_field[datum]
][]

#form(width: 65pt)[monatlicher\ Beitrag][
  #form_field(width: 2em)[voll (16€\*)]
][
  #form_field(width: 2em)[ermäßigt (8€\*)]
][
  #form_field(width: 2em)[familie (32€\*)]
][
  #form_field(width: 2em)[förder (2€\*)]
][
  #form_field[selbstgewählt]
]
#text(10pt, style: "italic")[
  \* Bitte eines der Felder ankreuzen. Es kann auch ein beliebig höherer Beitrag entrichtet werden.
]

#v(1em)

Mit meiner Unterschrift willige ich in die Speicherung und Verarbeitung der von mir angegebenen personenbezogenen Daten ein. Unsere vollständigen Datenschutzhinweise sind unter https://swablab.de/docs/datenschutz.pdf einsehbar.

#form(width: 65pt)[Unterschrift][
  #form_field[ort & datum]
][
  #form_field[unterschrift (bei minderjährigen der ges. vertr.)]
]

#v(1em)

== SEPA-Lastschriftmandat

Hiermit ermächtige ich den

#block(inset: (x: 3em))[
  #strong[swablab e.V.], Katharinenstr. 1, 72250 Freudenstadt, Deutschland \
  Gläubiger-ID: DE04ZZZ00002388328 \
  Mandatsreferenz: #form_inline(width: 6em) #text(10pt)[(wird vom Verein vergeben)]
]

den jeweils gültigen Vereinsbeitrag bei Fälligkeit zu Lasten meines Kontos mittels Lastschrift einzuziehen. Zugleich weise ich mein Kreditinstitut an, die vom swablab e.V. auf mein Konto gezogenen Lastschriften einzulösen.

#form(width: 70pt)[Kontoinhaber][
  #form_field[vorname]
][
  #form_field[nachname]
]

#form(width: 70pt)[IBAN][
  #form_field[iban]
]

#form(width: 70pt)[Institut & BIC][
  #form_field[institut]
][
  #form_field[bic]
]

#form(width: 70pt)[Unterschrift][
  #form_field[ort & datum]
][
  #form_field[unterschrift kontoinhaber\ 
  (bei minderjährigen der gesetzliche vertreter)]
]