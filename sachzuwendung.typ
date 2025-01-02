#import "templates/tmpl_letter.typ": tmpl_letter
#import "templates/common.typ": colors
#import "templates/form.typ": form_field
#let config = yaml("sachzuwendung.yml")

#show: doc => tmpl_letter(
  title: "Sachzuwendung",
  address: config.address,
  info: [
    Datum: #config.date
  ],
  footer: [
    #text(size: 0.7em, fill: colors.subtext)[
      *Hinweis:* Wer vorsätzlich oder grob fahrlässig eine unrichtige Zuwendungsbestätigung erstellt oder veranlasst, dass Zuwendungen nicht zu den in der Zuwendungsbestätigung angegebenen steuerbegünstigten Zwecken verwendet werden, haftet für die entgangene Steuer (§ 10b Abs. 4 EStG, § 9 Abs. 3 KStG, § 9 Nr. 5 GewStG).

      Diese Bestätigung wird nicht als Nachweis für die steuerliche Berücksichtigung der Zuwendung anerkannt, wenn das Datum des Freistellungsbescheides länger als 5 Jahre bzw. *das Datum der Feststellung der Einhaltung der satzungsmäßigen Voraussetzungen nach § 60a Abs. 1 AO länger als 3 Jahre seit Ausstellung des Bescheides zurückliegt (§ 63 Abs. 5 AO).*
    ]
  ],
  doc,
)

*Bestätigung über Sachzuwendungen*

im Sinne des § 10b des Einkommensteuergesetzes an eine der in § 5 Abs. 1 Nr. 9 des
Körperschaftsteuergesetzes bezeichneten Körperschaften, Personenvereinigungen
oder Vermögensmassen.

#table(
  columns: (auto, 1fr, auto),
  fill: (_, row) => if row == 0 { colors.highlight } else { white },
  stroke: 0.1pt + colors.subtext,
  [*Gesamtbetrag der Zuwendung*],
  [*- in Buchstaben -*],
  [*Tag der Zuwendung*],
  [#config.amount EUR],
  [#config.amount_text EUR],
  [#config.date_of_donation],
  table.cell(colspan: 3)[#config.description]
)

#text(size: 0.9em)[
  #if config.origin == "commercial" [☑] else [☐] Die Sachzuwendung stammt nach den Angaben des Zuwendenden aus dem Betriebsvermögen. Die Zuwendung wurde nach dem Wert der Entnahme (ggf. mit dem niedrigeren gemeinen Wert) und nach der Umsatzsteuer, die auf die Entnahme entfällt, bewertet.\
  #if config.origin == "private" [☑] else [☐] Die Sachzuwendung stammt nach den Angaben des Zuwendenden aus dem Privatvermögen.\
  #if config.origin == "unknown" [☑] else [☐] Der Zuwendende hat trotz Aufforderung keine Angaben zur Herkunft der Sachzuwendung gemacht.\
  #if config.valuation_document_exists [☑] else [☐] Geeignete Unterlagen, die zur Wertermittlung gedient haben, z. B. Rechnung, Gutachten, liegen vor.\
  ☑ Die Einhaltung der satzungsmäßigen Voraussetzungen nach den §§ 51, 59, 60 und 61 AO wurde vom Finanzamt Freudenstadt, StNr. 42099/46775 mit Bescheid vom 17.12.2020 nach § 60a AO gesondert festgestellt. Wir fördern nach unserer Satzung
  Volksbildung.
]

#v(1em)

Es wird bestätigt, dass die Zuwendungen nur zur Förderung der Erziehung, Volks- und Berufsbildung
einschließlich der Studentenhilfe verwendet wird.

#form_field(width: 50%)[Freudenstadt, den #config.date]