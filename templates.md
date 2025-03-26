# Document Templates

This page provides information about the available document templates.

## Available Templates

The typesetting system includes templates organized by language:

### English Templates (en/)

- **Report Template** - For academic and technical reports
- **Article Template** - For scientific articles and papers

### Chinese Templates (zh/)

- **Note Template** - For Chinese notes and documentation
- **Slide Template** - For Chinese presentations

## Using Templates

To use a template:

1. Navigate to the appropriate language directory (`en/` or `zh/`)
2. Copy the template files to your working directory
3. Modify the template according to your needs

## English Report Template

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

## Chinese Note Template

The Chinese note template uses the `note-zh.sty` style file and is suitable for Chinese documentation.

Example usage:

```tex
\documentclass{article}
\usepackage{../styles/note-zh}

\title{标题}
\author{作者}

\begin{document}

\maketitle

\section{引言}
引言文本...

\end{document}
```

## Chinese Slide Template

The Chinese slide template uses the `slide-zh.sty` style file with beamer for presentations.

Example usage:

```tex
\documentclass{beamer}
\usepackage{../styles/slide-zh}

\title{演示文稿标题}
\author{作者}
\date{\today}

\begin{document}

\begin{frame}
  \titlepage
\end{frame}

\begin{frame}{内容}
  \begin{itemize}
    \item 第一点
    \item 第二点
  \end{itemize}
\end{frame}

\end{document}
```

## Customizing Templates

Each template can be customized by:

1. Modifying the corresponding `.sty` file in the `styles/` directory
2. Creating a new style file based on an existing one
3. Modifying the template directly for one-time use
