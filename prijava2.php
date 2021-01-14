<?php
    $naslov = "Prijava";
    include('inicijalizacija.php');
    $self = $_SERVER['PHP_SELF'];
    $greskaPoruka = array();
    

    $dbc = new Baza();
    $dbc->spojiDB();

    if(isset($_POST["submit"])){
        prijava();
    }  

    if(isset($_GET['mod'])){
        odjava();
    }

    $smarty->assign("self",$self);
    $smarty->assign("greskaPoruka", $greskaPoruka);
    $smarty->display("templates/zaglavlje.tpl");
    $smarty->display("templates/prijava.tpl");
    $smarty->display("templates/podnozje.tpl");

    function prijava() {
        global $dbc, $sql, $greskaPoruka;
        
        $korIme = $_POST['korime'];
        $zaporka = $_POST['zaporka'];
        $korisnik = dohvatiKorisnika($korIme, $zaporka);
        
        if($korisnik->get_status() == 1) {
            setcookie('korIme', $korIme);
            if($korisnik->get_uloga() != "neregistriran") {
                Sesija::kreirajKorisnika($korisnik);
                zapisiDnevnik(ocistiZapis($sql), 'Korisnik se prijavio u sustav');
                header("location: index.php");
            }
        }else if($korisnik->get_status() == 0) {
            neuspjelaPrijava($korIme);
            $greskaPoruka = array_merge($greskaPoruka, array('prijava' => "Neispravni podaci"));
        }
        $dbc->zatvoriDB();
    }    

    function dohvatiKorisnika($user, $pass) {
        global $dbc, $sql, $greskaPoruka, $broj_pokusaja;
        $result = -1;
		$shaZaporka = PomocneFunkcije::kriptiranje($pass);
        $sql = "SELECT korisnik.idkorisnik, korisnik.ime, korisnik.prezime, 
				korisnik.lozinka, korisnik.broj_pokusaja, korisnik.status, korisnik.lozinka_kriptirana, uloga.naziv 
                FROM korisnik JOIN uloga ON korisnik.uloga_iduloga = uloga.iduloga WHERE kor_ime='$user' and lozikna_kriptirana='$shaZaporka'";
        $rs = $dbc->selectDB($sql);
		
        $broj = $rs->num_rows;
        $korisnik = new Korisnik();
        if ($broj == 1) {
            list($ID, $ime, $prezime, $zaporka, $broj_pokusaja, $status, $lozinka_kriptirana, $uloga) = $rs->fetch_array();         
                if ($status == 'aktiviran') {
                    $korisnik->set_podaci($user, $ime, $prezime, $zaporka, $uloga, $ID);
                    $result = 1;
                }else if($status == 'blokiran') {
                    $greskaPoruka = array_merge($greskaPoruka, array('prijava' => "Račun vam je blokiran"));
                    $result = 2;
                }else {
                    $greskaPoruka = array_merge($greskaPoruka, array('prijava' => "Morate aktivirati račun"));
                    $result = 3;
                }
        }
		else if(!$rs){
			echo("Database query failed: " . $rs);
		}
		else {
            $result = 0;
        }
        $korisnik->set_status($result);
        return $korisnik;
    }

    function neuspjelaPrijava($korIme) {
        global $dbc, $sql, $broj_pokusaja;
        if ($broj_pokusaja != 0) {
            $sql = "UPDATE korisnik SET broj_pokusaja = broj_pokusaja - 1 WHERE kor_ime = '$korIme'";
            $rezultat = $dbc->updateDB($sql);
            zapisiDnevnik(ocistiZapis($sql), 'Neuspjela prijava', $korIme);
        }if($broj_pokusaja == 0) {
            $sql = "UPDATE korisnik SET status = 'blokiran' WHERE kor_ime = '$korIme'";
            $rezultat = $dbc->updateDB($sql);
            zapisiDnevnik(ocistiZapis($sql), 'Korisnik blokiran, nakon 3 neuspjele prijave', $korIme);
        }
    }

    function odjava() {
        if (isset($_SESSION['korisnik'])) {
            zapisiDnevnik(null, 'Korisnik se odjavio');
            Sesija::obrisiSesiju();
            $poruka = "Uspješno ste se odjavili!";
            header('location: index.php');
        }
    }
?>
