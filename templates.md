# Document Templates

> [!NOTE]
> This page provides information about the available document templates. Each template is optimized for specific document types and languages.

## Available Templates

The typesetting system includes templates organized by language:

### English Templates (en/)

- **Report Template** - For academic and technical reports
- **Article Template** - For scientific articles and papers

### Chinese Templates (zh/)

- **Note Template** (`note-zh.tex`) - For Chinese notes and documentation
- **Report Template** (`report-zh.tex`) - For Chinese reports with weekly planning features
- **Slide Template** (`slide-zh.tex`) - For Chinese presentations with beamer

## Using Templates

> [!TIP]
> Always copy templates to your working directory before modifying them. This preserves the original templates for future use.

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

> [!WARNING]
> The Chinese note template uses the `note-zh.sty` style file and **requires XeLaTeX** for compilation. It supports optional table of contents control.

The Chinese note template uses the `note-zh.sty` style file and is suitable for Chinese documentation, notes, and technical writing. It supports optional table of contents control.

Features:

- Support for both `notoc` (no table of contents) and default (with table of contents) modes
- Chinese font configuration with Noto CJK fonts
- Mathematical notation and formula support
- Table creation with `booktabs` package
- Multi-column layouts using `multicol`
- Bibliography support with citation features

Example usage:

```tex
\documentclass{article}
% Use with [notoc] option to hide table of contents
\usepackage[notoc]{../styles/note-zh}
% Default shows table of contents
% \usepackage{../styles/note-zh}

% Choose Chinese fonts, if want to change the english font, please use \setmainfont
% \setCJKmainfont{Noto Serif CJK SC} % Main Chinese font (Songti)
% \setCJKsansfont{Noto Sans CJK SC} % Sans-serif Chinese font (Heiti)
% \setCJKmonofont{Noto Sans Mono CJK SC} % Monospaced Chinese font (Fangsong)

\usepackage{bookmark}

\title{中文笔记示例}
\author{isomo}

\begin{document}

\maketitle

\section{引言}
本文档展示了如何使用 \texttt{note-zh.sty} 样式来创建中文笔记。

\section{表格示例}
\begin{table}[htbp]
  \centering
  \caption{数据示例表}
  \begin{tabular}{lcc}
    \toprule
    项目 & 数量 & 单价 \\
    \midrule
    苹果 & 5 & ¥2.5 \\
    香蕉 & 3 & ¥1.5 \\
    橙子 & 2 & ¥3.0 \\
    \bottomrule
  \end{tabular}
\end{table}

\section{分栏示例}
\begin{multicols}{2}
  这是分栏文本的示例。通过使用 \texttt{multicol} 包，可以轻松创建多栏布局。
\end{multicols}

\end{document}
```

## Chinese Report Template

> [!NOTE]
> The Chinese report template is specifically designed for weekly reports, project documentation, and technical reports with built-in planning environments.

The Chinese report template uses the `report-zh.sty` style file and is designed for weekly reports, project documentation, and technical reports. It includes special environments for weekly planning and project tracking.

Features:

- Built-in abstract and weekly planning environments
- Support for figures with subfigures
- Table formatting for problem tracking
- Bibliography and citation support
- CJK font configuration options
- Structured layout for professional reports

Example usage:

```tex
\documentclass{article}
\usepackage{../styles/report-zh}
% if you want to use CJK fonts, uncomment the following lines
% \setCJKmainfont{Songti SC} % Main Chinese font (Songti)
% \setCJKsansfont{Lantinghei TC} % Sans-serif Chinese font
% \setCJKmonofont{Maple Mono NF CN} % Monospaced Chinese font (uncomment if needed)

% Set document information
\title{周报 isomo (\today)}
\author{isomo}
\date{\today}

\begin{document}

\maketitle

\begin{abstract}
  本周主要完成了项目的关键模块开发与实验验证。通过设计并实现新的算法结构，成功提升了系统性能并降低了资源消耗。
\end{abstract}

\begin{weekplan}
1) 完成第二阶段算法优化工作 2) 开始撰写实验章节 3) 准备下周的项目进度汇报演示文稿
\end{weekplan}

\section{工作进展}

\subsection{核心算法实现}

本周主要完成了核心算法的实现与测试，关键工作包括：

\begin{enumerate}
\item 设计了新的数据结构，优化了内存使用效率
\item 实现了并行计算模块，提升了处理速度
\item 完成了边缘情况的错误处理机制
\end{enumerate}

\begin{figure}[h]
\centering
\includegraphics[width=0.7\textwidth]{example-image-a}
\caption{系统架构示意图}
\label{fig:system_architecture}
\end{figure}

\section{遇到的问题与解决方案}

\begin{table}[h]
\centering
\begin{tabular}{|p{0.3\textwidth}|p{0.6\textwidth}|}
\hline
\textbf{问题} & \textbf{解决方案} \\
\hline
内存溢出 & 实现了动态内存分配策略，根据实际需求调整缓冲区大小 \\
\hline
并发冲突 & 采用细粒度锁机制，减少线程等待时间 \\
\hline
\end{tabular}
\caption{问题及解决方案总结}
\end{table}

\end{document}
```

## Chinese Slide Template

The Chinese slide template uses the `slide-zh.sty` style file with beamer for presentations. It includes special features for sequential text animation and various presentation elements.

Features:

- Beamer integration with Chinese font support
- Special text boxes (block, alertblock, exampleblock)
- Mathematical formula presentation
- Table formatting optimized for slides
- Sequential paragraph animation with `seqpara` and `seqsent` environments
- CJK font configuration with STSong, STKaiti, and STFangsong options
- Bibliography support with citations

Example usage:

```tex
\documentclass{beamer}
\usepackage{../styles/slide-zh}

% Improved Chinese font configuration with fallbacks
% \setCJKmainfont{STSong}
% \setCJKsansfont{STKaiti}  % Better sans-serif font for Chinese
% \setCJKmonofont{STFangsong}  % Better monospace font for Chinese

% Document information
\title{幻灯片样例演示}
\subtitle{使用 slide-zh 样式}
\author{isomo}
\date{\today}

\begin{document}

% Title frame
\begin{frame}
  \titlepage
\end{frame}

% Outline frame
\begin{frame}{大纲}
  \tableofcontents
\end{frame}

% Special boxes
\section{特殊文本框}
\begin{frame}{特殊文本框}
  \begin{block}{笔记框框}
    这是一个笔记框，用于补充说明。
  \end{block}
  \begin{alertblock}{警告框框}
    这是一个警告框，用于警告用户。
  \end{alertblock}
  \begin{exampleblock}{示例框框}
    这是一个示例框，用于展示示例。
  \end{exampleblock}
\end{frame}

% Math example
\section{数学公式}
\begin{frame}{数学公式示例}
  爱因斯坦的质能方程:
  \begin{equation}
    E = mc^2
  \end{equation}

  麦克斯韦方程组:
  \begin{align}
    \nabla \cdot \vec{E} &= \frac{\rho}{\varepsilon_0} \\
    \nabla \times \vec{B} &= \mu_0\vec{J} + \mu_0\varepsilon_0\frac{\partial \vec{E}}{\partial t}
  \end{align}
\end{frame}

% Sequential text animation
\section{动画效果}
\begin{frame}{文本动画示例}
  \begin{seqpara}
    \seqsent{这是第一句话，会先显示并保持高亮。}
    \seqsent{当第二句话出现时，第一句话会变暗。}
    \seqsent{第三句话出现后，前两句都会变暗。}
    \seqsent{这样可以引导观众注意力集中在当前正在讲解的内容上。}
  \end{seqpara}
\end{frame}

\end{document}
```

### Animation Features

> [!TIP]
> The sequential animation feature is perfect for step-by-step explanations in presentations. Each sentence will appear one by one, keeping audience attention focused.

The slide template includes a special `seqpara` environment for sequential text animation:

- `\begin{seqpara}...\end{seqpara}` - Creates a sequential paragraph container
- `\seqsent{text}` - Each sentence appears sequentially, with previous sentences dimmed

This is particularly useful for presentations where you want to guide audience attention step by step through your content.

## Customizing Templates

> [!WARNING]
> When modifying style files, make backup copies first. Changes to `.sty` files will affect all documents using that style.

Each template can be customized by:

1. Modifying the corresponding `.sty` file in the `styles/` directory
2. Creating a new style file based on an existing one
3. Modifying the template directly for one-time use

## Example PDFs

> [!TIP]
> You can view pre-compiled examples of each template by visiting the [GitHub Releases page](https://github.com/jiahaoxiang2000/typesetting/releases), where you'll find PDF examples of all templates.
