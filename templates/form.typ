#import "common.typ": colors

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