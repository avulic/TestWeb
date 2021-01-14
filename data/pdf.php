<?php
if (isset($_POST['pdf_sadrzaj'])) {
    $sadrzaj = $_POST['pdf_sadrzaj'];
    $ime = $_SESSION['korisnik']->get_ime();
    $prezime = $_SESSION['korisnik']->get_prezime();
    makePDF();
}
function makePDF() {
    global $sadrzaj, $prezime, $ime;
    $p = PDF_new();
    /* open new PDF file; insert a file name to create the PDF on disk */
    if (PDF_begin_document($p, "", "") == 0) {
        die("Error: " . PDF_get_errmsg($p));
    }
    PDF_set_info($p, "Creator", "pdf_1.php");
    PDF_set_info($p, "Author", "Rainer Schaaf");
    PDF_set_info($p, "Title", "Hello world (PHP)!");
    PDF_begin_page_ext($p, 595, 842, "");
    $font = PDF_load_font($p, "Helvetica-Bold", "winansi", "");
    PDF_setfont($p, $font, 20.0);
    PDF_set_text_pos($p, 50, 800);


    $pozicija = 720;
    $broj = 1;
    $velicina = 20;
    $razmak = 0;
    PDF_setfont($p, $font, 14.0);
    PDF_set_text_pos($p, 50, $pozicija);

    while (sadrzaj)
    {
        $razmak = (($broj++) * $velicina) + 10;
        PDF_show($p, $prezime . " " . $ime);
        PDF_set_text_pos($p, 50, $pozicija - $razmak);
    }
    PDF_end_page_ext($p, "");
    PDF_end_document($p, "");
    $buf = PDF_get_buffer($p);
    $len = strlen($buf);
    header("Content-type: application/pdf");
    header("Content-Length: $len");
    header("Content-Disposition: inline; filename=pdf_1.pdf");
    print $buf;
    PDF_delete($p);
    

}
    
?>