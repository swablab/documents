#import "templates/doc.typ": tmpl

#show: doc => tmpl(
  title: "Satzung",
  changes: (
    [v1.0], [19.10.2020], [erste Fassung],
  ),
  doc,
)

#let title_group(title) = {
  show heading: it => [
    #set text(font: "Ubuntu", 24pt)
    #strong[#it.body]
    #v(1.25em, weak: true)
  ]
  heading(title, numbering: none)
}

#title_group("Allgemeines")
= Name, Sitz, Eintragung, Geschäftsjahr
+ Der Verein führt den Namen swablab und soll in das Vereinsregister eingetragen werden. Nach der Eintragung führt er den Namen swablab e.V.
+ Der Verein hat seinen Sitz in Freudenstadt. Geschäftsjahr des Vereins ist das Kalenderjahr.

= Zweck
Der Verein ist demokratisch, parteipolitisch neutral, überkonfessionell und unabhängig. Er ist zur Zusammenarbeit mit allen Organisationen befugt, wenn dies dem Vereinszweck dient und sein Bestehen sowie seine Neutralität nicht gefährdet. Der Zweck des Vereins ist:

#block[
  #set enum(numbering: "1.", indent: 2em)
  + Die Förderung der Volksbildung, welche durch Bildungs- und Fortbildungsmaßnahmen sowie durch interdisziplinären Wissensaustausch durchgeführt wird
  + Die Bewahrung und Entfaltung handwerklicher, kultureller und sozialer Fähigkeiten
  + Die Förderung einer umwelt- und sozialverträglichen Lebens- und Wirtschaftsweise
]

Diese Satzungszwecke werden verwirklicht durch:

#block[
  #set enum(numbering: "1.", indent: 2em)
  + Die Einrichtung einer offenen Werkstatt für die Mitglieder und jeden ernstlich Interessierten, als Ort zum Erfahrungsaustausch, Experimentieren und anwendungsorientierten Erlernen von Fertigkeiten
  + Das Durchführen von Vorträgen, Workshops, Diskussions- und Informationsveranstaltungen
  + Öffentlichkeitsarbeit in allen Medien
]

#pagebreak()
= Gemeinnützigkeit
+ Der Verein verfolgt ausschließlich und unmittelbar gemeinnützige Zwecke im Sinn des Abschnitts"Steuerbegünstigte Zwecke\" der Abgabenordnung in der jeweils gültigen Fassung.\
+ Der Verein ist selbstlos tätig; er verfolgt nicht in erster Linie eigenwirtschaftliche Zwecke.\
+ Alle Vereinsämter werden ehrenamtlich ausgeübt.

= Mittel des Vereins
+ Mittel des Vereins dürfen nur für die satzungsgemäßen Zwecke verwendet werden. Die Mitglieder erhalten keine Zuwendungen aus Mitteln des Vereins. Es darf keine Person durch Ausgaben, die dem Zweck des Vereins fremd sind, oder durch unverhältnismäßig hohe Vergütungen begünstigt werden.
+ Der Verein erhebt einen Beitrag. Das Nähere regelt eine Beitragsordnung, die von der Mitgliederversammlung beschlossen wird.
+ Bei Erwerbsminderung kann ein verminderter Beitragssatz gemäß Beitragsordnung festgesetzt werden. Hierüber entscheidet der Vorstand.

#pagebreak()
#title_group("Mitgliedschaft")
= Eintritt und Austritt der Mitglieder
+ Ordentliche Mitglieder können natürliche Personen über 18 Jahren werden. Außerdem können juristische Personen, Handelsgesellschaften, nicht rechtsfähige Vereine sowie Anstalten und Körperschaften des öffentlichen Rechts ordentliche Mitglieder werden.
+ Natürliche Personen können ab dem 12. Lebensjahr jugendliche Mitglieder werden. Hierfür ist die Zustimmung eines gesetzlichen Vertreters notwendig. Jugendliche Mitglieder sind zur Teilnahme an den Mitgliederversammlungen ohne Antrags- und Stimmrecht berechtigt. Mit erreichen des 18. Lebensjahres werden jugendliche Mitglieder zu ordentlichen Mitgliedern.
+ Die Beitrittserklärung erfolgt schriftlich oder per E-Mail gegenüber dem Vorstand.
+ Über die Annahme der Beitrittserklärung entscheidet der Vorstand. Die Mitgliedschaft beginnt mit der Annahme der Beitrittserklärung.
+ Die Mitgliedschaft endet durch Austrittserklärung, durch Tod von natürlichen Personen oder durch Auflösung und Erlöschen von juristischen Personen, Handelsgesellschaften, nicht rechtsfähigen Vereinen sowie Anstalten und Körperschaften des öffentlichen Rechts oder durch Ausschluss; die Beitragspflicht für den laufenden Monat bleibt hiervon unberührt.
+ Der Austritt wird durch schriftliche Willenserklärung mit einer Frist von mindestens einem Monat zum Monatsende gegenüber dem Vorstand vollzogen.
+ Die Mitgliederversammlung kann solche Personen, die sich besondere Verdienste um den Verein oder um die von ihm verfolgten satzungsgemäßen Zwecke erworben haben, zu Ehrenmitgliedern ernennen. Ehrenmitglieder haben alle Rechte eines ordentlichen Mitglieds. Sie sind von Beitragsleistungen befreit.
+ Fördermitglieder unterstützen den Verein ideell und finanziell. Die Fördermitgliedschaft wird vom Vorstand auf Antrag vergeben. Die fördernde Mitgliedschaft berechtigt zur Teilnahme an den Mitgliederversammlungen ohne Antrags- und Stimmrecht. Fördermitglieder entrichten einen Mitgliedsbeitrag, näheres ist in der Beitragsordnung geregelt.
+ Ein Mitglied kann durch Beschluss des Vorstandes ausgeschlossen werden, wenn es das Ansehen des Vereins schädigt, seinen Beitragsverpflichtungen nachhaltig nicht nachkommt oder wenn ein sonstiger wichtiger Grund vorliegt. Der Vorstand muss dem auszuschließenden Mitglied den Beschluss in schriftlicher Form unter Angabe von Gründen mitteilen und ihm auf Verlangen eine Anhörung gewähren.
+ Gegen den Beschluss des Vorstandes ist innerhalb einer Frist von zwei Monaten nach Zugang des Ausschließungsbeschlusses die Anrufung der Mitgliederversammlung zulässig. Bis zum Beschluss der Mitgliederversammlung ruht die Mitgliedschaft. Die Mitgliederversammlung entscheidet endgültig über den Ausschluss.

= Rechte und Pflichten der Mitglieder
+ Die Mitglieder sind berechtigt, die Leistungen des Vereins in Anspruch zu nehmen.
+ Die Mitglieder sind verpflichtet, die satzungsgemäßen Zwecke des Vereins zu unterstützen und zu fördern. Sie sind verpflichtet, die festgesetzten Beiträge zu zahlen.

#pagebreak()
#title_group("Verein")
= Organe des Vereins

Die Organe des Vereins sind:

#block[
  #set enum(numbering: "1.", indent: 2em)
  + Vorstand
  + Mitgliederversammlung
]

= Der Vorstand
+ Der Vorstand besteht aus mindestens zwei und höchstens fünf Personen.
+ Jedes Vorstandsmitglied ist einzelvertretungsberechtigt im Sinne von § 26 BGB bei Rechtsgeschäften bis zu einem Höchstbetrag von 500 EURO.
+ Bei Rechtsgeschäften über 500 EURO ist die Vertretung durch zwei Vorstandsmitglieder erforderlich.
+ Über die interne Aufgabenverteilung entscheidet der Vorstand und gibt diese der Mitgliederversammlung bekannt.
+ Der Vorstand wird von der Mitgliederversammlung auf die Dauer von zwei Jahren, vom Tage der Wahl an gerechnet, gewählt. Die jeweils amtierenden Vorstandsmitglieder bleiben nach Ablauf ihrer Amtszeit solange im Amt, bis ihre Nachfolger gewählt sind und ihr Amt antreten können. Jedes Vorstandsmitglied ist einzeln zu wählen. Wählbar sind nur ordentliche Vereinsmitglieder. Fällt mit dem Ausscheiden eines Vorstandsmitgliedes die Anzahl der Vorstandsmitglieder unter zwei Personen, so ist unverzüglich eine außerordentliche Mitgliederversammlung einzuberufen, bei der mindestens ein neues Vorstandsmitglied gewählt werden muss.
+ Der Vorstand fasst seine Beschlüsse im Allgemeinen in Vorstandssitzungen. Vorstandssitzungen werden schriftlich oder per E-Mail einberufen und finden mindestens quartalsmässig statt. In jedem Fall ist die Einberufungsfrist von einer Woche einzuhalten. Der Mitteilung einer Tagesordnung bedarf es nicht. Der Vorstand ist beschlussfähig, wenn mindestens zwei Vorstandsmitglieder anwesend sind. Bei der Beschlussfassung entscheidet die Mehrheit der abgegebenen gültigen Stimmen. Bei Stimmengleichheit gilt der Antrag als abgelehnt. Die Beschlüsse des Vorstandes sind zu Beweiszwecken schriftlich festzuhalten. Die Niederschrift soll Ort und Zeit der Vorstandssitzung, die Namen der Teilnehmer, die gefassten Beschlüsse und die Abstimmungsergebnisse enthalten. Ein Vorstandsbeschluss kann auf schriftlichem Wege gefasst werden, wenn alle Vorstandsmitglieder ihre Zustimmung zu der zu beschließenden Regelung erklären. Die Vereinigung mehrerer Vorstandsämter auf eine Person ist unzulässig.

= Die Mitgliederversammlung
+ Ordentliche Mitglieder haben in der Mitgliederversammlung ein volles Stimmrecht.
+ Oberstes Beschlussorgan ist die Mitgliederversammlung. Ihrer Beschlussfassung unterliegen alle in dieser Satzung oder Gesetz vorgesehenen Gegenstände, insbesondere

#block[
  #set enum(numbering: "1.", indent: 2em)
  + die Genehmigung des Finanzberichtes,
  +  die Entlastung des Vorstandes,
  +  die Wahl und die Abberufung der Vorstandsmitglieder,
  +  die Bestellung von Finanzprüfern, die nicht dem Vorstand angehören dürfen, jedoch nicht zwingend Mitglieder des Vereins sein müssen,
  +  Satzungsänderungen,
  +  die Genehmigung der Beitragsordnung,
  +  die Genehmigung des Haushaltsplanes,
  +  die Richtlinie über die Erstattung von Reisekosten und Auslagen,
  +  Beschlüsse über Anträge des Vorstandes und der Mitglieder,
  + die Ernennung von Ehrenmitgliedern,
  + Ausschluss von Mitgliedern,
  + die Auflösung des Vereins und die Beschlussfassung über die eventuelle Fortsetzung des aufgelösten Vereins.
]

+ Die ordentliche Mitgliederversammlung findet einmal im Jahr statt. Außerordentliche Mitgliederversammlungen werden auf Beschluss des Vorstandes abgehalten, wenn die Interessen des Vereins dies erfordern, oder wenn mindestens 10\% der Mitglieder dies unter Angabe des Zwecks und der Gründe schriftlich beantragen. Der Vorstand hat dann innerhalb einer Frist von sechs Wochen die Mitgliederversammlung durchzuführen.
+ Die Einberufung der Mitgliederversammlung erfolgt schriftlich oder per E-Mail durch ein Vorstandsmitglied mit einer Frist von mindestens einer Woche. Hierbei sind die Tagesordnung bekannt zu geben und die nötigen Informationen zugänglich zu machen. Anträge zur Tagesordnung sind mindestens 2 Tage vor der Mitgliederversammlung beim Vorstand einzureichen. Über die Behandlung von Initiativanträgen entscheidet die Mitgliederversammlung.
+ Jede satzungsmäßig einberufene Mitgliederversammlung ist beschlussfähig, wenn 25\% aller Mitglieder anwesend sind. Besteht für eine einberufene Mitgliederversammlung Beschlussunfähigkeit, ist der Vorstand berechtigt, eine zweite Versammlung mit der gleichen Tagesordnung einzuberufen, die ohne Rücksicht auf die Zahl der anwesenden Mitglieder beschlussfähig ist.
+ Beschlüsse über Satzungsänderungen und über die Auflösung des Vereins können nur in einer Mitgliederversammlung gefasst werden, in der diese Tagesordnungspunkte mindestens zwei Wochen vor der Mitgliederversammlung ausdrücklich angekündigt worden sind. Solche Beschlüsse bedürfen zu ihrer Rechtswirksamkeit der Dreiviertelmehrheit der anwesenden Mitglieder.
+ Vorbehaltlich Absatz 6 bedürfen die Beschlüsse einer Mitgliederversammlung der einfachen Mehrheit der Stimmen der anwesenden Mitglieder.
+ Jedes Mitglied hat eine Stimme. Juristische Personen haben einen Stimmberechtigten schriftlich zu bestellen.
+ Jedes ordentliche Mitglied kann sich durch ein anderes, anwesendes ordentliches Mitglied vertreten lassen. Jedes anwesende ordentliche Mitglied kann, zusätzlich zu seiner eigenen Stimme, die Stimme maximal eines weiteren ordentlichen Mitglieds in Vertretung übernehmen. Die Vollmacht bedarf der Schriftform und muss dem Versammlungsleiter übergeben werden. Eine Einschränkung der Vollmacht durch den Bevollmächtigenden ist nicht möglich.
+ Die Mitgliederversammlung wird von einem vom Vorstand bestimmten Versammlungsleiter geleitet.
+ Auf Antrag eines Mitglieds ist geheim abzustimmen. Über die Beschlüsse der Mitgliederversammlung ist ein Protokoll anzufertigen, das vom Versammlungsleiter und dem Schriftführer zu unterzeichnen ist. Das Protokoll ist allen Mitgliedern zugänglich zu machen.

#pagebreak()
= Auflösung des Vereins und Anfallberechtigung
+ Die Auflösung des Vereins kann nur in einer Mitgliederversammlung mit der festgelegten Stimmenmehrheit beschlossen werden.
+ Die Mitgliederversammlung bestimmt mindestens zwei gemeinsam vertretungsberechtigte Liquidatoren. Diese Vorschriften gelten entsprechend für den Fall, dass der Verein aus einem anderen Grund aufgelöst wird oder seine Rechtsfähigkeit verliert.
+ Bei Auflösung des Vereins oder bei Wegfall steuerbegünstigter Zwecke fällt das Vermögen des Vereins an Lebenshilfe Horb-Sulz e.V. mit Sitz in Horb am Neckar welche es unmittelbar und ausschließlich für gemeinnützige oder mildtätige Zwecke zu verwenden hat. Sollte diese Stiftung bei Auflösung des Vereins nicht oder nicht mehr gemeinnützig sein, fällt das Vereinsvermögen an eine andere von der Mitgliederversammlung zu bestimmende steuerbegünstigte Körperschaft, die das Vermögen zur Förderung des Wohlfahrtswesens zu verwenden hat.

= Haftung des Vereins
+ Die Haftung des Vereins aus jeder rechtsgeschäftlichen Tätigkeit seiner Organe und seiner Vertreter ist in allen Fällen auf das vorhandene Vermögen des Vereins beschränkt. Eine darüberhinausgehende persönliche Haftung der einzelnen Mitglieder oder Organe ist ausgeschlossen.

#pagebreak()
#title_group("Gründungsmitglieder")
#block[
  #set enum(numbering: it => "")
  + Christoph Haag (Unterschrift): #box(width: 1fr, repeat("_"))
  + Dominik Ruoff (Unterschrift): #box(width: 1fr, repeat("_"))
  + Fabian Haas (Unterschrift): #box(width: 1fr, repeat("_"))
  + Joel Schmid (Unterschrift): #box(width: 1fr, repeat("_"))
  + Johannes Gaiser (Unterschrift): #box(width: 1fr, repeat("_"))
  + Lukas Burkhardt (Unterschrift): #box(width: 1fr, repeat("_"))
  + Manuel Knodel (Unterschrift): #box(width: 1fr, repeat("_"))
  + Simon Schmid (Unterschrift): #box(width: 1fr, repeat("_"))
]
