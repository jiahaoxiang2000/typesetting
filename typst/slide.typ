#import "../typst-lib/slide-lib.typ": *

// Set Chinese fonts for the presentation
#set text(
  font: (
    "Noto Sans CJK SC", // Primary Chinese font
    "Noto Serif CJK SC", // Alternative Chinese serif font
    "WenQuanYi Micro Hei", // Chinese fallback font
    "FZShuSong-Z01", // Traditional Chinese font
    "HYZhongSongJ", // Another Chinese font option
    "Noto Sans", // Latin fallback
    "Roboto", // Final fallback
  ),
  lang: "zh",
  region: "cn",
)

// Additional font customization options:
// For headings, you can use a different font:
#show heading: set text(font: "Noto Serif CJK SC", weight: "bold")

// For code blocks, you can use a monospace font:
#show raw: set text(font: "Noto Sans Mono CJK SC")

// For math, you can set math font:
#set math.equation(numbering: "(1)")
#show math.equation: set text(font: "New Computer Modern Math")

#set heading(numbering: numbly("{1}.", default: "1.1"))

#show: university-theme.with(aspect-ratio: "16-9", config-common(frozen-counters: (theorem-counter,)), config-info(
  title: [幻灯片样例演示],
  subtitle: [使用 Touying 样式],
  author: [isomo],
  date: datetime.today(),
  institution: [],
))

#title-slide()

== 大纲 <touying:hidden>

#components.adaptive-columns(outline(title: none, indent: 1em))

= 介绍

== 介绍

这是一个使用 Touying 的演示：

1. 支持中文排版和格式 #pause
  - 内置了多种实用的功能
  - 提供现代化的排版效果 #pause
  - 支持动画和交互效果

#meanwhile

我们可以同时展示其他内容。

= 特殊文本框

== 文本框示例

#note-block(title: "笔记框框")[
  这是一个笔记框，用于补充说明。
]

#pause

#alert-block(title: "警告框框")[
  这是一个警告框，用于警告用户。
]


== 示例框框

#example-block(title: "示例框框")[
  这是一个示例框，用于展示示例。
]

= 数学公式

== 数学公式示例

爱因斯坦的质能方程：

#pause

#equation-block[$
    E = m c^2
  $]


== 麦克斯韦方程组

麦克斯韦方程组：

#equation-block[$
      nabla dot bold(E) & = rho / epsilon_0                                             \
      nabla dot bold(B) & = 0                                                           \
    nabla times bold(E) & = -(partial bold(B))/(partial t)                              \
    nabla times bold(B) & = mu_0 bold(J) + mu_0 epsilon_0 (partial bold(E))/(partial t)
  $]

= 表格和动画

== 表格示例

*简单表格示例*

#slide-table(
  columns: (auto, auto, auto),
  [*左对齐*],
  [*居中*],
  [*右对齐*],
  [数据1],
  [数据2],
  [数据3],
  [长文本],
  [短文本],
  [100 #cite-style("ctex2020manual")],
)

== 动画效果演示

使用 Touying 的强大动画功能：

#pause

这是第一段文字。

#pause

这是第二段文字，会在点击后出现。

#pause

这是第三段文字，演示了渐进式显示效果。

#meanwhile

同时，我们还可以在侧边显示相关信息。

= 参考文献

== 参考资料

主要参考资料：

#pause

- #cite-style("ctex2020manual") CTeX 宏包手册，2020年版
- Touying 官方文档
- Typst 官方文档
- LaTeX Beamer 用户手册

#pause

感谢使用 Touying 制作精美的中文演示文稿！

== 谢谢观看

#align(center + horizon)[
  #text(size: 32pt, weight: "bold", fill: blue)[
    谢谢观看！
  ]

  #v(1em)

  #text(size: 16pt, fill: gray)[
    Questions & Discussion
  ]
]
