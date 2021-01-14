<?php
class PomocneFunkcije {
    static function provjeraDopustenjaPristupa($stranica, $dozvole) {
        if (isset($_SESSION['korisnik'])) {
            $korisnik = $_SESSION['korisnik'];
            $uloga = $korisnik->get_uloga();
            if(!in_array($uloga, $dozvole)) {
                header('location: index.php');
            }
        }
        else {
            header('location: index.php');
        }
    }

    static function kriptiranje($lozinka)
    {
        $sol = "04qLM64TdVoclZYZLRPx";
        $lozinka = $lozinka . $sol;
        $lozinkaKriptirana = sha1($lozinka);

        return $lozinkaKriptirana;
    }

    static function generirajLozinku() {
        $novaLozinka = str_shuffle("9t934tz954zt2gj253t89ng5vjiczgn3nt78238");
        $novaLozinka = substr($novaLozinka, 0, 10);
        return $novaLozinka;
    }

    static function redirekt($location, $poruka = null) {
        if (isset($poruka)) {
            header('location: poruka.php?greska='. $poruka);
        }else {
            header('location: '.$location);
        }
        
    }
}    
?>