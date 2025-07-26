# Changelog

All notable changes to this project will be documented in this file.

## [Unreleased]

## [v1.4.0] - 2025-07-26

### Added
- Academic paper review template with scoring and comments
- MCP configuration for github-repo-mcp integration

### Enhanced  
- Academic note template with custom styling and features
- Point function in response.typ to display content in bold for better visual distinction

### Changed
- Simplified scoring and comment box functions in review template for better readability
- Streamlined academic review template structure with cleaner layout

### Documentation
- Updated README.md to reflect current project structure

## [v1.3.0] - 2025-07-13

### Changed
- **BREAKING**: Reorganized templates by use case for better discoverability
- Moved templates from centralized `typst/` folder to use-case directories:
  - `academic/` - Contains report.typ and response.typ for research documents
  - `presentations/` - Contains slide.typ for presentation materials
  - `documents/` - Contains note.typ for general documentation
- Updated GitHub Actions workflow to work with new directory structure
- Enhanced compilation process with `--root` flag for bibliography access

### Added
- Comprehensive CLAUDE.md documentation for development guidance
- Use-case based template organization for improved user experience
- Enhanced build process with directory-prefixed PDF naming (e.g., academic_report.pdf)

### Fixed
- Bibliography path references updated for new structure
- GitHub Actions compilation workflow adapted to new directory layout

## [v1.2.0] - 2025-07-02

### Changed
- **BREAKING**: Migrated from LaTeX to Typst-only approach
- Removed all LaTeX templates (.tex files) and style files (.sty files)
- Updated documentation to focus exclusively on Typst usage
- Simplified docs/ folder structure for better usability
- Updated CONTRIBUTING.md for Typst development guidelines
- Corrected version dates in CHANGELOG.md based on actual git tag dates
- Improved PDF preview section with better user experience

### Removed
- LaTeX templates: note-zh.tex, report-zh.tex, slide-zh.tex, report.tex
- LaTeX style files: note-zh.sty, report-zh.sty, slide-zh.sty, report-en.sty
- LaTeX-specific documentation files (bibliography.md, docs/CONTRIBUTING.md)

### Added
- Created v1.2.0 git tag and automated release
- GitHub Actions workflow generates PDFs automatically on release
- New response.typ template for academic paper rebuttals using bamdone-rebuttal package
- Typst templates: note.typ, report.typ, slide.typ
- Concise documentation focused on Typst usage
- Comprehensive CHANGELOG.md organized by git tags
- Updated CONTRIBUTING.md with Typst development guidelines
- Enhanced PDF preview section with descriptive template information

## [v1.1.1] - 2025-06-30

### Fixed
- Add Chinese font support to GitHub Actions workflow

### Changed
- Update submodule reference for .claude

## [v1.1.0] - 2025-06-30

### Added
- Update report template with enhanced structure and add references bibliography
- Add initial note template with basic document properties
- Add submodule configuration for .claude

## [v1.0.0] - 2025-06-24

### Added
- **MILESTONE**: First major release with Typst support
- Add slide-lib.typ for Chinese presentations with custom styles and utilities
- Update slide configuration and enhance animation features
- Add institution name configuration for title slides

### Changed
- Update release workflow to use Typst for document compilation
- Adjust inset values for presentation blocks and update table structure

### Fixed
- Remove default institution name from title slide configuration

## [v0.4.0] - 2025-06-17

### Added
- Enhanced contributing guidelines and documentation with notes, tips, and warnings
- Updated README, bibliography, and usage guides
- Enhanced template descriptions and citation support
- Font comparison section and updated font usage comments
- Color support with shorthand commands across all templates

### Changed
- Section title formatting for improved readability
- Bookpaper color from cream to white

### Fixed
- Start section numbering from 0 in note-zh template

## [v0.3.4] - 2025-04-02

### Added
- Example documents and preview PDF links to documentation
- Updated documentation to link to GitHub Releases for example PDFs

## [v0.3.3] - 2025-04-02

### Fixed
- Remove unused Chinese font check file

## [v0.3.2] - 2025-04-02

### Changed
- Comment out Chinese font settings for clarity
- Improve package distribution without including PDF files

## [v0.3.1] - 2025-04-02

### Changed
- Configure Git to trust workspace directory
- Update release notes logging
- Improve package distribution approach

## [v0.3.0] - 2025-04-02

### Added
- Enhanced release process with PDF compilation and listing
- Sequential text reveal animation for presentations

### Fixed
- Remove PDF files from repository
- Replace enumitem package with built-in enumeration
- Update bibliography command to print only cited references

## [v0.2.0] - 2025-03-27

### Added
- Custom style and template for Chinese reports
- Report template with weekly planning environments
- Reliable citation tracking and conditional bibliography

### Changed
- Updated LaTeX documentation with formatting and tips
- Enhanced TOC formatting and background colors for beamer documents

### Fixed
- Remove header line and adjust week plan formatting

## [v0.1.2] - 2025-03-26

### Fixed
- Update sidebar loading configuration and add sidebar file
- Documentation improvements

## [v0.1.1] - 2025-03-26

### Added
- Enhanced README and usage documentation
- Language support documentation
- Template details and examples

### Fixed
- Documentation issues and links

## [v0.1.0] - 2025-03-26

### Added
- **MILESTONE**: First stable release with automation
- Release workflow to automate GitHub releases
- Custom slide style for Chinese presentations
- Custom formatting macros for Chinese documents
- Enhanced math operators

### Changed
- Remove branch restriction from docs deployment workflow
- Integrate math and formatting macros into styles

## [v0.0.2] - 2025-03-26

### Changed
- Update GitHub Actions permissions and deploy action version

## [v0.0.1] - 2025-03-26

### Added
- **MILESTONE**: Initial release
- Comprehensive documentation and GitHub Actions workflow
- LaTeX compilation settings and example documents
- Formatting and mathematical macros for typesetting
- Usage guide and project documentation
- MIT license

---

**Note**: Starting from v1.0.0, this project transitioned from LaTeX to Typst. Earlier versions (v0.x.x) were LaTeX-based.