# Document Templates

> [!NOTE]
> This page provides information about the available document templates. Each template is optimized for specific document types and languages.

## Available Templates

The typesetting system includes Typst templates in the `typst/` directory:

### Available Templates

- **Note Template** (`note.typ`) - For notes and documentation
- **Report Template** (`report.typ`) - For professional reports  
- **Slide Template** (`slide.typ`) - For presentations

## Using Templates

> [!TIP]
> Always copy templates to your working directory before modifying them. This preserves the original templates for future use.

To use a template:

1. Navigate to the `typst/` directory
2. Copy the template files to your working directory
3. Modify the template according to your needs
4. Compile with `typst compile your-file.typ`

## Report Template

The report template (`report.typ`) is suitable for technical reports, theses, and dissertations.

Example usage:

```typst
#import "report.typ": *

#show: report.with(
  title: "My Report Title",
  author: "Author Name",
  date: datetime.today(),
)

= Introduction
Introduction text...

= Methodology  
Methodology content...
```

## Note Template

The note template (`note.typ`) is suitable for documentation, notes, and technical writing.

Features:

- Clean document structure
- Chinese font configuration support
- Mathematical notation and formula support
- Table formatting
- Bibliography support with citation features

Example usage:

```typst
#import "note.typ": *

#show: note.with(
  title: "中文笔记示例",
  author: "isomo",
)

= 引言
本文档展示了如何使用 Typst 来创建中文笔记。

= 表格示例
#table(
  columns: 3,
  [项目], [数量], [单价],
  [苹果], [5], [¥2.5],
  [香蕉], [3], [¥1.5],
  [橙子], [2], [¥3.0],
)

= 数学公式
$ E = m c^2 $
```

## Slide Template

The slide template (`slide.typ`) is suitable for presentations and slideshows.

Features:

- Professional slide layouts
- Support for Chinese and English text
- Mathematical formula presentation
- Table and figure support
- Easy customization

Example usage:

```typst
#import "slide.typ": *

#show: slide.with(
  title: "幻灯片演示",
  author: "isomo",
  date: datetime.today(),
)

= 第一章节

== 子标题

这是幻灯片内容示例。

= 数学公式

$ sum_(i=1)^n i = (n(n+1))/2 $
```

## Customizing Templates

> [!WARNING]
> When modifying template files, make backup copies first. Changes to `.typ` files will affect all documents using that template.

Each template can be customized by:

1. Modifying the template file directly for one-time use
2. Creating a new template file based on an existing one
3. Using the template's configuration options

## Example PDFs

> [!TIP]
> You can view pre-compiled examples of each template by visiting the [GitHub Releases page](https://github.com/jiahaoxiang2000/typesetting/releases), where you'll find PDF examples of all templates.