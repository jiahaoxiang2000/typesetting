#import "@preview/basic-document-props:0.1.0": simple-page
#show: simple-page.with(
  "isomo",
  "",
  middle-text: "Simple report",
  date: true,
  numbering: true,
  supress-mail-link: false,
)

#set heading(numbering: "1.1")

= Titel
#lorem(200)

== Subtitel

#lorem(100)
