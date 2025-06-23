// slide-lib.typ - Touying-based library for Chinese presentations
#import "@preview/touying:0.6.1": *
#import "@preview/cetz:0.3.2"
#import "@preview/fletcher:0.5.4" as fletcher: edge, node
#import "@preview/numbly:0.1.0": numbly
#import "@preview/theorion:0.3.2": *
#import cosmos.clouds: *
#show: show-theorion

// cetz and fletcher bindings for touying
#let cetz-canvas = touying-reducer.with(reduce: cetz.canvas, cover: cetz.draw.hide.with(bounds: true))
#let fletcher-diagram = touying-reducer.with(reduce: fletcher.diagram, cover: fletcher.hide)

// Color definitions for Chinese presentations
#let bookpaper = rgb(255, 255, 255)
#let tocheading = rgb(70, 30, 0)
#let tocsection = rgb(120, 60, 10)
#let tocsubsection = rgb(140, 80, 20)
#let activetextcolor = rgb(0, 0, 0)
#let dimmedtextcolor = rgb(150, 150, 150)

// Color shorthand functions
#let red-text(content) = text(fill: red, content)
#let blue-text(content) = text(fill: blue, content)
#let green-text(content) = text(fill: green, content)
#let yellow-text(content) = text(fill: yellow, content)
#let orange-text(content) = text(fill: orange, content)
#let purple-text(content) = text(fill: purple, content)
#let grey-text(content) = text(fill: gray, content)
#let gray-text(content) = text(fill: gray, content)

// Custom block environments for Chinese presentations
#let note-block(title: "注意", body) = {
  block(
    width: 100%,
    fill: blue.lighten(90%),
    stroke: 2pt + blue,
    radius: 5pt,
    inset: 0.5em,
  )[
    #text(weight: "bold", fill: blue.darken(20%), title) \
    #body
  ]
}

#let alert-block(title: "警告", body) = {
  block(
    width: 100%,
    fill: red.lighten(90%),
    stroke: 2pt + red,
    radius: 5pt,
    inset: 0.5em,
  )[
    #text(weight: "bold", fill: red.darken(20%), title) \
    #body
  ]
}

#let example-block(title: "示例", body) = {
  block(
    width: 100%,
    fill: green.lighten(90%),
    stroke: 2pt + green,
    radius: 5pt,
    inset: 0.5em,
  )[
    #text(weight: "bold", fill: green.darken(20%), title) \
    #body
  ]
}

// Math utilities
#let equation-block(body) = {
  align(center)[
    #block(
      fill: gray.lighten(95%),
      stroke: 0.5pt + gray,
      radius: 3pt,
      inset: 1em,
      body,
    )
  ]
}

// Citation utilities
#let cite-style(key) = {
  text(fill: blue, "[" + key + "]")
}
// University theme

/// - bodies (arguments): is the contents of the slide. You can call the `slide` function with syntax like `#slide[A][B][C]` to create a slide.
#let slide(
  config: (:),
  repeat: auto,
  setting: body => body,
  composer: auto,
  align: auto,
  ..bodies,
) = touying-slide-wrapper(self => {
  if align != auto {
    self.store.align = align
  }
  let header(self) = {
    set std.align(top)
    grid(
      rows: (auto, auto),
      row-gutter: 3mm,
      if self.store.progress-bar {
        components.progress-bar(height: 2pt, self.colors.primary, self.colors.tertiary)
      },
      block(inset: (x: .5em), components.left-and-right(
        text(fill: self.colors.primary, weight: "bold", size: 1.2em, utils.call-or-display(self, self.store.header)),
        text(fill: self.colors.primary.lighten(65%), ""),
      )),
    )
  }
  let footer(self) = {
    set std.align(right + bottom)
    show: pad.with(.4em)
    set text(fill: self.colors.neutral-darkest, size: .8em)
    // utils.call-or-display(self, self.store.footer-a)
    h(1fr)
    context utils.slide-counter.display() + " / " + utils.last-slide-number
  }
  let self = utils.merge-dicts(self, config-page(
    header: header,
    footer: footer,
  ))
  let new-setting = body => {
    show: std.align.with(self.store.align)
    show: setting
    body
  }
  touying-slide(self: self, config: config, repeat: repeat, setting: new-setting, composer: composer, ..bodies)
})


/// Title slide for the presentation. You should update the information in the `config-info` function. You can also pass the information directly to the `title-slide` function.
///
/// Example:
///
/// ```typst
/// #show: university-theme.with(
///   config-info(
///     title: [Title],
///     logo: emoji.school,
///   ),
/// )
///
/// #title-slide(subtitle: [Subtitle])
/// ```
///
/// - config (dictionary): is the configuration of the slide. Use `config-xxx` to set individual configurations for the slide. To apply multiple configurations, use `utils.merge-dicts` to combine them.
///
/// - extra (string, none): is the extra information for the slide. This can be passed to the `title-slide` function to display additional information on the title slide.
#let title-slide(
  config: (:),
  extra: none,
  ..args,
) = touying-slide-wrapper(self => {
  self = utils.merge-dicts(self, config, config-common(freeze-slide-counter: true))
  let info = self.info + args.named()
  info.authors = {
    let authors = if "authors" in info {
      info.authors
    } else {
      info.author
    }
    if type(authors) == array {
      authors
    } else {
      (authors,)
    }
  }
  let body = {
    if info.logo != none {
      place(right, text(fill: self.colors.primary, info.logo))
    }
    std.align(center + horizon, {
      block(inset: 0em, breakable: false, {
        text(size: 2em, fill: self.colors.primary, strong(info.title))
        if info.subtitle != none {
          parbreak()
          text(size: 1.2em, fill: self.colors.primary, info.subtitle)
        }
      })
      set text(size: .8em)
      grid(
        columns: (1fr,) * calc.min(info.authors.len(), 3),
        column-gutter: 1em,
        row-gutter: 1em,
        ..info.authors.map(author => text(fill: self.colors.neutral-darkest, author))
      )
      v(1em)
      if info.institution != none {
        parbreak()
        text(size: .9em, info.institution)
      }
      if info.date != none {
        parbreak()
        text(size: .8em, utils.display-info-date(self))
      }
    })
  }
  touying-slide(self: self, body)
})


/// New section slide for the presentation. You can update it by updating the `new-section-slide-fn` argument for `config-common` function.
///
/// Example: `config-common(new-section-slide-fn: new-section-slide.with(numbered: false))`
///
/// - config (dictionary): is the configuration of the slide. Use `config-xxx` to set individual configurations for the slide. To apply multiple configurations, use `utils.merge-dicts` to combine them.
///
/// - level (int, none): is the level of the heading.
///
/// - numbered (boolean): is whether the heading is numbered.
///
/// - body (auto): is the body of the section. This will be passed automatically by Touying.
#let new-section-slide(config: (:), level: 1, numbered: true, body) = touying-slide-wrapper(self => {
  let slide-body = {
    set std.align(horizon)
    show: pad.with(20%)
    set text(size: 1.5em, fill: self.colors.primary, weight: "bold")
    stack(dir: ttb, spacing: .65em, utils.display-current-heading(level: level, numbered: numbered), block(
      height: 2pt,
      width: 100%,
      spacing: 0pt,
      components.progress-bar(height: 2pt, self.colors.primary, self.colors.primary-light),
    ))
    body
  }
  touying-slide(self: self, config: config, slide-body)
})


/// Focus on some content.
///
/// Example: `#focus-slide[Wake up!]`
///
/// - config (dictionary): is the configuration of the slide. Use `config-xxx` to set individual configurations for the slide. To apply multiple configurations, use `utils.merge-dicts` to combine them.
///
/// - background-color (color, none): is the background color of the slide. Default is the primary color.
///
/// - background-img (string, none): is the background image of the slide. Default is none.
#let focus-slide(config: (:), background-color: none, background-img: none, body) = touying-slide-wrapper(self => {
  let background-color = if background-img == none and background-color == none {
    rgb(self.colors.primary)
  } else {
    background-color
  }
  let args = (:)
  if background-color != none {
    args.fill = background-color
  }
  if background-img != none {
    args.background = {
      set image(fit: "stretch", width: 100%, height: 100%)
      background-img
    }
  }
  self = utils.merge-dicts(self, config-common(freeze-slide-counter: true), config-page(margin: 1em, ..args))
  set text(fill: self.colors.neutral-lightest, weight: "bold", size: 2em)
  touying-slide(self: self, std.align(horizon, body))
})


// Create a slide where the provided content blocks are displayed in a grid and coloured in a checkerboard pattern without further decoration. You can configure the grid using the rows and `columns` keyword arguments (both default to none). It is determined in the following way:
///
/// - If `columns` is an integer, create that many columns of width `1fr`.
/// - If `columns` is `none`, create as many columns of width `1fr` as there are content blocks.
/// - Otherwise assume that `columns` is an array of widths already, use that.
/// - If `rows` is an integer, create that many rows of height `1fr`.
/// - If `rows` is `none`, create that many rows of height `1fr` as are needed given the number of co/ -ntent blocks and columns.
/// - Otherwise assume that `rows` is an array of heights already, use that.
/// - Check that there are enough rows and columns to fit in all the content blocks.
///
/// That means that `#matrix-slide[...][...]` stacks horizontally and `#matrix-slide(columns: 1)[...][...]` stacks vertically.
///
/// - config (dictionary): is the configuration of the slide. Use `config-xxx` to set individual configurations for the slide. To apply multiple configurations, use `utils.merge-dicts` to combine them.
#let matrix-slide(config: (:), columns: none, rows: none, ..bodies) = touying-slide-wrapper(self => {
  self = utils.merge-dicts(self, config-common(freeze-slide-counter: true), config-page(margin: 0em))
  touying-slide(
    self: self,
    config: config,
    composer: components.checkerboard.with(columns: columns, rows: rows),
    ..bodies,
  )
})


/// Touying university theme.
///
/// Example:
///
/// ```typst
/// #show: university-theme.with(aspect-ratio: "16-9", config-colors(primary: blue))`
/// ```
///
/// The default colors:
///
/// ```typ
/// config-colors(
///   primary: rgb("#04364A"),
///   secondary: rgb("#176B87"),
///   tertiary: rgb("#448C95"),
///   neutral-lightest: rgb("#ffffff"),
///   neutral-darkest: rgb("#000000"),
/// )
/// ```
///
/// - aspect-ratio (string): is the aspect ratio of the slides. Default is `16-9`.
///
/// - align (alignment): is the alignment of the slides. Default is `top`.
///
/// - progress-bar (boolean): is whether to show the progress bar. Default is `true`.
///
/// - header (content, function): is the header of the slides. Default is `utils.display-current-heading(level: 2)`.
///
/// - header-right (content, function): is the right part of the header. Default is `self.info.logo`.
///
/// - footer-columns (tuple): is the columns of the footer. Default is `(25%, 1fr, 25%)`.
///
/// - footer-a (content, function): is the left part of the footer. Default is `self.info.author`.
///
/// - footer-b (content, function): is the middle part of the footer. Default is `self.info.short-title` or `self.info.title`.
///
/// - footer-c (content, function): is the right part of the footer. Default is `self => h(1fr) + utils.display-info-date(self) + h(1fr) + context utils.slide-counter.display() + " / " + utils.last-slide-number + h(1fr)`.
#let university-theme(
  aspect-ratio: "16-9",
  align: top,
  progress-bar: true,
  header: utils.display-current-heading(level: 2, style: auto),
  header-right: self => box(utils.display-current-heading(level: 1)) + h(.3em) + self.info.logo,
  footer-columns: (25%, 1fr, 25%),
  footer-a: self => self.info.author,
  footer-b: self => if self.info.short-title == auto {
    self.info.title
  } else {
    self.info.short-title
  },
  footer-c: self => {
    h(1fr)
    utils.display-info-date(self)
    h(1fr)
    context utils.slide-counter.display() + " / " + utils.last-slide-number
    h(1fr)
  },
  ..args,
  body,
) = {
  show: touying-slides.with(
    config-page(paper: "presentation-" + aspect-ratio, header-ascent: 0em, footer-descent: 0em, margin: (
      top: 2em,
      bottom: 1.25em,
      x: 2em,
    )),
    config-common(
      slide-fn: slide,
      new-section-slide-fn: new-section-slide,
    ),
    config-methods(
      init: (self: none, body) => {
        set text(size: 25pt)
        show heading.where(level: 3): set text(fill: self.colors.primary)
        show heading.where(level: 4): set text(fill: self.colors.primary)

        body
      },
      alert: utils.alert-with-primary-color,
    ),
    config-colors(
      primary: rgb("#04364A"),
      secondary: rgb("#176B87"),
      tertiary: rgb("#448C95"),
      neutral-lightest: rgb("#ffffff"),
      neutral-darkest: rgb("#000000"),
    ),
    // save the variables for later use
    config-store(
      align: align,
      progress-bar: progress-bar,
      header: header,
      header-right: header-right,
      footer-columns: footer-columns,
      footer-a: footer-a,
      footer-b: footer-b,
      footer-c: footer-c,
    ),
    ..args,
  )

  body
}
