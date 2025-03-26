# Getting Started

This guide will help you start using the LaTeX Typesetting system for your documents.

## Prerequisites

Before you begin, make sure you have:

- LaTeX distribution (TeXLive, MiKTeX, or MacTeX) installed
- A text editor or LaTeX IDE
- Git (optional, for cloning the repository)

## Installation

1. Clone this repository:

   ```bash
   git clone https://github.com/jiahaoxiang2000/typesetting.git
   cd typesetting
   ```

2. Install required LaTeX packages:

   ```bash
   # For TeXLive
   tlmgr install amsmath amsfonts amssymb graphicx hyperref booktabs microtype geometry setspace inputenc fontenc xcolor marginnote ctex
   ```

## Quick Start

1. Choose a template from either the `en/` (English) or `zh/` (Chinese) directory as your starting point
2. Copy the template to your working directory
3. Modify the template according to your needs
4. Compile using appropriate LaTeX commands:

   For English documents (using pdfLaTeX):

   ```bash
   pdflatex document.tex
   bibtex document  # if bibliography is used
   pdflatex document.tex
   pdflatex document.tex  # run twice for references
   ```

   For Chinese documents (using XeLaTeX):

   ```bash
   xelatex document.tex
   bibtex document  # if bibliography is used
   xelatex document.tex
   xelatex document.tex  # run twice for references
   ```

5. Alternatively, use the provided `.latexmkrc` file with:

   ```bash
   # For English documents
   cd en/
   latexmk -pdf document.tex

   # For Chinese documents
   cd zh/
   latexmk document.tex  # Uses XeLaTeX as configured in zh/.latexmkrc
   ```

## Next Steps

Once you've successfully compiled your first document, see the [Usage Guide](usage.md) for more detailed information and the [Templates](templates.md) page for specific template information.
