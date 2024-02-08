#import "templates/form.typ": tmpl, form, form_field, form_inline

#show: doc => tmpl(
  title: "Beitrittserklärung",
  version: "v1.6",
  change_date: "09.09.2023",
  doc,
)

#v(-4em)

#block(width: 32em)[
  Hiermit trete ich zum #form_inline(width: 10em), dem swablab e.V. als Mitglied bei und erkenne die Satzung, die Beitragsordnung und die Ziele des Vereins an.
]

#text(10pt, style: "italic")[
  Bitte leserlich in Druckbuchstaben ausfüllen. Alle Felder sind Pflichtangaben.
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

#form[monatlicher\ Beitrag][
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

#form[Unterschrift][
  #form_field[ort & datum]
][
  #form_field[unterschrift (bei minderjährigen der ges. vertr.)]
]

#text(10pt, style: "italic")[
  \* Bitte eines der Felder ankreuzen. Es kann auch ein beliebig höherer Beitrag entrichtet werden.
]

=== SEPA-Lastschriftmandat
Hiermit ermächtige ich den

#block(inset: (x: 3em))[
  #strong[swablab e.V.], Katharinenstr. 1, 72250 Freudenstadt, Deutschland \
  Gläubiger-ID: DE04ZZZ00002388328 \
  Mandatsreferenz: #form_inline(width: 6em) #text(10pt)[(wird vom Verein vergeben)]
]

den jeweils gültigen Vereinsbeitrag bei Fälligkeit zu Lasten meines Kontos mittels Lastschrift einzuziehen. Zugleich weise ich mein Kreditinstitut an, die vom swablab e.V. auf mein Konto gezogenen Lastschriften einzulösen.

#text(10pt, style: "italic")[
  Hinweis: Ich kann innerhalb von acht Wochen, beginnend mit dem Belastungsdatum, die Erstattung des belasteten Betrages verlangen. Es gelten dabei die mit meinem Kreditinstitut vereinbarten Bedingungen.
]

#form[Kontoinhaber][
  #form_field[vorname]
][
  #form_field[nachname]
]

#form[IBAN][
  #form_field[iban]
]

#form[Institut\ & BIC][
  #form_field[institut]
][
  #form_field[bic]
]

#form[Unterschrift][
  #form_field[ort & datum]
][
  #form_field[unterschrift kontoinhaber\ 
  (bei minderjährigen der gesetzliche vertreter)]
]