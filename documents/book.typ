#import "@preview/theorion:0.3.2": *

// Document configuration
#let title = "Mathematical Notes"
#let author = "isomo"
#let date = datetime.today()

// Custom color scheme inspired by elegant academic style
#let primary-color = rgb("#20B2AA")  // Light sea green
#let secondary-color = rgb("#4682B4") // Steel blue
#let accent-color = rgb("#DC143C")    // Crimson
#let text-color = rgb("#2F4F4F")      // Dark slate gray

// Page setup with academic styling
#set page(
  paper: "a4",
  margin: (left: 2.5cm, right: 2.5cm, top: 3cm, bottom: 3cm),
  numbering: "1",
  number-align: center,
  header: context {
    if counter(page).get().first() > 1 {
      align(center, line(length: 100%, stroke: 0.5pt + gray))
      v(-0.75em)
      align(center, text(size: 10pt, fill: gray, title))
    }
  },
)

// Typography setup
#set text(
  font: "New Computer Modern",
  size: 11pt,
  fill: text-color,
  lang: "en",
)

#set par(
  justify: true,
  leading: 0.65em,
  spacing: 1.2em,
)

// Heading styles
#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  v(2em)
  block[
    #set align(center)
    #set text(size: 20pt, weight: "bold", fill: primary-color)
    #upper(it.body)
    #v(1em)
    #line(length: 60%, stroke: 2pt + primary-color)
  ]
  v(1.5em)
}

#show heading.where(level: 2): it => {
  v(1.5em)
  block[
    #set text(size: 16pt, weight: "bold", fill: secondary-color)
    #it.body
    #v(0.5em)
    #line(length: 100%, stroke: 1pt + secondary-color)
  ]
  v(1em)
}

#show heading.where(level: 3): it => {
  v(1em)
  block[
    #set text(size: 14pt, weight: "bold", fill: text-color)
    #it.body
  ]
  v(0.75em)
}

// Configure theorem environments with theorion
#show: show-theorion

// Math equation numbering
#set math.equation(numbering: "(1)")

// Bibliography setup (if references.bib exists)
#let bibliography-file = "../references.bib"

// Custom functions for colored text shortcuts
#let redt(content) = text(fill: rgb("#DC143C"), content)
#let bluet(content) = text(fill: rgb("#1E90FF"), content)
#let greent(content) = text(fill: rgb("#32CD32"), content)

// Title page
#align(center)[
  #v(2cm)
  #text(size: 24pt, weight: "bold", fill: primary-color)[
    #upper(title)
  ]
  #v(1cm)
  #text(size: 14pt, fill: secondary-color)[
    Mathematical Notes and Study Materials
  ]
  #v(2cm)
  #text(size: 12pt)[
    *Author:* #author \
    *Date:* #date.display("[month repr:long] [day], [year]")
  ]
  #v(1cm)
  #line(length: 50%, stroke: 1pt + primary-color)
]

#pagebreak()

// Table of contents
#outline(
  title: [Table of Contents],
  indent: auto,
)

#pagebreak()

// Preface
= Preface

These mathematical notes are designed for systematic study and reference. The content maintains a balance between rigor and accessibility, with numerous examples and detailed explanations to aid understanding.

The structure follows modern mathematical exposition with:
- Clear definitions and theorem statements
- Detailed proofs with step-by-step reasoning
- Illustrative examples after each major concept
- Cross-references and connections between topics

= Introduction

This document demonstrates the capabilities of the redesigned academic note template for Typst, inspired by professional mathematical texts.

== Key Features

This template provides several advanced features:

- *Theorem Environments*: Professional theorem, definition, lemma, proposition, corollary, example, and remark environments
- *Mathematical Typesetting*: Full LaTeX-quality mathematical notation with proper equation numbering
- *Cross-Referencing*: Automatic numbering and referencing of theorems, equations, and sections
- *Bibliography Support*: Integration with BibTeX files for academic citations
- *Professional Styling*: Elegant color scheme and typography following academic standards

#definition(title: "Set")[
  A *set* is a well-defined collection of distinct objects. The objects in a set are called *elements* or *members* of the set.
] <def:set>

#theorem(title: "Fundamental Theorem of Arithmetic")[
  Every integer greater than 1 is either prime or can be uniquely factored as a product of prime numbers (up to the order of factors).
] <thm:fundamental>

#proof[
  The proof follows by strong induction on the integer $n$.

  *Base case:* For $n = 2$, the statement holds since 2 is prime.

  *Inductive step:* Assume the statement holds for all integers $2 ≤ k < n$.

  If $n$ is prime, we're done. Otherwise, $n = a b$ where $1 < a, b < n$.

  By the inductive hypothesis, both $a$ and $b$ have unique prime factorizations, and thus so does $n = a b$.

  Uniqueness follows from the fact that primes have no non-trivial divisors.
]

#example(title: "Prime Factorization")[
  Consider $n = 60$:
  $60 = 2^2 × 3 × 5$

  This is the unique prime factorization of 60.
]

#remark[
  The uniqueness in @thm:fundamental is crucial for many applications in number theory and algebra.
]


== Mathematical Notation

The template supports full mathematical typesetting:

$
  integral_0^infinity e^(-x^2) dif x = pi^(1/2) / 2
$

$
  ∑_(n=1)^∞ 1/n^2 = π^2 / 6
$

Matrix notation:
$
  A = mat(
    a_(1 1), a_(1 2), dots, a_(1 n);
    a_(2 1), a_(2 2), dots, a_(2 n);
    dots.v, dots.v, dots.down, dots.v;
    a_(m 1), a_(m 2), dots, a_(m n)
  )
$

== Color Functions

The template includes convenient color functions:
- #redt("Red text") for emphasis
- #bluet("Blue text") for definitions
- #greent("Green text") for examples


// Bibliography (uncomment if references.bib exists)
// #bibliography(bibliography-file, style: "ieee")

