<?php
    $naslov = "Registracija";
    include_once('inicijalizacija.php');
    include_once('data/vrijeme.php');
    $self = $_SERVER['PHP_SELF'];
    $poruke = array();
    $userfile;
    $datoteka_url;

    if (isset($_POST['submit'])) { 
        privremenoZapamtiUnesenePodatke();
        provjeraUnesenihPodataka();
    }


    $smarty->assign("self",$self);
    $smarty->assign("poruke",$poruke);
    $smarty->display("templates/zaglavlje.tpl");
    $smarty->display("templates/registracija.tpl");
    $smarty->display("templates/podnozje.tpl");

    function provjeraUnesenihPodataka() {
        global $poruke;
        provjeraPrijenosaDatoteke();
        if (isset($_POST['zaporka']) && !empty($_POST['zaporka'])) {
            if (strlen($_POST['zaporka']) < 5) {
                generirajPorukuZaPrikaz('zaporka', 'Zaporka mora sadrzavati min 5 znakova');
            }
        }else {
            generirajPorukuZaPrikaz('zaporka', 'Zaporka nesmije biti prazna');
        }
        
        if (isset($_POST['zaporka2']) && !empty($_POST['zaporka2'])) {
            if (strcmp($_POST['zaporka'], $_POST['zaporka2'])) {
                generirajPorukuZaPrikaz('zaporka2', 'Zaporke se ne podudaraju');
            }
        }else {
            generirajPorukuZaPrikaz('zaporka2', 'Ponovljena zaporka nesmije biti prazno');
        }
        
        if (isset($_POST['email']) && !empty($_POST['email'])) {
            $regexMail = '/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/';
            if (!preg_match($regexMail, $_POST['email'])) {
                generirajPorukuZaPrikaz('email', 'email je neispravnog formata');
            }
        }else {
            generirajPorukuZaPrikaz('email', 'Email nesmije biti prazno');
        }
        if (isset($_POST['ime'])) {
            if (!empty($_POST['ime'])) {
                if ($_POST['ime'][0] != strtoupper($_POST['ime'][0])) {
                    generirajPorukuZaPrikaz('ime', 'Prvo slovo imena mora biti veliko!');
                }
            }else {
                generirajPorukuZaPrikaz('ime', 'Ime nesmije biti prazno');
            }
        }
        if(isset($_POST['prezime'])){
            if (!empty($_POST['prezime'])) {
                if ($_POST['prezime'][0] != strtoupper($_POST['prezime'][0])) {
                    generirajPorukuZaPrikaz('prezime', 'Prvo slovo prezimena mora biti veliko!');
                }
            }else {
                generirajPorukuZaPrikaz('prezime', 'Prezime nesmije biti prazno');
            }
        }
        if (isset($_POST['korime'])) {
            if (!empty($_POST['korime'])) {
                $dbc = new Baza();
                $dbc->spojiDB();
    
                $korIme = $_POST['korime'];
                $sql = "SELECT kor_ime FROM korisnik WHERE kor_ime='".$korIme."';";
                $rs = $dbc->selectDB($sql);
                $broj = $rs->num_rows;
                if ($broj >= 1) {
                    generirajPorukuZaPrikaz('korime', 'Korisničko ime je zauzeto');
                }
                $dbc->zatvoriDB();
            }
        }
        
        if (count($poruke) == 0) {
            pohranaUBazu();
        }
    }

    function pohranaUBazu() {
        global $poruke, $userfile, $datoteka_url;

        if (count($poruke) == 0 && isset($_POST['submit'])) {
            $dbc = new Baza();
            $dbc->spojiDB();

            $ime = $_POST['ime'];
            $prezime = $_POST['prezime'];
            $korIme = $_POST['korime'];
            $lozinka = $_POST['zaporka'];
            $email = $_POST['email'];
            $token = PomocneFunkcije::generirajLozinku();
            $lozinka_kriptirana = PomocneFunkcije::kriptiranje($lozinka);
            $datum_registracije = dohvatiVrijemeSustava();
            
            $token_rok = preracunajVrijeme("7 hours", dohvatiVrijemeSustava());
            $status = 'neaktiviran';
            $uloga_sql = "SELECT iduloga FROM uloga WHERE naziv='neregistriran'";
            
            $sql = "INSERT INTO korisnik(`ime`, `prezime`, `kor_ime`, `lozinka`, `email`, `token`, `lozinka_kriptirana`, `vrijeme_registracije`, `status`, `uloga_iduloga`, `slika_url`, token_rok) 
                    VALUES('".$ime."','".$prezime."', '".$korIme."', '".$lozinka."','".$email."','".$token."','".$lozinka_kriptirana."','".$datum_registracije."','".$status."', ($uloga_sql), '".$datoteka_url."' , '".$token_rok."');";

            $rs = $dbc->updateDB($sql);
            if ($rs) {
                zapisiDnevnik(ocistiZapis($sql), 'Uspješna registracija', $korIme);
                $message = "
                        Aktivirajte svoj korisnicki racun klikom na link:
                        
                        http://barka.foi.hr/WebDiP/2018_projekti/WebDiP2018x149/potvrdaRacuna.php?korime=$korIme&token=$token";
                mail($email, "Aktivacija korisnickog racuna", $message, "From: avulic@foi.hr");

                prenesiDatoteku($userfile, $datoteka_url);
                $poruka = 'Mail s aktivacijskim kodom je poslan na email:' .$email . '<br/> Da bi se prijavili u sustav prvo morate aktivirati raćun.';
                PomocneFunkcije::redirekt('index.php', $poruka);
            }
            $dbc->zatvoriDB();
        }
    }

    function privremenoZapamtiUnesenePodatke() {
        if (isset($_POST)) {
            foreach ($_POST as $key => $value) {
                setcookie($key, $value);
            }
        }
    }

    function generirajPorukuZaPrikaz($element, $poruka) {
        global $poruke;
        $poruka  = "<p class='greska-poruka'>" . $poruka . "</p>";
        $poruke = array_merge($poruke, array($element => $poruka));
    }

    function provjeraPrijenosaDatoteke() {
        global $userfile, $datoteka_url;

        if(isset($_FILES['imageUpload'])){
            if(($_FILES['imageUpload']['size'] != 0)){
                if(($_FILES['imageUpload']['error']) == 0){
                    $file = $_FILES['imageUpload']['tmp_name'];
                    $naziv = $_FILES['imageUpload']['name'];
                    $velicina = $_FILES['imageUpload']['size'];
                    $tip = strtolower($_FILES['imageUpload']['type']);
                    
                    if(!(($tip == 'image/jpg') || ($tip == 'image/png'))) {
                        generirajPorukuZaPrikaz('datoteka', 'Dozvoljeni su samo JPG i PNG tipovi datoteka');
                    }

                    $userfile = $_FILES['imageUpload']['tmp_name'];
                    $naziv = $_FILES['imageUpload']['name'];
                    $datoteka_url = 'slike/' . $naziv;
                }else {
                    $greskaPrijenosa = $_FILES['imageUpload']['error'];
                
                    if ($greskaPrijenosa > 0) {
                        switch ($greskaPrijenosa) {
                            case 2: 
                                generirajPorukuZaPrikaz('datoteka', 'Veličina veća od ' . ini_get("upload_max_filesize") . 'B');
                                break;
                            case 3: 
                                generirajPorukuZaPrikaz('datoteka', 'Datoteka djelomično prenesena');
                                break;
                            case 4: 
                                generirajPorukuZaPrikaz('datoteka', 'Datoteka nije prenesena');
                                break;
                        }
                    }
                }
            }else {
                $userfile = null;
                $datoteka_url = 'slike/avatar-default.png';
            }
        }
    }

    function prenesiDatoteku($userfile, $upfile) {
        if (isset($userfile) && is_uploaded_file($userfile)) {
            if (!move_uploaded_file($userfile, $upfile)) {
                generirajPorukuZaPrikaz('datoteka', 'Problem: nije moguće prenijeti datoteku na odredište');
            }
        } 
    }

?>