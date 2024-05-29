#import "common.typ": common, colors

#let tmpl_page(
  title: none,
  version: none,
  change_date: none,
  doc,
) = {
  show: doc => common(title: title, doc)

  set page(
    footer: [
      #text(size: 10pt, fill: colors.subtext)[#version]
      #h(2fr)
      #text(size: 10pt, fill: colors.subtext)[#change_date]
    ],
  )

  // Logo
  place(
    top + right,
    dx: 2.5em,
    dy: -2.5em,
    image("lightmode-swablab.png", width: 25%)
  )

  block(width: 100%-70pt, height: 70pt)[
    #par(justify: false)[
      #text(font: "Ubuntu", 18pt)[
        #heading(outlined: false)[*#title*]
      ]
    ]
  ]

  doc
}