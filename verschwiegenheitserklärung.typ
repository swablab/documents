#import "templates/tmpl_page.typ": tmpl_page
#import "templates/form.typ": form, form_field, form_inline

#show: doc => tmpl_page(
  title: "Verschwiegenheitserklärung",
  version: "v1.0",
  change_date: "23.03.2026",
  subtext: [],
  doc,
)

Sehr geehrte(r) Frau/Herr #form_inline(width: 10em)

da Sie im Rahmen Ihrer Tätigkeit möglicherweise mit personenbezogenen Daten in Kontakt kommen,
verpflichten wir Sie hiermit zur Beachtung des Datenschutzes, insbesondere
zur Wahrung der Vertraulichkeit.

Ihre Verpflichtung besteht umfassend. Sie dürfen personenbezogene Daten selbst nicht
ohne Befugnis verarbeiten und Sie dürfen anderen Personen diese Daten nicht unbefugt
mitteilen oder zugänglich machen. Sie sind insbesondere verpflichtet, die datenschutzrechtlichen
Vorgaben und Weisungen im Verein/Verband zu beachten.

Unter einer Verarbeitung versteht die EU-Datenschutz-Grundverordnung (DSGVO) jeden
mit oder ohne Hilfe automatisierter Verfahren ausgeführten Vorgang oder jede solche Vorgangsreihe
im Zusammenhang mit personenbezogenen Daten wie das Erheben, das Erfassen, die Organisation, das Ordnen,
die Speicherung, die Anpassung oder Veränderung, das Auslesen, das Abfragen, die Verwendung,
die Offenlegung durch Übermittlung, Verbreitung oder eine andere Form der Bereitstellung,
den Abgleich oder die Verknüpfung, die Einschränkung, das Löschen oder die Vernichtung.

"Personenbezogene Daten" im Sinne der DSGVO sind alle Informationen, die sich auf einen identifizierten
oder identifizierbaren Menschen beziehen; als identifizierbar wird ein Mensch angesehen, der direkt oder indirekt,
insbesondere mittels Zuordnung zu einer Kennung wie einem Namen, zu einer Kennnummer, zu Standortdaten,
zu einer Online-Kennung oder zu einem oder mehreren besonderen Merkmalen identifiziert werden kann, die Ausdruck
seiner physischen, physiologischen, genetischen, psychischen, wirtschaftlichen, kulturellen oder sozialen Identität sind.

Unter Geltung der DSGVO können Verstöße gegen Datenschutzbestimmungen nach § 42 BDSG (Bundesdatenschutzgesetz) sowie
nach anderen Strafvorschriften mit Freiheitsoder Geldstrafe geahndet werden. Datenschutzverstöße können zugleich eine Verletzung
arbeits- oder dienstrechtlicher Pflichten bedeuten und entsprechende Konsequenzen haben.
Datenschutzverstöße sind ebenfalls mit möglicherweise sehr hohen Bußgeldern für den
Verein/Verband bedroht, die gegebenenfalls zu Ersatzansprüchen Ihnen gegenüber führen können.

= Verpflichtung zur Wahrung von Geschäftsgeheimnissen

Über Angelegenheiten des Vereins/des Verbandes, die beispielsweise Einzelheiten des
Vereins/Verbandes betreffen, sowie über Geschäftsvorgänge und Zahlen des internen
Rechnungswesens und alle als Geschäftsgeheimnisse zu definierenden Vorgänge nach §
2 Nr. 1 Gesetz zum Schutz von Geschäftsgeheimnissen (GeschGehG), ist – auch nach
Beendigung des Beschäftigungsverhältnisses – von Ihnen Verschwiegenheit zu wahren,
sofern sie nicht öffentlich bekannt geworden sind. Hierunter fallen auch Vorgänge von
Drittunternehmen, mit denen Sie dienstlich befasst sind. Alle dienstlichen Tätigkeiten
betreffenden Aufzeichnungen, Abschriften, Geschäftsunterlagen, Ablichtungen, dienstlicher
oder geschäftlicher Vorgänge, die Ihnen überlassen oder von Ihnen angefertigt werden,
sind vor Einsichtnahme Unbefugter zu schützen. Von diesen Verpflichtungen haben Sie
Kenntnis genommen. Sie sind sich bewusst, dass Sie sich bei Verletzungen strafbar machen können,
insbesondere nach § 23 GeschGehG.

= Hinweise für Berufsgeheimnisträger

Im Rahmen Ihrer Tätigkeiten kommen Sie möglicherweise auch mit „Privatgeheimnissen“ in Kontakt.
Dies sind Informationen, die uns im Rahmen unserer Vereinstätigkeit anvertraut werden und an deren
Geheimhaltung der Betroffene ein sachliches Interesse hat.
Regelmäßig fällt bereits das bestehende Mandatsverhältnis hierunter.

Unabhängig von der vorgenannten datenschutzrechtlichen Verpflichtung haben Sie über
diese Informationen strikte Verschwiegenheit zu wahren. Dies gilt auch, sofern Sie Zeuge
in Zivil-, Strafoder Verwaltungsprozessen sind. Verstöße gegen diese Verschwiegenheitspflicht sind nach § 203 StGB strafbar.

Ihre Verpflichtung besteht ohne zeitliche Begrenzung und auch nach Beendigung Ihrer
Tätigkeit fort.

#v(1em)

#form(width: 75pt)[Vorstand][
  #form_field[ort & datum]
][
  #form_field[unterschrift]
]

#v(1em)

Über die Verpflichtung auf das Datengeheimnis und die sich daraus ergebenden Verhaltensweisen wurde ich unterrichtet.

#v(1em)

#form(width: 75pt)[Verpflichtete/r][
  #form_field[ort & datum]
][
  #form_field[unterschrift]
]
