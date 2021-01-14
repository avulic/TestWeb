<?php
    $naslov = "Obrt";
    include('../inicijalizacija.php');


    if (isset($_GET['dohvatiObrte'])) {
        if (isset($_GET['order'])) {
            $order = $_GET['order'];
        }else {
            $order = 'idobrt';
        }

        if (isset($_GET['sort'])) {
            $sort = $_GET['sort'];
        }else {
            $sort = 'ASC';
        }
        dohvatiObrte();
    }

    if (isset($_GET['dohvatiObrt'])) {
        dohvatiObrt();
    }
    
    if (isset($_POST['kreirajObrt'])) {
        if (!empty($_POST['korisikId']) && !empty($_POST['naziv'])) {
            $korisikId = $_POST['korisikId'];
            $naziv = $_POST['naziv'];
            spremiObrt();
        }else {
            $poruka = ["greska" => "Niste unjeli sve  podatke"];
            echo json_encode($poruka);
        }
        
    }

    if (isset($_POST['azuriranjeObrta'])) {
        if (!empty($_POST['korId']) && !empty($_POST['naziv']) && !empty($_POST['obrtId']) ) {
            $korisikId = $_POST['korId'];
            $naziv = $_POST['naziv'];
            $obrtId = $_POST['obrtId'];
            azurirajObrt();
        }else {
            $poruka = ["greska" => "Niste unjeli sve  podatke"];
            echo json_encode($poruka);
        }
        
    }

    if (isset($_POST['izbrisiObrt'])) {
        if (!empty($_POST['obrtId'])) {
            $obrtId = $_POST['obrtId'];
            izbrisiObrt();
        }
    }

    if (isset($_POST['dodajModeratora'])) {
        if (!empty($_POST['obrtId']) && !empty($_POST['korisnikId'])) {
            $korisnikId = $_POST['korisnikId'];
            $obrtId = $_POST['obrtId'];
            dodajModeratora();
        }
    }


    function dohvatiObrte(){
        global  $order, $sort;
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT o.idobrt, o.naziv, k.ime, k.kor_ime FROM obrt o JOIN korisnik k ON o.korisnik_id = k.idkorisnik
                ORDER BY $order $sort";

        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }

        echo json_encode($rows);
    }
    

    function dohvatiObrt(){
        global  $order, $sort;
        $obrtNaziv = $_GET["obrtNaziv"];
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT o.idobrt, o.naziv, k.ime as 'Vlasnik' FROM obrt o, korisnik k 
                WHERE k.idkorisnik = o.korisnik_id
                AND o.naziv = '".$obrtNaziv."'";
        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }

        echo json_encode($rows);
    }

    function spremiObrt(){
        global $korisikId, $naziv;

        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "INSERT INTO `obrt`(`naziv`, `korisnik_id`) VALUES ('$naziv', '$korisikId');";
        $queryResult = $dbc->updateDB($sql);

        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Kreiran obrt');
            echo 1;
        }
    }

    function azurirajObrt() {
        global $korisikId, $naziv, $obrtId;
        
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "UPDATE `obrt` SET `naziv`='$naziv', `korisnik_id`= $korisikId WHERE `idobrt`= $obrtId;";
        $queryResult = $dbc->updateDB($sql);

        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Obrt azurirana');
            echo 1;
        }
    }

    function izbrisiObrt() {
        global $obrtId;
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "DELETE FROM obrt WHERE idobrt = $obrtId;";
        $queryResult = $dbc->updateDB($sql);

        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Obrt izbrisana');
            echo 1;
        }
    }

    function dodajModeratora() {
        global $korisnikId, $obrtId;

        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "INSERT INTO `moderator_obrta`(`obrt_id`, `korisnik_id`) VALUES ($obrtId, $korisnikId );";
        $queryResult = $dbc->updateDB($sql);

        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Kreirana nova moderator obrta');
            echo 1;
        }
    }
    
?>
