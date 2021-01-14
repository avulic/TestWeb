<?php
    $naslov = "Reset lozinke";
    include_once('inicijalizacija.php');
    include_once('pomocneFunkcije.php');
    $self = $_SERVER['PHP_SELF'];
    $greskaPoruka = array();

    if (isset($_POST['resetLoinke'])) {
        kreirajLozinku();
    }

    $smarty->assign("self", $self);
    $smarty->assign("greskaPoruka", $greskaPoruka);
    $smarty->display("templates/zaglavlje.tpl");
    $smarty->display("templates/reset.tpl");
    $smarty->display("templates/podnozje.tpl");


    function kreirajLozinku() {
        global $greskaPoruka;

        if (isset($_POST['korime']) && !empty($_POST['korime'])) {
            $korime = $_POST['korime'];
            $dbc = new Baza();
            $dbc->spojiDB();
            $sql = "SELECT email FROM korisnik WHERE kor_ime = '$korime'";
            $rezultat = $dbc->selectDB($sql);
            if ($rezultat->num_rows > 0) {
                $email = $rezultat->fetch_array()['email'];

                $novaLozinka = PomocneFunkcije::generirajLozinku();
                $lozinkaEncrypt = PomocneFunkcije::kriptiranje($novaLozinka);

                $poruka = "Nova lozinka: " . $novaLozinka . " http://barka.foi.hr/WebDiP/2018_projekti/WebDiP2018x149/prijava.php";
                mail($email, "Nova lozinka", $poruka, "From: avulic@foi.hr");

                $sql = "UPDATE korisnik SET lozinka= '$novaLozinka', lozinka_kriptirana= '$lozinkaEncrypt' WHERE kor_ime= '$korime'";
                $rezultat = $dbc->updateDB($sql);
                if (!$rezultat) {
                    $greskaPoruka = array_merge($greskaPoruka, array('baza' => "Problem okd spajanja na bazu. Provjerite mrežu"));
                }else {
                    zapisiDnevnik(ocistiZapis($sql), 'Korisnik je promjenio lozinku');
                }
            }else {
                $greskaPoruka = array_merge($greskaPoruka, array('korisnickoIme' => "Korisnik '$korime' ne postoji"));
            }
        }else {
            $greskaPoruka = array_merge($greskaPoruka, array('korisnickoIme' => "Niste unjeli korisničko ime"));
        }
    }
?>