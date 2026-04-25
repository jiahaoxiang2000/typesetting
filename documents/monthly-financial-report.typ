// Monthly project financial report template

#let company = "isomoes"
#let project = "Project Name"
#let report-month = "April 2026"
#let prepared-by = "Finance Team"
#let currency = "USD"

#let primary-color = rgb("#1F4E79")
#let accent-color = rgb("#70AD47")
#let warning-color = rgb("#C00000")
#let light-fill = rgb("#F3F7FA")
#let border-color = rgb("#D9E2EC")

#let money(amount) = currency + " " + str(amount)
#let variance(actual, budget) = actual - budget
#let variance-text(actual, budget) = {
  let value = variance(actual, budget)
  if value < 0 {
    text(fill: accent-color, money(value))
  } else if value > 0 {
    text(fill: warning-color, "+" + money(value))
  } else {
    money(0)
  }
}

#let section-card(title, body) = block(
  width: 100%,
  inset: 12pt,
  stroke: 0.8pt + border-color,
  radius: 4pt,
  fill: light-fill,
)[
  #text(weight: "bold", fill: primary-color, size: 12pt)[#title]
  #v(0.6em)
  #body
]

#set document(
  title: project + " Monthly Financial Report",
  author: prepared-by,
  date: datetime.today(),
)

#set page(
  paper: "a4",
  margin: (left: 2.2cm, right: 2.2cm, top: 2.4cm, bottom: 2.4cm),
  numbering: "1",
  number-align: center,
  header: context {
    if counter(page).get().first() > 1 {
      align(right, text(size: 9pt, fill: gray)[#project · #report-month])
      line(length: 100%, stroke: 0.5pt + border-color)
    }
  },
  footer: context {
    line(length: 100%, stroke: 0.5pt + border-color)
    align(center, text(size: 8.5pt, fill: gray)[Copyright © #datetime.today().display("[year]") #company. All rights reserved.])
  },
)

#set text(font: "New Computer Modern", size: 10.5pt, lang: "en")
#set par(justify: true, leading: 0.6em)
#set heading(numbering: "1.1")

// Chinese font configuration
// #set text(
//   font: (
//     "Source Han Serif", // Primary Chinese serif font for main content
//   ),
//   lang: "zh",
//   region: "cn",
// )
// #show heading: set text(font: "Source Han Sans")


#show heading.where(level: 1): it => {
  v(1.2em)
  text(size: 16pt, weight: "bold", fill: primary-color, it.body)
  v(0.2em)
  line(length: 100%, stroke: 1.2pt + primary-color)
  v(0.8em)
}

#show heading.where(level: 2): it => {
  v(1em)
  text(size: 13pt, weight: "bold", fill: primary-color, it.body)
  v(0.4em)
}

#show table: it => align(center, it)

#align(center)[
  #v(0.6cm)
  #text(size: 24pt, weight: "bold", fill: primary-color)[Monthly Project Financial Report]
  #v(0.4cm)
  #text(size: 16pt, fill: accent-color)[#project]
  #v(0.6cm)
  #text(size: 12pt)[Reporting Period: #report-month]
  #v(1cm)
  #line(length: 55%, stroke: 1pt + primary-color)
  #v(0.8cm)
  #text(size: 11pt)[Generated #datetime.today().display("[month repr:long] [day], [year]")]
]

#pagebreak()

= Executive Summary

#grid(
  columns: (1fr, 1fr, 1fr),
  gutter: 0.8em,
  section-card("Monthly Budget", [#text(size: 18pt, weight: "bold")[#money(50000)]\ Approved baseline]),
  section-card("Actual Spend", [#text(size: 18pt, weight: "bold")[#money(47200)]\ Posted expenses]),
  section-card("Remaining", [#text(size: 18pt, weight: "bold", fill: accent-color)[#money(2800)]\ Available this month]),
)

#v(1em)

This report summarizes project financial performance for #report-month, including budget utilization, spending variance, funding risks, and recommended actions for the next reporting cycle. 

== Key Messages

- Total actual spend is below the approved monthly budget by #variance-text(47200, 50000).
- Contractor and cloud infrastructure costs remain the largest cost drivers.
- No critical funding gaps are expected next month if planned procurement is deferred by one reporting cycle.

= Budget Performance

#figure(
  table(
    columns: (2.4fr, 1.2fr, 1.2fr, 1.2fr, 1.6fr),
    inset: 7pt,
    align: (left, right, right, right, left),
    stroke: 0.6pt + border-color,
    fill: (x, y) => if y == 0 { primary-color } else if calc.odd(y) { light-fill } else { white },
    text(fill: white, weight: "bold")[Category],
    text(fill: white, weight: "bold")[Budget],
    text(fill: white, weight: "bold")[Actual],
    text(fill: white, weight: "bold")[Variance],
    text(fill: white, weight: "bold")[Status],
    [Personnel], [#money(26000)], [#money(25500)], [#variance-text(25500, 26000)], [On track],
    [Contractors], [#money(9000)], [#money(10200)], [#variance-text(10200, 9000)], [Review scope],
    [Cloud and Tools], [#money(8000)], [#money(7600)], [#variance-text(7600, 8000)], [On track],
    [Travel], [#money(3000)], [#money(1200)], [#variance-text(1200, 3000)], [Deferred],
    [Procurement], [#money(4000)], [#money(2700)], [#variance-text(2700, 4000)], [Pending invoice],
    [*Total*], [*#money(50000)*], [*#money(47200)*], [*#variance-text(47200, 50000)*], [*Within budget*],
  ),
  caption: [Monthly budget versus actual spend],
  kind: table,
)

== Cost Drivers

1. *Personnel*: stable salary allocation with no material variance.
2. *Contractors*: above budget due to accelerated implementation work.
3. *Cloud and Tools*: below budget after reserved capacity adjustments.
4. *Travel*: under budget because customer workshops moved online.

= Forecast

#figure(
  table(
    columns: (2.2fr, 1.3fr, 1.3fr, 1.3fr, 1.7fr),
    inset: 7pt,
    align: (left, right, right, right, left),
    stroke: 0.6pt + border-color,
    fill: (x, y) => if y == 0 { primary-color } else if calc.odd(y) { light-fill } else { white },
    text(fill: white, weight: "bold")[Category],
    text(fill: white, weight: "bold")[Next Month],
    text(fill: white, weight: "bold")[Quarter-to-Date],
    text(fill: white, weight: "bold")[Full Quarter],
    text(fill: white, weight: "bold")[Assumption],
    [Personnel], [#money(26000)], [#money(76500)], [#money(102000)], [Current staffing],
    [Contractors], [#money(8500)], [#money(28700)], [#money(37200)], [Reduced scope],
    [Cloud and Tools], [#money(7800)], [#money(22900)], [#money(30700)], [Stable usage],
    [Travel], [#money(2500)], [#money(3700)], [#money(6200)], [One workshop],
    [Procurement], [#money(4500)], [#money(7200)], [#money(11700)], [Delayed purchase],
  ),
  caption: [Forecast by cost category],
  kind: table,
)

= Risks and Mitigations

#figure(
  table(
    columns: (1.5fr, 2.2fr, 2.2fr, 1.2fr),
    inset: 7pt,
    align: (left, left, left, center),
    stroke: 0.6pt + border-color,
    fill: (x, y) => if y == 0 { primary-color } else if calc.odd(y) { light-fill } else { white },
    text(fill: white, weight: "bold")[Risk],
    text(fill: white, weight: "bold")[Impact],
    text(fill: white, weight: "bold")[Mitigation],
    text(fill: white, weight: "bold")[Owner],
    [Contractor overrun], [May consume contingency earlier than planned.], [Require weekly burn review and approval for extra hours.], [PM],
    [Cloud growth], [Usage spikes could exceed committed capacity.], [Review utilization dashboards and archive inactive workloads.], [Engineering],
    [Delayed invoices], [Reported actuals may understate committed spend.], [Track purchase orders separately from posted expenses.], [Finance],
  ),
  caption: [Financial risks and mitigations],
  kind: table,
)

= Decisions Needed

- Approve or reject additional contractor hours for next month.
- Confirm whether procurement can move to the following reporting cycle.
- Decide if unused travel budget should remain reserved or return to contingency.

= Appendix: Notes

- Replace sample values with exported accounting data before circulation.
- Keep budget, actuals, and forecast assumptions in the same currency.
- Attach invoice register, purchase order list, and timesheet summary when submitting the final report.
