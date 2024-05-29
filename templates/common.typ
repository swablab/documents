#let colors = (
  primary: oklch(93.84%, 0.09, 183.69deg),
  secondary: oklch(73.51%, 0.168, 40.25deg),
  subtext: oklch(60%, 0, 0deg),
  highlight: oklch(90%, 0, 0deg),
)

#let money(i) = {
  if i == 0 {
    return "0.00€"
  }

  let j = str(calc.round(i * 100))

  if i < 1 {
    "0." + j.slice(-2) + "€"
  } else {
    j.slice(0,-2)+ "." + j.slice(-2) + "€"
  }
}

#let common(title: none, doc) = {
  set document(
    title: title,
    author: "swablab e.V."
  )

  set text(
    font: "Noto Sans",
    size: 11pt,
    lang: "de"
  )

  set par(
    justify: true
  )

  set page(
    paper: "a4",
    margin: (x: 2cm, y: 2cm),
  )
  doc
}