#!/usr/bin/env perl

# PDF compilation settings
$pdf_mode = 5;  # Use XeLaTeX
$xelatex = "xelatex -synctex=1 -interaction=nonstopmode -file-line-error -shell-escape %O %S";

# Bibliography settings
$bibtex = "bibtex %O %B";
$bibtex_use = 2;

# Clean file extensions
$clean_ext = "nav snm aux bbl blg brf idx ilg ind lof log lol lot out toc  fdb_latexmk fls ";
