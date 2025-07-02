# Getting Started

## Installation

Install Typst using one of these methods:

```bash
# Using cargo (Rust package manager)
cargo install typst-cli

# Using package managers
# macOS
brew install typst

# Arch Linux  
pacman -S typst

# Or download binary from GitHub
# https://github.com/typst/typst/releases
```

## Basic Usage

1. Copy a template from `typst/` directory
2. Edit the template file
3. Compile to PDF:

```bash
typst compile document.typ
```

## Templates

- **note.typ** - Simple notes and documentation
- **report.typ** - Professional reports with abstracts
- **slide.typ** - Presentation slides

## Example

```typst
#import "report.typ": *

#show: report.with(
  title: "My Report",
  author: "Your Name",
)

= Introduction
Your content here...
```