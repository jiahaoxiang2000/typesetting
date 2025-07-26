# Typesetting Project

A professional document preparation and typesetting system based on Typst.

## Overview

This project provides tools and templates for high-quality document typesetting using Typst. It's designed for academic papers, technical documentation, presentations, and other professional documents requiring precise formatting and layout.

## Features

- Pre-configured document templates organized by use case
- Academic report templates with Chinese support
- Academic paper review templates with scoring system
- Advanced presentation templates with animations
- Simple note templates for documentation
- Shared bibliography management
- Mathematical equation and theorem support
- Figure and table management with captions
- Cross-referencing system

## Requirements

- Typst (latest version recommended)
- A text editor with Typst support
- (Optional) Bibliography management software for .bib files

## Getting Started

1. Clone this repository:

   ```bash
   git clone https://github.com/jiahaoxiang2000/typesetting.git
   cd typesetting
   ```

2. Install Typst:

   ```bash
   # Using cargo
   cargo install typst-cli
   # Or download from https://github.com/typst/typst/releases
   ```

3. Choose a template from the appropriate directory and start working on your document.

## Template Usage

### Compile a Document

```bash
# Compile a single document
typst compile <filename>.typ

# Compile with bibliography support (recommended)
typst compile --root . <filename>.typ <output>.pdf

# Compile all templates
find . -name "*.typ" -type f | while read file; do
    typst compile --root . "$file" "${file%.typ}.pdf"
done
```

### Available Templates

- **Academic Reports** (`academic/report.typ`): Feature-rich Chinese weekly reports
- **Academic Reviews** (`academic/review.typ`): Paper review templates with scoring system
- **Academic Rebuttals** (`academic/response.typ`): Paper response templates with bold point formatting
- **Presentations** (`presentations/slide.typ`): Advanced slides with animations
- **Simple Notes** (`documents/note.typ`): Basic documentation templates

## Online Documentation

Check out our [online documentation](https://jiahaoxiang2000.github.io/typesetting/) for detailed usage instructions and examples.

## Preview Examples

You can view example PDF files without having to compile them yourself by visiting our [GitHub Releases page](https://github.com/jiahaoxiang2000/typesetting/releases), where you'll find pre-compiled PDF examples of various document types.

## Directory Structure

```
typesetting/
├── academic/           # Academic and research documents
│   ├── report.typ      # Weekly reports and academic reports
│   ├── review.typ      # Paper review templates with scoring system
│   └── response.typ    # Paper rebuttals with enhanced formatting
├── presentations/      # Presentation materials  
│   └── slide.typ       # Slides with animations and theorems
├── documents/          # General documents
│   └── note.typ        # Simple notes and documentation
├── references.bib      # Shared bibliography file
├── docs/               # Documentation (Docsify-based)
└── .github/workflows/  # CI/CD automation
```

## Contributing

Contributions are welcome! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
