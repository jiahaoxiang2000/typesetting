# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Typst-based typesetting system that provides professional document templates for academic papers, reports, notes, and presentations. The project migrated from LaTeX to Typst in v1.2.0 and focuses exclusively on Typst templates.

## Core Commands

### Document Compilation

```bash
# Compile a single Typst document
typst compile <filename>.typ

# Compile with output path
typst compile <filename>.typ <output>.pdf

# Compile all templates from new structure (use --root for bibliography access)
find . -name "*.typ" -type f | while read file; do
    typst compile --root . "$file" "${file%.typ}.pdf"
done

```

### Development Workflow

- **No build system**: Direct Typst compilation
- **No testing framework**: Manual testing through compilation
- **No linting**: Ensure code compiles without errors

## Architecture

### Directory Structure

```
typesetting/
├── academic/           # Academic and research documents
│   ├── report.typ      # Weekly reports and academic reports
│   └── response.typ    # Paper rebuttals (uses bamdone-rebuttal)
├── presentations/      # Presentation materials  
│   └── slide.typ       # Slides with animations and theorems
├── documents/          # General documents
│   └── note.typ        # Simple notes and documentation
├── references.bib      # Shared bibliography file
├── docs/               # Documentation (Docsify-based)
└── .github/workflows/  # CI/CD automation
```

### Template Types by Use Case

#### Academic Templates (`academic/`)
1. **report.typ**: Feature-rich Chinese weekly report template with:
   - Custom color functions (redt, bluet, greent, etc.)
   - Week planning boxes
   - Table and figure management
   - Bibliography support
2. **response.typ**: Academic rebuttal template using `@preview/bamdone-rebuttal:0.1.1`

#### Presentation Templates (`presentations/`)
1. **slide.typ**: Advanced presentation template with:
   - Touying framework for animations
   - CeTZ and Fletcher diagram support
   - Mathematical theorem environments
   - Chinese font support

#### Document Templates (`documents/`)
1. **note.typ**: Simple document template using `@preview/basic-document-props:0.1.0`

#### Shared Resources
1. **references.bib**: Common bibliography file (in project root for easy access)

### Key Dependencies

- `@preview/basic-document-props:0.1.0` - Document properties package (documents/note.typ)
- `@preview/bamdone-rebuttal:0.1.1` - Academic rebuttal package (academic/response.typ)  
- `@preview/touying:0.6.1` - Presentation framework (presentations/slide.typ)
- `@preview/cetz:0.3.2` - Drawing package for diagrams (presentations/slide.typ)
- `@preview/fletcher:0.5.5` - Flowchart diagrams (presentations/slide.typ)
- `@preview/theorion:0.3.2` - Mathematical theorems (presentations/slide.typ)

## Template Features

### Common Patterns

- All templates support bibliography via `references.bib`
- Chinese font configuration (commented out by default)
- Consistent styling functions and color shortcuts
- Figure and table caption management
