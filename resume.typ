#import "fontawesome.typ": *

#let font = (
  main: "Arial",
  mono: "Arial",
  cjk: "STSong",
)

#let resume(
  size: 10pt,
  themeColor: rgb(38, 38, 125),
  top: 1.5cm,
  bottom: 2cm,
  left: 2cm,
  right: 2cm,
  photograph: "",
  photographWidth: 0em,
  gutterWidth: 0em,
  header,
  body
) = {
  set page(paper: "a4", numbering: "1", margin: (
    top: top,
    bottom: bottom,
    left: left,
    right: right,
  ))

  set text(font: (font.main, font.cjk), size: size, lang: "zh")

  show heading: set text(themeColor, 1.1em)

  show heading.where(level: 2): it => stack(
    v(0.3em),
    it,
    v(0.6em),
    line(length: 100%, stroke: 0.05em + themeColor),
    v(0.1em),
  )

  show list: it => stack(spacing: 0.4em, ..it.children.map(item => {
    grid(
      columns: (2em, 1fr),
      gutter: (0em),
      box({
        h(0.75em)
        fa-angle-right
      }),
      pad(top: 0.15em, item.body)
    )
  }))

  show link: set text(fill: themeColor)

  set par(justify: true)
  show par: set block(spacing: 0.65em)

  grid(
    columns: (auto, 1fr, photographWidth),
    gutter: (gutterWidth, 0em),
    header,
    if (photograph != "") {
      image(photograph, width: photographWidth)
    }
  )

  body
}

#let sidebar(side, content, withLine: true, sideWidth: 12%) = style(styles => {
  let sideSize = measure(side, styles)
  let contentSize = measure(content, styles)
  let height = calc.max(sideSize.height, contentSize.height) + 0.5em
  grid(
    columns: (sideWidth, 0%, 1fr),
    gutter: (0.75em),
    {
      set align(right)
      v(0.25em)
      side
      v(0.25em)
    },
    if (withLine) {line(end: (0em, height), stroke: 0.05em)},
    {
      v(0.25em)
      content
      v(0.25em)
    },
  )
})

#let info(
  color: black,
  ..infos
) = {
    set text(font: (font.mono, font.cjk), fill: color)
    infos.pos().map(dir => {
      box({
        if "icon" in dir {
          if (type(dir.icon) == "string") {
            icon(dir.icon)
          } else {
            dir.icon
          }
        }
        h(0.15em)
        if "link" in dir {
          link(dir.link, dir.content)
        } else {
          dir.content
        }
      })
    }).join(h(0.5em) + "·" + h(0.5em))
    v(0.5em)
}

#let date(body) = text(
  fill: rgb(128, 128, 128),
  size: 0.9em,
  body
)

#let tech(body) = block({
  set text(weight: "extralight")
  body
})

#let item(
  title,
  desc,
  endnote
) = {
  v(0.25em)
  grid(
    columns: (30%, 1fr, auto),
    gutter: (0em),
    title, desc, endnote
  )
}
