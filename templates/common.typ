#let colors = (
  primary: oklch(93.84%, 0.09, 183.69deg),
  secondary: oklch(73.51%, 0.168, 40.25deg),
  subtext: oklch(60%, 0, 0deg),
  highlight: oklch(90%, 0, 0deg),
)


#let money(s) = {
  let d = decimal(s)
  d = calc.round(d, digits: 2)
  d += decimal("0.001")

  str(d).slice(0, -1) + "€"
}

#let common(title: none, doc) = {
  set document(
    title: title,
    author: "swablab e.V.",
  )

  set text(
    font: "Noto Sans",
    size: 11pt,
    lang: "de",
  )

  set par(justify: true)

  set page(
    paper: "a4",
    margin: (x: 2cm, y: 2cm),
  )

  show link: underline

  doc
}
