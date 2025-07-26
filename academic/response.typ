#import "@preview/bamdone-rebuttal:0.1.1": *

// Configure text colors for points, responses, and new text
#let (point, response, new) = configure(point-color: black, response-color: black, new-color: rgb("#0000ff"))

// Redefine point to make content bold
#let original-point = point
#let point = content => original-point[*#content*]

// Setup the rebuttal
#show: rebuttal.with(
  authors: [First A. Author and Second B. Author],
  // date: ,
  // paper-size: ,
)

We thank the reviewers...
#lorem(60)
The revised manuscript is shown in #text(rgb("#0000ff"))[blue].

#reviewer()
*This reviewers' feedback was...*

#response[
  We thank the reviewer for their positive feedback.
  #lorem(20)
]

#point[
  There appears to be an error...
]<p1>

#response[
  #lorem(20).
  The revised text show follows:

  #new[#lorem(50)].
]

#point[
  #lorem(10).
]

#response[
  See response to @p1.
  Similar to the `i-figured` package, references to labeled `point`s must be prefixed by `pt-` as in `@pt-p1` which refers to the `point` labeled `<p1>`.
]

#reviewer()
*We generally agree with this reviewer...*

#response[
  We appreciate the reviewer's agreement.
  #lorem(20)
]

#point[
  Have you considered...
]

#response[
  We will address this in a future work...
]
