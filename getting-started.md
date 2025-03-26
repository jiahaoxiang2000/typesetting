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
   tlmgr install amsmath amsfonts amssymb graphicx hyperref booktabs microtype geometry setspace inputenc fontenc xcolor marginnote
   ```

## Quick Start

1. Choose a template from the `templates/` directory as your starting point
2. Copy the template to your working directory
3. Modify the template according to your needs
4. Compile using LaTeX commands:

   ```bash
   pdflatex document.tex
   bibtex document  # if bibliography is used
   pdflatex document.tex
   pdflatex document.tex  # run twice for references
   ```

5. Alternatively, use the provided `.latexmkrc` file with:

   ```bash
   latexmk -pdf document.tex
   ```

## Next Steps

Once you've successfully compiled your first document, see the [Usage Guide](usage.md) for more detailed information.
