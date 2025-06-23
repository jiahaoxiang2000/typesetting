// slide-lib.typ - Touying-based library for Chinese presentations
#import "@preview/touying:0.6.1": *
#import themes.university: *
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
