<?php
    $naslov = "Registracija";
    include('../inicijalizacija.php');
    if (isset($_GET['dohvatiKorisnickaImena'])) {
        dohvatiKorisnickaImena();
    }
    if (isset($_GET['dohvatiKorisnike'])) {
        dohvatiKorisnike();
    }
    if (isset($_POST['promjeniStatuskorisniku'])) {
        promjeniStatuskorisniku();
    }

    if (isset($_POST['ispisModeratora'])) {
        ispisModeratora();
    }

    if (isset($_POST['dohvatiModeratore'])) {
        dohvatiModeratore();
    }

    if (isset($_POST['dohvatiUloga'])) {
        dohvatiUloga();
    }

    if (isset($_POST['postaviUloguKorisniku'])) {
        if (!empty($_POST['korisnikId']) && !empty($_POST['ulogaId'])) {
            $ulogaId = $_POST['ulogaId'];
            $korisnikId = $_POST['korisnikId'];
            postaviUloguKorisniku();
        }
        
    }

    function dohvatiKorisnickaImena() {
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT kor_Ime FROM korisnik";
        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = $queryResult->fetch_array()) {
            $rows[] = $row;
        }
        echo json_encode($rows);
    }

    function dohvatiKorisnike(){
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT korisnik.idkorisnik as id, korisnik.ime,  korisnik.kor_ime, korisnik.prezime, uloga.naziv, korisnik.status, uloga.naziv as uloga FROM korisnik JOIN uloga ON korisnik.uloga_iduloga = uloga.iduloga;";

        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }
        echo json_encode($rows);
    }

    function promjeniStatuskorisniku() {
        $dbc = new Baza();
        $dbc->spojiDB();

        $idKorisnik = $_POST['idKorisnik'];
        $status = $_POST['status'];

        $sql = "UPDATE korisnik SET `status`='$status' WHERE idkorisnik=$idKorisnik;";
        $queryResult = $dbc->updateDB($sql);
        
        if ($queryResult) {
            echo json_encode($status);
            zapisiDnevnik(ocistiZapis($sql), 'Promjenjen status korisnika');
        }
        $dbc->zatvoriDB();
    }

    function ispisModeratora() {
        global  $order, $sort;
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT m.id, o.naziv, k.ime, k.kor_ime FROM moderator_obrta m, korisnik k, obrt o WHERE m.obrt_id = o.idobrt AND m.korisnik_id = k.idkorisnik AND k.uloga_iduloga=2";

        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }

        echo json_encode($rows);
    }

    function dohvatiModeratore() {
        global  $order, $sort;
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT `idkorisnik`, `ime`, `prezime`, `kor_ime` FROM `korisnik` WHERE `uloga_iduloga`=2";

        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }

        echo json_encode($rows);
    }

    function dohvatiUloga() {
        global  $order, $sort;
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT * FROM `uloga`;";

        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }

        echo json_encode($rows);
    }

    function postaviUloguKorisniku() {
        global $ulogaId, $korisnikId;

        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "UPDATE korisnik SET uloga_iduloga = $ulogaId WHERE idkorisnik = $korisnikId;";
        $queryResult = $dbc->updateDB($sql);

        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Uloga promjenjena');
            echo 1;
        }
    }
?>