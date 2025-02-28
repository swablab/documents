#import "templates/tmpl_page.typ": tmpl_page
#import "templates/common.typ": colors
#import "templates/form.typ": form_field
#let config = yaml("spendenbescheinigung.yml")

#show: doc => tmpl_page(
  title: "Spendenbescheinigung",
  doc,
)

// DIN 5008 Sichtfenster: 45mm
#place(
  top+left,
  dy: 25mm,
)[
  #text(size: 0.75em)[#underline[swablab e.V. - Katharinenstr. 1 - 72250 Freudenstadt]] \
  #v(0.5em)
  #config.address
]

// DIN 5008 Informationsblock: 50mm
#place(
  top+right,
  dy: 30mm,
)[
  #v(1em)
  Datum: #config.date
]

// DIN 5008 Faltmarke 1: 105mm
#place(
  top+left,
  dy: 85mm,
  dx: -1cm,
  line(
    length: -1em, 
    stroke: 0.5pt + colors.subtext
  )
)
// DIN 5008 Faltmarke 2: 210mm
#place(
  top+left,
  dy: 190mm,
  dx: -1cm,
  line(
    length: -1em, 
    stroke: 0.5pt + colors.subtext
  )
)

#place(
  top+left,
  dy: 67mm,
)[
  #if config.collection != none {
    [Sammelbestätigung über Geldzuwendungen/Mitgliedsbeiträge]
  } else {
    [Bestätigung über Geldzuwendungen/Mitgliedsbeitrag]
  }
   im Sinne des § 10b des Einkommensteuergesetzes an eine der in § 5 Abs. 1 Nr. 9 des Körperschaftsteuergesetzes bezeichneten Körperschaften, Personenvereinigungen oder Vermögensmassen.
]

// DIN 5008 nach Faltmarke 1
#place(
  top+left,
  dy: 85mm,
)[
  #table(
    columns: (auto, 1fr, auto),
    fill: (_, row) => if row == 0 { colors.highlight } else { white },
    stroke: 0.1pt + colors.subtext,
    [*Gesamtbetrag der Zuwendung*],
    [*- in Buchstaben -*],
    [*Tag der Zuwendung*],
    [#config.amount EUR],
    [#config.amount_text EUR],
    [#config.date_of_donation]
  )

  #text(size: 10pt)[
    #if config.collection != none {[
      Ob es sich um den Verzicht auf Erstattung von Aufwendungen handelt, ist der Anlage zur Sammelbestätigung zu entnehmen. 
    ]} else {
      if config.release_expenditures {
      [Es handelt sich um den Verzicht auf Erstattung von Aufwendungen: #h(5em) ☑ Ja #h(5em) ☐ Nein]
      } else {
      [Es handelt sich um den Verzicht auf Erstattung von Aufwendungen: #h(5em) ☐ Ja #h(5em) ☑ Nein]
      }
    }

    ☑ Wir sind wegen Förderung _von Organisationen der Bildung, Wissenschaft und Forschung_ nach dem Freistellungsbescheid bzw. nach der Anlage zum Körperschaftsteuerbescheid des Finanzamtes _Finanzamt Freudenstadt_ StNr. _42099/46775_, vom _21.12.2020_ für den letzten Veranlagungszeitraum _2023_ nach § 5 Abs. 1 Nr. 9 des Körperschaftsteuergesetzes von der Körperschaftsteuer und nach § 3 Nr. 6 des Gewerbesteuergesetzes von der Gewerbesteuer befreit.

    ☑ Die Einhaltung der satzungsmäßigen Voraussetzungen nach den §§ 51, 59, 60 und 61 AO wurde vom Finanzamt _Finanzamt Freudenstadt_, StNr. _42099/46775_ mit Bescheid vom _21.12.2020_ nach § 60a AO gesondert festgestellt. 
    Wir fördern nach unserer Satzung _von Organisationen der Bildung, Wissenschaft und Forschung_.

    #box(stroke: black, inset: 0.5em)[
      Es wird bestätigt, dass die Zuwendung nur zur Förderung _von Organisationen der Bildung, Wissenschaft und Forschung_ verwendet wird.

      *Nur für steuerbegünstigte Einrichtungen, bei denen die Mitgliedsbeiträge steuerlich nicht abziehbar sind:* \
      ☑ Es wird bestätigt, dass es sich nicht um einen Mitgliedsbeitrag handelt, dessen Abzug nach § 10b Abs. 1 des Einkommensteuergesetzes ausgeschlossen ist.
    ]

  ]
]

// Footer
#place(bottom+left)[
  #form_field(width: 50%)[Freudenstadt, den #config.date]

  #text(size: 0.7em, fill: colors.subtext)[
    *Hinweis:* Wer vorsätzlich oder grob fahrlässig eine unrichtige Zuwendungsbestätigung erstellt oder veranlasst, dass Zuwendungen nicht zu den in der Zuwendungsbestätigung angegebenen steuerbegünstigten Zwecken verwendet werden, haftet für die entgangene Steuer (§ 10b Abs. 4 EStG, § 9 Abs. 3 KStG, § 9 Nr. 5 GewStG).

    Diese Bestätigung wird nicht als Nachweis für die steuerliche Berücksichtigung der Zuwendung anerkannt, wenn das Datum des Freistellungsbescheides länger als 5 Jahre bzw. *das Datum der Feststellung der Einhaltung der satzungsmäßigen Voraussetzungen nach § 60a Abs. 1 AO länger als 3 Jahre seit Ausstellung des Bescheides zurückliegt (§ 63 Abs. 5 AO).*

    #table(
    stroke: none,
    align: top+left,
    columns: (1fr,1fr,auto,1fr,1fr),
      [*Telefon*],[*E-Mail / Web*],[*Bankverbindung*],[*Vereinsregister*],[*Vorstand*],
      [
        +49 15679232971
      ],
      [
        info\@swablab.de \
        https://swablab.de
      ],
      [
        Volksbank in der Region \
        DE18 6039 1310 0125 6340 05
      ],
      [
        VR 724909 \
        Amtsgericht Stuttgart
      ],
      [
        Fabian Haas \
        Manuel Knodel \
        Bastian Wittke
      ],
  )
  ]
]

#if config.collection != none {[
  #pagebreak()

  #heading[*Anlage zur Sammelbestätigung*]

  #v(1em)

  Es wird bestätigt, dass über die in der Gesamtsumme enthaltenen Zuwendungen keine weiteren Bestätigungen, weder formelle Zuwendungsbestätigungen noch Beitragsquittungen oder Ähnliches ausgestellt wurden und werden.

  #table(
    columns: (auto, 1fr, auto, auto),
    fill: (_, row) => if row == 0 { colors.highlight } else { white },
    stroke: 0.1pt + colors.subtext,
    [*Datum der Zuwendung*],
    [*Art der Zuwendung*],
    [*Verzicht auf die\ Erstattung von\ Aufwendungen*],
    [*Betrag*],
    ..config.collection.map(e => (
      e.date,
      e.type,
      if e.release_expenditures {"Ja"} else {"Nein"},
      [#e.amount EUR],
    )).flatten().map(e => [#e]),
  )
]}