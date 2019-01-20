$pdf_previewer = 'open -a Skim';
$pdflatex = "pdflatex -synctex=1  -halt-on-error %O %S";
$pdf_mode = 1;
@generated_exts = (@generated_exts, 'synctex.gz');
