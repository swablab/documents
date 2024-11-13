#import "tmpl_page.typ": tmpl_page
#import "common.typ": colors

#let tmpl_letter(
  title: none,
  address: none,
  info: none,
  footer: none,
  doc,
) = {
  show: doc => tmpl_page(
    title: title,
    version: "",
    change_date: "",
    doc,
  )

  // DIN 5008 Sichtfenster: 45mm
  place(
    top+left,
    dx: 7mm,
    dy: 25mm,
  )[
    #text(size: 0.75em)[
      #underline[swablab e.V. - Katharinenstr. 1 - 72250 Freudenstadt]
    ]

    #address
  ]

  // DIN 5008 Faltmarke 1: 87mm
  place(
    top+left,
    dy: 67mm,
    dx: -1cm,
    line(
      length: -1em, 
      stroke: 0.5pt + colors.subtext
    )
  )
  // DIN 5008 Faltmarke 2: 192mm
  place(
    top+left,
    dy: 172mm,
    dx: -1cm,
    line(
      length: -1em, 
      stroke: 0.5pt + colors.subtext
    )
  )

  // DIN 5008 Informationsblock: 50mm
  place(
    top+right,
    dy: 30mm,
  )[
    #v(1em)
    #info
  ]

  // DIN 5008 nach Faltmarke 1
  place(
    top+left,
    dy: 67mm,
    doc
  )

  // Footer
  place(bottom+left)[
    #footer
    
    #text(size: 0.7em, fill: colors.subtext)[
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
          Manuel Knodel
        ],
      )
    ]
  ]
}