<?php
    $naslov = "Ponuda";
    include_once('../inicijalizacija.php');


    if (isset($_POST['pohraniPonudu'])) {
        if (!empty($_POST['natjecajId']) && !empty($_POST['naziv']) && !empty($_POST['opis'])) {
            $natjecajId = $_POST['natjecajId'];
            $naziv = $_POST['naziv'];
            $opis = $_POST['opis'];
            pohraniPonudu();
        }else {
            $poruka = ["greska" => "Niste unjeli sve  podatke"];
            echo json_encode($poruka);
        }
        
    }
    if (isset($_POST['dohvatiPonude'])) {
        dohvatiPonude();
    }

    if (isset($_GET['dohvatiPonudeNatjecaja'])) {
        if (isset($_GET['natjecajId'])) {
            $natjecajId = $_GET['natjecajId'];
        }else {
            $natjecajId = null;
        }

        if (isset($_GET['order'])) {
            $order = $_GET['order'];
        }else {
            $order = 'idponude';
        }

        if (isset($_GET['sort'])) {
            $sort = $_GET['sort'];
        }else {
            $sort = 'ASC';
        }
        dohvatiPonudeNatjecaja();
    }

    if (isset($_GET['dohvatiPonuduKorisnika'])) {
        dohvatiPonuduKorisnika();
    }
    
    if (isset($_POST['azurirajPonudu'])) {
        if (!empty($_POST['ponudaId']) && !empty($_POST['naziv']) && !empty($_POST['opis']) && !empty($_POST['status'])) {
            $ponudaId = $_POST['ponudaId'];
            $naziv = $_POST['naziv'];
            $opis = $_POST['opis'];
            $status = $_POST['status'];
            azurirajPonudu();
        }else {
            $poruka = ["greska" => "Niste unjeli sve podatke"];
            echo json_encode($poruka);
        }
        
    }


    if (isset($_POST['izbrisiPonudu'])) {
        if (!empty($_POST['ponudaId'])) {
            $ponudaId = $_POST['ponudaId'];
            izbrisiPonudu();
        }
    }

    function dohvatiPonudeNatjecaja(){
        global  $order, $sort, $natjecajId;
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT k.slika_url, p.idponude as 'Br', p.naziv as 'Naziv ponude', k.ime as 'Ime natjecatelja', p.opis FROM ponuda p, korisnik k, dobitnici_natjecaja dn, natjecaj n
                WHERE dn.korisnik_id = p.korisnik_id 
                AND dn.natjecaj_id = p.natječaj_id 
                AND p.korisnik_id = k.idkorisnik
                AND n.idnatjecaj = $natjecajId
                AND p.natječaj_id = $natjecajId
                GROUP BY k.ime
                ORDER BY RAND()
                LIMIT 1";

        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }

        echo json_encode($rows);
    }

    function dohvatiPonuduKorisnika(){
        global  $order, $sort;
        $korId = $_SESSION['korisnik']->get_ID();
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT `p`.`idponude` as `Br.`, `p`.`naziv` as `Ponude`, `n`.`naziv` as `Natječaj`, `p`.`status` as `Status`, `p`.`opis` as `Opis`, `n`.`zalbe_do` AS `Žalbe do`
                FROM (`ponuda` `p`, `natjecaj` `n`, `korisnik` `k`)
                WHERE `p`.`natječaj_id` = `n`.`idnatjecaj`
                AND `p`.`korisnik_id` = '".$korId."'
                GROUP BY `p`.`idponude`";
        
        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }

        echo json_encode($rows);
    }

    function dohvatiPonude() {
        global  $order, $sort;
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT p.idponude as 'Br', k.slika_url, n.naziv AS 'Naziv natječaja', p.naziv as 'Naziv ponude', k.ime as 'Ime natjecatelja', 
        p.opis, p.status, n.zalbe_do AS 'Rok za žalbu', n.ponude_do AS 'Rok za ponudu', n.broj_dobitnika
                FROM ponuda p, korisnik k, natjecaj n
                WHERE p.natječaj_id = n. idnatjecaj 
                AND p.korisnik_id = k.idkorisnik
                ORDER BY n.idnatjecaj";

        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }

        echo json_encode($rows);
    }

    function pohraniPonudu() {
        global $natjecajId, $naziv, $opis;
        $korIme = $_SESSION['korisnik']->get_kor_ime();
        $korisnik_sql = "SELECT idkorisnik FROM korisnik WHERE kor_ime= '".$korIme."'";
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "INSERT INTO `ponuda`(`naziv`, `natječaj_id`, `korisnik_id`, `status`, `opis`) VALUES ('".$naziv."', $natjecajId, ($korisnik_sql), 'poslana', '".$opis."');";
        $queryResult = $dbc->updateDB($sql);

        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Spremljena ponuda');
            echo 1;
        }
    }
    
    function azurirajPonudu(){
        global $ponudaId, $naziv, $opis, $status;
        $korIme = $_SESSION['korisnik']->get_kor_ime();
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "UPDATE ponuda SET naziv = '$naziv', opis = '$opis', status = '$status' WHERE idponude = $ponudaId;";
        $queryResult = $dbc->updateDB($sql);

        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Ponuda azurirana');
            echo 1;
        }
    }


    function izbrisiPonudu() {
        global $ponudaId;
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "DELETE FROM ponuda WHERE idponude = $ponudaId;";
        $queryResult = $dbc->updateDB($sql);

        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Ponuda izbrisana');
            echo 1;
        }
    }
?>
