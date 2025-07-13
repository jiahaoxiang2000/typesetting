#import "@preview/basic-document-props:0.1.0": simple-page

// Chinese font configuration
// #set text(
//   font: (
//     "Noto Sans CJK SC", // Primary Chinese font
//     "Noto Serif CJK SC", // Alternative Chinese serif font
//     "Noto Sans", // Latin fallback
//   ),
//   lang: "zh",
//   region: "cn",
// )

// Document setup
#set document(title: "Academic Paper Review", author: "isomo", date: datetime.today())

// Page setup
#set page(
  numbering: "1",
  number-align: center,
)

// Heading styles
#show heading.where(level: 1): set text(size: 16pt, weight: "bold")
#show heading.where(level: 2): set text(size: 14pt, weight: "bold")
#show heading.where(level: 3): set text(size: 12pt, weight: "bold")

// Citation styling - make citations blue and clickable-looking
#show cite: set text(fill: blue)

// Table caption positioning - put captions above tables
#show figure.where(kind: table): it => [
  #it.caption
  #it.body
]

// Color shorthand functions
#let redt(content) = text(fill: red, content)
#let bluet(content) = text(fill: blue, content)
#let greent(content) = text(fill: green, content)
#let yellowt(content) = text(fill: yellow, content)
#let oranget(content) = text(fill: orange, content)
#let purplet(content) = text(fill: purple, content)
#let greyt(content) = text(fill: gray, content)
#let grayt(content) = text(fill: gray, content)

// Review scoring function
#let score-box(title, score, max-score: 10) = rect(
  width: 100%, 
  stroke: 1pt, 
  inset: 8pt, 
  fill: luma(250),
  [
    #text(weight: "bold")[#title: ] #text(fill: blue, weight: "bold")[#score/#max-score]
  ]
)

// Comment box function
#let comment-box(title, content) = rect(
  width: 100%, 
  stroke: 1pt, 
  inset: 10pt,
  [
    #text(weight: "bold", size: 11pt)[#title]
    #v(0.5em)
    #content
  ]
)

// Title page
#align(center)[
  #text(size: 18pt, weight: "bold")[
    Academic Paper Review Report
  ]
  #v(0.5em)
  #text(size: 12pt)[
    Review Date: #datetime.today().display("[year]-[month]-[day]")
  ]
]

#v(1em)

// Paper information section
#rect(width: 100%, stroke: 1pt, inset: 10pt, fill: luma(245), [
  #text(weight: "bold", size: 14pt)[Paper Information]
  
  #grid(
    columns: (auto, 1fr),
    gutter: 1em,
    [*Paper Title:*], [Paper title placeholder],
    [*Authors:*], [Author names placeholder],
    [*Journal/Conference:*], [Journal or conference name placeholder],
    [*Submission Date:*], [Submission date placeholder],
    [*Review ID:*], [Review ID placeholder],
  )
])

#v(1em)

// Overall assessment
#score-box("Overall Score", "7")

#v(1em)

= Review Summary

This paper #bluet[proposes new methods/theories in a specific field], #greent[demonstrating certain innovation and academic value]. The paper has a clear overall structure and reasonable experimental design, but there is still room for improvement in some aspects. #redt[I recommend that the authors revise and resubmit after addressing the concerns].

= Detailed Review

== Innovation and Contribution

#comment-box("Innovation Assessment", [
  The main innovations of this paper include:
  1. Proposing new algorithms/methods/theoretical frameworks
  2. Breakthroughs in experimental design
  3. Effective improvements to existing work
  
  #redt[Areas needing improvement:]
  - The distinction from existing work needs to be clearer
  - The depth of theoretical analysis needs strengthening
])

#score-box("Innovation Score", "8")

== Technical Quality

#comment-box("Technical Quality Assessment", [
  The technical quality of the paper is generally good:
  
  #greent[Strengths:]
  - Clear methodology description with rigorous logic
  - Reasonable experimental design with sufficient data
  - Objective and accurate result analysis
  
  #redt[Weaknesses:]
  - Some technical details need more detailed description
  - Baseline selection for comparative experiments could be more comprehensive
  - Algorithm complexity analysis needs supplementation
])

#score-box("Technical Quality Score", "7")

== Experimental Validation

#figure(
  table(
    columns: 4,
    stroke: 1pt,
    [*Experiment Type*], [*Dataset*], [*Evaluation Metrics*], [*Result Assessment*],
    [Baseline Comparison], [Dataset A], [Accuracy/F1 Score], [Superior to baseline],
    [Ablation Study], [Dataset B], [Performance Gain], [Validated key components],
    [Generalization Test], [Dataset C], [Robustness], [Good performance],
  ),
  caption: [Experimental Validation Summary],
  kind: table,
) <tab:experiments>

#comment-box("Experimental Assessment", [
  The experimental design is overall reasonable and covers major validation scenarios. As shown in @tab:experiments, the authors conducted sufficient comparative experiments and ablation studies.
  
  #greent[Experimental Strengths:]
  - Representative dataset selection
  - Appropriate and comprehensive evaluation metrics
  - Adequate statistical significance testing
  
  #oranget[Suggested Improvements:]
  - Add more real-world scenario test cases
  - Supplement analysis of computational efficiency and resource consumption
])

#score-box("Experimental Validation Score", "6")

== Paper Writing

#comment-box("Writing Quality Assessment", [
  The overall writing quality of the paper is good, with clear structure and fluent expression.
  
  #greent[Writing Strengths:]
  - Clear logical structure with distinct levels
  - Standard figure/table formatting with rich information
  - Complete and relevant references
  
  #yellowt[Areas for Improvement:]
  - Definitions of some technical terms need to be more precise
  - Logical connections between some paragraphs could be better
  - English abstract expression needs improvement
])

#score-box("Writing Quality Score", "7")

= Specific Revision Suggestions

== Major Issues

1. #redt[Critical Issue 1]: In Section 3.2, the algorithm's time complexity analysis is insufficient; theoretical analysis should be supplemented @smith2024machine
2. #redt[Critical Issue 2]: The experimental section lacks analysis of failure cases; an error analysis section should be added
3. #oranget[Important Issue]: The related work section has insufficient citations of recent research; work published after 2023 should be supplemented

== Minor Issues

1. The axis labels in Figure 2 are not clear enough; improvement is suggested
2. Data precision in Table 1 is inconsistent; decimal places should be standardized
3. Reference formatting needs uniform adjustment

== Technical Suggestions

#comment-box("Algorithm Improvement Suggestions", [
  1. Consider introducing adaptive parameter adjustment mechanisms in the algorithm
  2. Add strategies for handling edge cases
  3. Supplement theoretical proof of algorithm convergence
])

= Review Conclusion

#rect(
  width: 100%,
  stroke: 2pt,
  inset: 12pt,
  fill: luma(240),
  [
    #text(weight: "bold", size: 14pt)[Final Recommendation:]

    #text(size: 12pt)[
      This paper has certain academic value and innovation in its field, but there are some issues that need improvement. #bluet[I recommend that the authors carefully revise according to the review comments and resubmit]. Expected revision time: #redt[4-6 weeks].

      #v(0.5em)

      Key revision points:
      1. Improve theoretical analysis, especially complexity proofs
      2. Supplement experimental validation, add failure case analysis
      3. Improve paper writing and enhance expression quality
    ]
  ],
)

#v(1em)

#align(right)[
  #text(size: 11pt)[
    Reviewer: isomo \
    Review Date: #datetime.today().display("[year]-[month]-[day]")
  ]
]

// Bibliography section
#bibliography("../references.bib", style: "apa")
