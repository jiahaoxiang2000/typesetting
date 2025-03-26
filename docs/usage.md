# Usage Guide

This document provides instructions on how to use the typesetting system effectively.

## Getting Started

1. Choose a template from the `templates/` directory as your starting point
2. Customize the template according to your needs
3. Compile using the LaTeX commands

## Compilation Process

To compile a LaTeX document:

```bash
pdflatex document.tex
bibtex document  # if bibliography is used
pdflatex document.tex
pdflatex document.tex  # run twice for references
```

## Using Custom Macros

Our system provides various custom macros for convenience:

### Math Macros

- `\R`, `\Z`, `\N`, `\C`, `\Q` - Common number sets
- `\vecr{v}` - Vector notation
- `\mtrx{M}` - Matrix notation
- `\E`, `\Var`, `\Cov` - Statistical notation

### Formatting Macros

- `\todo{text}` - Highlight text as a TODO item
- `\note{text}` - Add a margin note
- `\highlight{text}` - Highlight text with yellow background
- `\term{text}` - Format a technical term
- `\blockquoter{quote}{source}` - Format a block quote with source

## Style Customization

The `our-typesetting.sty` file contains the main style definitions. Edit this file to change global formatting options.
