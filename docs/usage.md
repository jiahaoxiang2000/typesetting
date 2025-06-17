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

Or use the provided `.latexmkrc` in the `zh/` directory which is configured with optimized settings:

```bash
cd zh/
latexmk document.tex
```

The `.latexmkrc` configuration includes:
- XeLaTeX compilation mode (`$pdf_mode = 5`)
- SyncTeX support for editor integration
- Shell escape enabled for advanced packages
- Automatic bibliography processing
- Comprehensive cleanup of auxiliary files

### Compilation Configuration

The Chinese directory includes a specialized `.latexmkrc` file with the following settings:

```perl
# PDF compilation settings
$pdf_mode = 5;  # Use XeLaTeX
$xelatex = "xelatex -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape %O %S";

# Bibliography settings
$bibtex = "bibtex %O %B";
$bibtex_use = 2;

# Clean file extensions
$clean_ext = "nav snm aux bbl blg brf idx ilg ind lof log lol lot out toc fdb_latexmk fls ";
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

### Chinese Font Configuration

The Chinese templates support flexible font configuration:

```tex
% Optional CJK font settings for note-zh.sty
\setCJKmainfont{Noto Serif CJK SC} % Main Chinese font (Songti)
\setCJKsansfont{Noto Sans CJK SC} % Sans-serif Chinese font (Heiti)
\setCJKmonofont{Noto Sans Mono CJK SC} % Monospaced Chinese font

% Optional CJK font settings for report-zh.sty
\setCJKmainfont{Songti SC} % Main Chinese font (Songti)
\setCJKsansfont{Lantinghei TC} % Sans-serif Chinese font
\setCJKmonofont{Maple Mono NF CN} % Monospaced Chinese font

% Optional CJK font settings for slide-zh.sty
\setCJKmainfont{STSong}
\setCJKsansfont{STKaiti}  % Better sans-serif font for Chinese
\setCJKmonofont{STFangsong}  % Better monospace font for Chinese
```

### Special Environments for Chinese Reports

The `report-zh.sty` style provides special environments:

- `abstract` - Standard abstract environment
- `weekplan` - Weekly planning environment for project reports

Example:
```tex
\begin{abstract}
  本周主要完成了项目的关键模块开发与实验验证。
\end{abstract}

\begin{weekplan}
1) 完成第二阶段算法优化工作 2) 开始撰写实验章节 3) 准备下周的项目进度汇报演示文稿
\end{weekplan}
```

### Animation Features for Chinese Presentations

The `slide-zh.sty` style includes sequential text animation:

```tex
\begin{seqpara}
  \seqsent{这是第一句话，会先显示并保持高亮。}
  \seqsent{当第二句话出现时，第一句话会变暗。}
  \seqsent{第三句话出现后，前两句都会变暗。}
\end{seqpara}
```

For examples of these macros in use, see the [GitHub Releases page](https://github.com/jiahaoxiang2000/typesetting/releases) where you can download example PDFs.

## Bibliography and Citations

All templates support comprehensive bibliography management:

### Chinese Bibliography Support

- Mixed Chinese and English references
- Proper CJK character handling
- Multiple reference types (books, articles, online resources)
- Automatic formatting with `natbib` package

Example citation usage:
```tex
引用文献是学术写作的重要部分。例如，我们可以引用高德纳的经典著作\cite{knuth1984texbook}或LaTeX指南\cite{lamport1994latex}。
```

### Compilation with Bibliography

For documents with references, use the complete compilation sequence:
```bash
xelatex document.tex    # First pass
bibtex document         # Process bibliography  
xelatex document.tex    # Second pass
xelatex document.tex    # Final pass
```

Or use the provided LaTeXMK configuration which handles this automatically:
```bash
cd zh/
latexmk document.tex
```

For detailed bibliography information, see the [Bibliography & References](bibliography.md) guide.

## Style Customization

Each language has specific style files:

- English: `report-en.sty` for reports and articles
- Chinese: `note-zh.sty` for documents and `slide-zh.sty` for presentations

Edit these files to change global formatting options for your documents.
