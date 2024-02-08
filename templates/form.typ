#let colors = (
  primary: oklch(93.84%, 0.09, 183.69deg),
  secondary: oklch(73.51%, 0.168, 40.25deg),
  subtext: oklch(60%, 0, 0deg),
  highlight: oklch(90%, 0, 0deg),
)

#let tmpl(
  title: none,
  version: none,
  change_date: none,
  heading_size: 18pt,
  heading_font: "Ubuntu",
  text_size: 12pt,
  text_font: "Noto Sans",
  doc,
) = {
set document(
  title: title,
  author: "swablab e.V."
)

set text(
  font: text_font,
  size: text_size,
  lang: "de"
)

set par(
  justify: true
)

set page(
  paper: "a4",
  margin: (x: 2cm, y: 2cm),
)

// Version
place(
  top + left,
  dx: -2em,
  dy: -0.5em,
  
  rotate(
    90deg,
    origin: bottom + left,
    text(
      size: 10pt,
      fill: colors.subtext,
      [swablab e.V. / #title #version / #change_date]
    )
  )
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
    #text(font: heading_font, heading_size)[
      #heading(outlined: false)[*#title*]
    ]
  ]
]

doc
}

#let form(title, ..fields) = {
  grid(
    columns: (60pt, ..fields.pos().map(i => 1fr)),
    rows: (2.25em),
    gutter: 0.5em,
    text(10pt)[
      #align(top + right)[
        #v(0.5em)
        #strong(title)
      ]
    ],
    ..fields
  )
}

#let form_field(name, width: 100%) = {
  stack(spacing: 2pt)[
    #rect(
      fill: colors.highlight,
      width: width,
      height: 2em,
    )
  ][
    #text(9pt, fill: black)[
      #name
    ]
  ]
}

#let form_inline(width: 12em) = {
  box(height: 0.75em, width: width, fill: colors.highlight, outset: (y: 3pt))
}