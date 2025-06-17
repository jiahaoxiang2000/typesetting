# Bibliography and References

This guide covers the bibliography and reference management features available in the typesetting system.

## Bibliography Files

The project includes comprehensive bibliography examples:

### Chinese References (`zh/references.bib`)

The Chinese directory contains a `references.bib` file with examples of various reference types:

- **Books** - LaTeX guides and technical manuals
- **Articles** - Academic papers and journal articles  
- **Online Resources** - Web-based documentation and manuals
- **Chinese Publications** - Works in Chinese with proper formatting

Example entries:

```bibtex
@book{lamport1994latex,
  title     = {LaTeX: A Document Preparation System},
  author    = {Lamport, Leslie},
  year      = {1994},
  publisher = {Addison-Wesley Professional}
}

@book{xie2013dynamic,
  title     = {动态文档：knitr实用指南},
  author    = {谢益辉},
  year      = {2013},
  publisher = {电子工业出版社}
}

@online{ctex2020manual,
  title   = {CTeX 宏集手册},
  author  = {CTeX 开发组},
  url     = {https://mirrors.rit.edu/CTAN/language/chinese/ctex/ctex.pdf},
  year    = {2020},
  urldate = {2024-02-17}
}
```

## Citation Usage

### In Chinese Documents

All Chinese templates support citation using the standard LaTeX citation commands:

```tex
% Single citation
我们可以引用高德纳的经典著作\cite{knuth1984texbook}

% Multiple citations
参考相关文献\cite{lamport1994latex,ctex2020manual}

% Citation with page numbers
详见\cite[第42页]{xie2013dynamic}
```

### Citation Styles

The `report-zh.sty` style uses the `natbib` package with numbered citations:

```tex
\RequirePackage[numbers]{natbib}
```

This provides:
- `\cite{key}` - Basic citation
- `\citep{key}` - Parenthetical citation
- `\citet{key}` - Textual citation
- `\citeauthor{key}` - Author only
- `\citeyear{key}` - Year only

## Compilation with Bibliography

To properly compile documents with bibliography:

1. **First compilation**: Generates auxiliary files
   ```bash
   xelatex document.tex
   ```

2. **Bibliography processing**: Processes citation database
   ```bash
   bibtex document
   ```

3. **Second compilation**: Incorporates bibliography
   ```bash
   xelatex document.tex
   ```

4. **Final compilation**: Resolves all cross-references
   ```bash
   xelatex document.tex
   ```

### Using LaTeXMK

The provided `.latexmkrc` in the `zh/` directory automatically handles the bibliography compilation:

```bash
cd zh/
latexmk document.tex
```

The configuration includes:
```perl
# Bibliography settings
$bibtex = "bibtex %O %B";
$bibtex_use = 2;
```

## Bibliography Formatting

### Chinese Bibliography Style

The Chinese templates are configured to handle mixed Chinese and English references properly:

- Chinese titles and authors are preserved in Chinese characters
- English references maintain their original formatting
- URLs and DOIs are properly formatted and linked
- Date formats follow appropriate conventions

### Reference Types Supported

- `@book` - Books and monographs
- `@article` - Journal articles
- `@inproceedings` - Conference papers
- `@phdthesis` - Doctoral dissertations
- `@mastersthesis` - Master's theses
- `@techreport` - Technical reports
- `@online` - Web resources
- `@manual` - Software manuals and documentation

## Best Practices

1. **Consistent naming**: Use descriptive citation keys (e.g., `author2020title`)
2. **Complete information**: Include all available bibliographic data
3. **URL dates**: For online sources, include both publication date and access date
4. **Chinese characters**: Use proper Chinese characters in titles and author names
5. **Publisher information**: Include complete publisher and location information

## Troubleshooting

### Common Issues

1. **Missing bibliography**: Ensure you run `bibtex` between LaTeX compilations
2. **Undefined citations**: Check that citation keys match exactly between `.tex` and `.bib` files
3. **Character encoding**: Ensure `.bib` files use UTF-8 encoding for Chinese characters
4. **Font issues**: Make sure appropriate CJK fonts are installed for Chinese references

### Example Error Solutions

**Error**: `Citation 'key' on page X undefined`
**Solution**: Run the complete compilation sequence: `xelatex` → `bibtex` → `xelatex` → `xelatex`

**Error**: Chinese characters not displaying in bibliography
**Solution**: Ensure XeLaTeX is used for compilation and CJK fonts are properly configured
