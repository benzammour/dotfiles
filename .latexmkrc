$pdf_previewer = 'open -a Skim';
$pdflatex = "pdflatex -synctex=1  -halt-on-error %O %S";
$pdf_mode = 1;
@generated_exts = (@generated_exts, 'synctex.gz');
add_cus_dep('glo', 'gls', 0, 'makeglo2gls');
sub makeglo2gls {
    system("makeindex -s '$_[0]'.ist -t '$_[0]'.glg -o '$_[0]'.gls '$_[0]'.glo");
}
