#import "@preview/basic-document-props:0.1.0": simple-page
#show: simple-page.with(
  "isomo",
  "",
  middle-text: "Simple report",
  date: true,
  numbering: true,
  supress-mail-link: false,
)

// Chinese font configuration
// #set text(
//   font: (
//     "Noto Serif CJK SC", // Primary Chinese serif font for main content
//   ),
//   lang: "zh",
//   region: "cn",
// )
// #show heading: set text(font: "Noto Sans CJK SC")

#set heading(numbering: "1.1")

= Titel
#lorem(200)

== Subtitel

#lorem(100)
