# Typesetting Project

A professional document preparation and typesetting system based on Typst.

## Overview

This project provides tools and templates for high-quality document typesetting using Typst. It's designed for academic papers, technical documentation, books, and other professional documents requiring precise formatting and layout.

## Features

- Pre-configured document templates for various publication types
- Custom functions for streamlined document creation
- Bibliography management tools
- Mathematical equation support
- Figure and table management
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

3. Choose a template from the `typst/` directory and start working on your document.

## Usage

Check out our [online documentation](https://jiahaoxiang2000.github.io/typesetting/) for detailed usage instructions.

## Preview Examples

You can view example PDF files without having to compile them yourself by visiting our [GitHub Releases page](https://github.com/jiahaoxiang2000/typesetting/releases), where you'll find pre-compiled PDF examples of various document types.

## Directory Structure

```
typesetting/
├── typst/           # Typst templates and examples
├── zh/              # Chinese bibliography files
├── en/              # English bibliography files
├── docs/            # Documentation (Docsify)
└── .github/         # GitHub Actions workflows
```

## Contributing

Contributions are welcome! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
