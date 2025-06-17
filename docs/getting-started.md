# Getting Started

This guide will help you start using the LaTeX Typesetting system for your documents.

## Prerequisites

Before you begin, make sure you have:

- LaTeX distribution (TeXLive, MiKTeX, or MacTeX) installed
- A text editor or LaTeX IDE
- Git (optional, for cloning the repository)

## Installation typesetting

1. Clone this repository:

   ```bash
   git clone https://github.com/jiahaoxiang2000/typesetting.git
   cd typesetting
   ```

2. Install required LaTeX packages:

   ```bash
   # For TeXLive
   tlmgr install amsmath amsfonts amssymb graphicx hyperref booktabs microtype geometry setspace inputenc fontenc xcolor marginnote ctex tikz subcaption multirow multicol tcolorbox animate multimedia listings natbib bibentry
   ```

:::tip
If you've installed the complete LaTeX distribution, you can update all packages at once using the command `tlmgr update --self --all`. This eliminates the need to install packages manually. For Chinese document support, ensure you have CJK fonts installed on your system (such as Noto CJK, Source Han fonts, or system fonts like STSong, STKaiti).
:::

## Quick Start

1. Choose a template from either the `en/` (English) or `zh/` (Chinese) directory as your starting point:
   
   **Chinese Templates:**
   - `note-zh.tex` - For documentation and notes with optional TOC
   - `report-zh.tex` - For weekly reports and project documentation
   - `slide-zh.tex` - For presentations with animation features
   
   **English Templates:**
   - Available in the `en/` directory

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

:::warning
All templates need to link to the `styles/**.sty` files, so be sure to check that the `\usepackage{../styles/***}` paths are correct relative to your project directory. To reduce dependencies, each style file contains all the necessary packages you'll need. For Chinese documents, make sure you have appropriate CJK fonts installed.
:::

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
