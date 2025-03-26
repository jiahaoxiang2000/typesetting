# Custom Macros

This page documents the custom macros available in the LaTeX Typesetting system.

## Math Macros

Located in `macros/math-macros.tex`:

| Macro      | Description      | Example        |
| ---------- | ---------------- | -------------- |
| `\R`       | Real numbers     | `$\R^n$`       |
| `\Z`       | Integers         | `$\Z$`         |
| `\N`       | Natural numbers  | `$\N$`         |
| `\C`       | Complex numbers  | `$\C$`         |
| `\Q`       | Rational numbers | `$\Q$`         |
| `\vecr{v}` | Vector notation  | `$\vecr{v}$`   |
| `\mtrx{M}` | Matrix notation  | `$\mtrx{M}$`   |
| `\E`       | Expected value   | `$\E[X]$`      |
| `\Var`     | Variance         | `$\Var(X)$`    |
| `\Cov`     | Covariance       | `$\Cov(X,Y)$`  |
| `\arctg`   | Arc tangent      | `$\arctg(x)$`  |
| `\arcctg`  | Arc cotangent    | `$\arcctg(x)$` |

## Formatting Macros

Located in `macros/formatting-macros.tex`:

| Macro                         | Description                            | Example                            |
| ----------------------------- | -------------------------------------- | ---------------------------------- |
| `\todo{text}`                 | Adds a red TODO note                   | `\todo{Fix this}`                  |
| `\note{text}`                 | Adds a margin note                     | `\note{Important point}`           |
| `\highlight{text}`            | Highlights text with yellow background | `\highlight{Key concept}`          |
| `\term{text}`                 | Formats a technical term in italics    | `\term{algorithm}`                 |
| `\foreign{text}`              | Formats foreign words in italics       | `\foreign{et cetera}`              |
| `\acronym{text}`              | Formats acronyms in small caps         | `\acronym{nasa}`                   |
| `\enquote{text}`              | Adds quotation marks                   | `\enquote{quoted text}`            |
| `\blockquoter{quote}{source}` | Creates a block quote with source      | `\blockquoter{Quote text}{Author}` |

## Custom Environments

| Environment | Description                                         | Example                           |
| ----------- | --------------------------------------------------- | --------------------------------- |
| `summary`   | Creates an italicized quotation block for summaries | `\begin{summary}...\end{summary}` |

## Using Custom Macros

To use these macros in your document, make sure to include the appropriate style file:

```tex
\usepackage{../styles/report-en}  % Includes all macros
```

Or include the macro files directly:

```tex
\input{../macros/math-macros}
\input{../macros/formatting-macros}
```
