<?php
include_once('inicijalizacija.php');
function zapisiDnevnik($upit, $poruka, $korisnik = "") {
    $dbc = new Baza();
    $dbc->spojiDB();

    if (isset($_COOKIE['pomak_vremena'])) {
        $pomak_vremena = $_COOKIE['pomak_vremena'];
    }
    $datum = dohvatiVrijemeSustava();
    $sql_upit = $upit;
    $ip = $_SERVER["REMOTE_ADDR"];;
    $opis = $poruka;
    $korisnik = Sesija::dajKorisnika() ? Sesija::dajKorisnika()->get_kor_ime() : $korisnik;
    $skripta = $_SERVER["REQUEST_URI"];
    $pomak = 1;

    $sql = "INSERT INTO `dnevnk_rada`(`datum_vrijeme`, `sql_upit`, `ip_adresa`, `opsi`, `korisnik`, `pomak`, `skripta`) values " . "('$datum' , '$sql_upit', '$ip',  '$opis', '$korisnik', $pomak, '$skripta')";

    $rs = $dbc->selectDB($sql);
    if (!$rs) {
        trigger_error("Problem kod upisa u bazu podataka!");
    }
}


function ocistiZapis($string) {
    $str = str_replace(' ', '-', $string);
    return preg_replace('/[^A-Za-z0-9\-]/', '', $str);
}
?>