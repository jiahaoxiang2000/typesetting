# Document Templates

This page provides information about the available document templates.

## Available Templates

The typesetting system includes the following templates:

- **Report Template (English)** - For academic and technical reports
- **Article Template** - For scientific articles and papers
- **Book Template** - For book-length documents

## Using Templates

To use a template:

1. Navigate to the templates directory
2. Copy the template files to your working directory
3. Modify the template according to your needs

## Report Template (English)

The English report template uses the `report-en.sty` style file and is suitable for technical reports, theses, and dissertations.

Example usage:

```tex
\documentclass{article}
\usepackage{../styles/report-en}

\title{My Report Title}
\author{Author Name}
\date{\today}

\begin{document}

\maketitle

\begin{abstract}
  Abstract text goes here.
\end{abstract}

\section{Introduction}
Introduction text...

\end{document}
```

## Customizing Templates

Each template can be customized by:

1. Modifying the corresponding `.sty` file in the `styles/` directory
2. Creating a new style file based on an existing one
3. Modifying the template directly for one-time use
