<?php
    include_once('vanjske_biblioteke/Smarty-3.1.21/libs/Smarty.class.php');
    include_once('vanjske_biblioteke/sesija.class.php');
    include_once('vanjske_biblioteke/baza.class.php');
    include_once('vanjske_biblioteke/korisnik.class.php');
    include_once('dnevnik.php');
    include_once('pomocneFunkcije.php');
    include_once('data/vrijeme.php');
    error_reporting(E_ALL);

    define("ROOT_PATH", "http://" . $_SERVER["SERVER_NAME"] . "/WebDiP/2018_projekti/WebDiP2018x149/");

    $smarty = new Smarty();
    $smarty->assign('naslov', $naslov);

    Sesija::kreirajSesiju();
    $vrijemSustava = dohvatiVrijemeSustava();
    $smarty->assign('vrijemSustava', $vrijemSustava);
?>