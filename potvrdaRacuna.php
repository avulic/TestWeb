<?php
    $naslov = "Prijava";
    include_once('inicijalizacija.php');
    
    $self = $_SERVER['PHP_SELF'];


    if (isset($_GET['token']) && isset($_GET['korime'])) {
        aktivirajKorisnika();
    }

    function aktivirajKorisnika() {
        $dbc = new Baza();
        $dbc->spojiDB();
        
        $korime = $_GET['korime'];
        $token = $_GET['token'];

        $sql = "SELECT token, token_rok FROM korisnik WHERE kor_ime ='$korime'";
        $rs = $dbc->selectDB($sql);
        
        $broj = $rs->num_rows;
        if ($broj == 1) {
            list($tokenDB, $token_rok) = $rs->fetch_array();

            if ($tokenDB == '') {
                $poruka = "Korisnicki racun vec je aktiviran!";
                PomocneFunkcije::redirekt("index.php", $poruka);
                zapisiDnevnik(ocistiZapis($sql), 'Pokusaj aktivacije aktiviranog racuna');
            }
            
            if (dohvatiVrijemeSustava() > $token_rok) {
                $poruka = ">Aktivacijski je kod istekao!";
                PomocneFunkcije::redirekt("index.php", $poruka);
                zapisiDnevnik(ocistiZapis($sql), 'Pokusaj aktivacije s isteklim tokenom');
            } else {
                if ($token == $tokenDB) {
                    $uloga_sql = "SELECT iduloga FROM uloga WHERE naziv='registriran'";
                    $sql = "UPDATE korisnik SET status='aktiviran', token='', token_rok='', uloga_iduloga=($uloga_sql) WHERE kor_ime = '$korime'";

                    $rez = $dbc->updateDB($sql);
                    if ($rez) {
                        zapisiDnevnik(ocistiZapis($sql),'uspjesna aktivacija korisnickog racuna', $korime);
                        $poruka = "Vaš korisnički račun je aktiviran.";
                        PomocneFunkcije::redirekt("index.php", $poruka);
                    }
                }
            }
        }
    }
?>