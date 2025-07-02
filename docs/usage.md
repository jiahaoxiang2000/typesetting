# Usage Guide

## Compiling Documents

Basic compilation:
```bash
typst compile document.typ
```

Watch mode (auto-recompile on changes):
```bash
typst watch document.typ
```

## Template Structure

All templates follow this pattern:

```typst
#import "template.typ": *

#show: template.with(
  title: "Document Title",
  author: "Author Name",
  // other options...
)

= Chapter Title
Content goes here...
```

## Common Features

### Mathematics
```typst
$ E = m c^2 $

$ sum_(i=1)^n i = (n(n+1))/2 $
```

### Tables
```typst
#table(
  columns: 3,
  [Header 1], [Header 2], [Header 3],
  [Row 1], [Data], [More data],
)
```

### Figures
```typst
#figure(
  image("image.png", width: 70%),
  caption: [Figure caption]
)
```

### Bibliography
Add citations with `.bib` files:
```typst
#bibliography("references.bib")
```