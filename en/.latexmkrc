# LaTeX compilation settings for typesetting project

# Set PDF as the default output format
$pdf_mode = 1;

# Use pdflatex for PDF generation
$pdflatex = 'pdflatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';

# Use bibtex for bibliography processing
$bibtex = 'bibtex %O %B';

# Use makeindex for index generation
$makeindex = 'makeindex %O -o %D %S';

# Extra file extensions to clean
$clean_ext = 'synctex.gz(busy) run.xml tex.bak bbl bcf fdb_latexmk run tdo %R-blx.bib';


