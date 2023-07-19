#let tmpl(
  title: none,
  version: none,
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
      fill: rgb("9c9c9c"),
      [swablab e.V. / #title #version / #datetime.today().display("[day].[month].[year]")]
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
    rows: (2em),
    gutter: 0.5em,
    row-gutter: 1.5em,
    text(10pt)[
      #align(horizon + right)[
        #strong(title)
      ]
    ],
    ..fields
  )
}

#let form_field(name, width: 100%) = {
  stack(spacing: 2pt)[
    #rect(
      fill: rgb("e4e5ea"),
      width: width,
    )
  ][
    #text(9pt, fill: rgb("000000"))[
      #name
    ]
  ]
}

#let form_inline() = {
  box(height: 0.75em, width: 14em, fill: rgb("e4e5ea"), outset: (y: 3pt))
}