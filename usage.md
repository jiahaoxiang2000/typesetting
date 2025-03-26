# Usage Guide

This document provides instructions on how to use the typesetting system effectively.

## Getting Started

1. Choose a template from the appropriate language directory (`en/` for English or `zh/` for Chinese)
2. Customize the template according to your needs
3. Compile using the appropriate LaTeX commands

## Compilation Process

### For English Documents

To compile an English LaTeX document:

```bash
pdflatex document.tex
bibtex document  # if bibliography is used
pdflatex document.tex
pdflatex document.tex  # run twice for references
```

Or use the provided `.latexmkrc` in the `en/` directory:

```bash
cd en/
latexmk -pdf document.tex
```

### For Chinese Documents

To compile a Chinese LaTeX document (using XeLaTeX):

```bash
xelatex document.tex
bibtex document  # if bibliography is used
xelatex document.tex
xelatex document.tex  # run twice for references
```

Or use the provided `.latexmkrc` in the `zh/` directory:

```bash
cd zh/
latexmk document.tex
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

### Chinese-Specific Macros

- `\mynote{text}` - Add a note with "注：" prefix

For a complete reference of available macros, see the [Macros](macros.md) page.

## Style Customization

Each language has specific style files:

- English: `report-en.sty` for reports and articles
- Chinese: `note-zh.sty` for documents and `slide-zh.sty` for presentations

Edit these files to change global formatting options for your documents.
