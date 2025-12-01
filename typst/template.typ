// 3lectrify DIN A4 Whitepaper Template
// Print-optimized: Light background, dark text
// CI Colors for accents only

// Color Definitions (from 3lectrify CI)
#let deep-blue = rgb("#293645")
#let dark-blue = rgb("#3C5067")
#let middle-green = rgb("#88C0B1")
#let light-green = rgb("#C5E0D7")
#let orange = rgb("#D04227")
#let light-grey = rgb("#C2C2C2")
#let dark-grey = rgb("#333333")

// Document Setup
#let whitepaper(
  title: "Whitepaper",
  subtitle: none,
  author: "3lectrify",
  date: datetime.today().display("[day].[month].[year]"),
  body,
) = {
  // Page setup (DIN A4)
  set page(
    paper: "a4",
    margin: (
      top: 3cm,
      bottom: 2.5cm,
      left: 2.5cm,
      right: 2.5cm,
    ),
    header: context {
      if counter(page).get().first() > 1 [
        #set text(size: 9pt, fill: light-grey)
        #author #h(1fr) #title
        #line(length: 100%, stroke: 0.5pt + light-grey)
      ]
    },
    footer: context {
      set text(size: 9pt, fill: light-grey)
      line(length: 100%, stroke: 0.5pt + light-grey)
      v(0.3cm)
      [#author #h(1fr) Seite #counter(page).display()]
    },
  )

  // Typography
  set text(
    font: "Lato",
    size: 11pt,
    fill: dark-grey,
    lang: "de",
  )

  // Headings
  set heading(numbering: none)

  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    v(1cm)
    text(size: 24pt, weight: "bold", fill: deep-blue, it.body)
    v(0.5cm)
  }

  show heading.where(level: 2): it => {
    v(0.8cm)
    text(size: 16pt, weight: "bold", fill: deep-blue, it.body)
    v(0.3cm)
  }

  show heading.where(level: 3): it => {
    v(0.5cm)
    text(size: 12pt, weight: "bold", fill: dark-blue, it.body)
    v(0.2cm)
  }

  // Paragraphs
  set par(
    justify: true,
    leading: 0.7em,
  )

  // Lists
  set list(marker: text(fill: middle-green)[•])
  set enum(numbering: n => text(fill: middle-green, weight: "bold")[#n.])

  // Tables
  set table(
    stroke: (x, y) => (
      left: none,
      right: none,
      top: if y == 0 { 1pt + deep-blue } else { 0.5pt + light-grey },
      bottom: 0.5pt + light-grey,
    ),
    fill: (x, y) => if y == 0 { light-green.lighten(70%) } else { none },
  )

  // Links
  show link: it => text(fill: dark-blue, underline(it))

  // Blockquotes
  show quote: it => {
    block(
      width: 100%,
      inset: (left: 1em, y: 0.5em),
      stroke: (left: 3pt + middle-green),
      fill: light-green.lighten(80%),
      text(style: "italic", it.body)
    )
  }

  // Title Page
  {
    set page(header: none, footer: none)

    v(2cm)

    // Logo
    image("3lectrify-logo.svg", width: 40%)

    v(2cm)

    text(size: 32pt, weight: "bold", fill: deep-blue, title)

    if subtitle != none {
      v(0.5cm)
      text(size: 18pt, fill: dark-blue, subtitle)
    }

    v(2cm)

    line(length: 5cm, stroke: 2pt + middle-green)

    v(1cm)

    text(size: 11pt, fill: dark-grey)[
      Ein Ratgeber von #author \
      #date
    ]

    v(1fr)

    block(
      width: 100%,
      fill: light-green.lighten(80%),
      inset: 1.5em,
      radius: 4pt,
    )[
      #text(size: 10pt, fill: dark-grey)[
        *HEATSCOPE* – einfach. schön. warm. \
        Infrarotheizungen Made in Germany mit 30 Jahre Garantie.
      ]
    ]

    pagebreak()
  }

  // Body
  body
}

// Custom Components

// Fact Box
#let fact-box(title: none, body) = {
  block(
    width: 100%,
    fill: light-green.lighten(70%),
    inset: 1em,
    radius: 4pt,
    stroke: 1pt + middle-green,
  )[
    #if title != none {
      text(weight: "bold", fill: deep-blue, title)
      linebreak()
    }
    #body
  ]
}

// Key Fact
#let key-fact(value, label, source: none) = {
  block(
    width: 100%,
    inset: (y: 0.5em),
  )[
    #text(size: 24pt, weight: "bold", fill: middle-green, value)
    #h(0.5em)
    #text(size: 11pt, label)
    #if source != none {
      linebreak()
      text(size: 9pt, fill: light-grey)[Quelle: #source]
    }
  ]
}

// Comparison Table
#let comparison(pros: (), cons: ()) = {
  grid(
    columns: (1fr, 1fr),
    gutter: 1em,
    [
      #text(weight: "bold", fill: middle-green)[Vorteile]
      #for pro in pros {
        [#text(fill: middle-green)[✓] #pro \ ]
      }
    ],
    [
      #text(weight: "bold", fill: orange)[Nachteile]
      #for con in cons {
        [#text(fill: orange)[✗] #con \ ]
      }
    ]
  )
}

// Source Citation
#let source(body) = {
  text(size: 9pt, style: "italic", fill: light-grey)[Quelle: #body]
}

// CTA Box
#let cta-box(title: "Erleben Sie es selbst", body) = {
  block(
    width: 100%,
    fill: deep-blue,
    inset: 1.5em,
    radius: 4pt,
  )[
    #text(size: 14pt, weight: "bold", fill: white, title)
    #v(0.5em)
    #text(fill: white, body)
  ]
}
