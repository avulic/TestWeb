<?php
    $naslov = "Natjecaji";
    include('../inicijalizacija.php');

    
    if (isset($_GET['dohvatiNatjecaje'])) {
        if (isset($_GET['order'])) {
            $order = $_GET['order'];
        }else {
            $order = 'idnatjecaj';
        }

        if (isset($_GET['sort'])) {
            $sort = $_GET['sort'];
        }else {
            $sort = 'DESC';
        }
        dohvatiNatjecaje();
    }

    if (isset($_GET['dohvatiNatjecaj'])) {
        dohvatiNatjecaj();
    }

    if (isset($_GET['dohvatiNatjecajeModerator'])) {
        if (isset($_GET['order'])) {
            $order = $_GET['order'];
        }else {
            $order = 'idnatjecaj';
        }

        if (isset($_GET['sort'])) {
            $sort = $_GET['sort'];
        }else {
            $sort = 'DESC';
        }
        dohvatiNatjecajeModerator();
    }

    if (isset($_POST['promjeniStatusNatjecaja'])) {
        if (isset($_POST['natjecajId']) && isset($_POST['status'])) {
            $natjecajId = $_POST['natjecajId'];
            $status = $_POST['status'];
            promjeniStatusNatjecaja();
        }else {
            $poruka = ["greska" => "Niste unjeli sve podatke"];
            echo json_encode($poruka);
        }
    }
    
    if (isset($_POST['kreirajNatjecaj'])) {
        if (!empty($_POST['obrtId']) && !empty($_POST['naziv']) && !empty($_POST['opis']) && !empty($_POST['ponudeOd']) && !empty($_POST['ponudeDo']) && !empty($_POST['zalbeDo']) && !empty($_POST['zalbeOd']) && !empty($_POST['vrsta']) && isset($_POST['brojDobitnika'])) {
            $obrtId = $_POST['obrtId'];
            $naziv = $_POST['naziv'];
            $opis = $_POST['opis'];
            $ponudeOd = $_POST['ponudeOd'];
            $ponudeDo = $_POST['ponudeDo'];
            $zalbeDo = $_POST['zalbeDo'];
            $zalbeOd = $_POST['zalbeOd'];
            $vrsta = $_POST['vrsta'];
            $brojDobitnika = $_POST['brojDobitnika'];
            kreirajNatjecaj();
        }else {
            $poruka = array("greska" => "Niste unjeli sve podatke");
            echo json_encode($poruka);
        }
    }

    if (isset($_POST['dohvatiVrsteNatjecaja'])) {
        dohvatiVrsteNatjecaja();
    }

    if (isset($_POST['postaviPobjednike'])) {
        if (isset($_POST['ponudaId'])) {
            $ponudaId = $_POST['ponudaId'];
            postaviPobjednike();
        }        
    }

    if (isset($_POST['kreirajVrstuNatjecaj'])) {
        if (!empty($_POST['naziv'])) {
            $naziv = $_POST['naziv'];
            kreirajVrstuNatjecaj();
        }    
    }

    if (isset($_POST['azurirajVrstuNatjecaja'])) {
        if (!empty($_POST['naziv']) && !empty($_POST['vrstaId'])) {
            $naziv = $_POST['naziv'];
            $vrstaNatjecajaId = $_POST['vrstaId'];
            azurirajVrstuNatjecaja();
        }   
    }

    if (isset($_POST['obrisiVrstuNatjecaja'])) {
        
        if (isset($_POST['vrstaId'])) {
            $vrstaNatjecajaId = $_POST['vrstaId'];
            obrisiVrstuNatjecaja();
        }    
    }

    function dohvatiNatjecaje(){
        global  $order, $sort;
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT n.idnatjecaj as 'br.', n.naziv as 'naziv natječaja', n.opis, o.naziv as 'naziv obrta', n.ponude_od as 'Prihvat ponuda', n.ponude_do as 'Rok za ponuda'
                FROM natjecaj n, obrt o, korisnik k, vrsta_natjecaja vrsta
                WHERE n.obrt_id = o.idobrt
                AND n.vrsta_natjecaja_id = vrsta.idvrsta_natjecaja
                AND n.zakljucan = 0
                GROUP BY n.idnatjecaj 
                ORDER BY $order $sort";

        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }

        echo json_encode($rows);
    }

    function dohvatiNatjecaj(){
        global  $order, $sort;
        $idnatjecaj = $_GET["natjecajId"];
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT n.idnatjecaj as 'Br', n.naziv as 'naziv natječaja', n.opis, `ponude_od` as 'Prihvat ponuda', `ponude_do` as 'Rok za ponuda', `broj_dobitnika`, `zalbe_od` as 'Prihvat zalbi', `zalbe_do` as 'Rok za zalbe',
                        o.naziv as 'naziv obrta', k.ime as 'ime moderatora', vrsta.vrsta as 'vrsta natječaja' 
                FROM natjecaj n, obrt o, korisnik k, moderator_natječaja mn, vrsta_natjecaja vrsta 
                WHERE n.moderator_natjecaja = mn.id 
                AND mn.natjecaj_id = n.idnatjecaj
                AND mn.korisnik_idkorisnik = k.idkorisnik
                AND n.obrt_id = o.idobrt
                AND n.vrsta_natjecaja_id = vrsta.idvrsta_natjecaja
                AND n.idnatjecaj = $idnatjecaj
                GROUP BY n.idnatjecaj";

        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }

        echo json_encode($rows);
    }

    function dohvatiNatjecajeModerator() {
        global  $order, $sort;
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT n.idnatjecaj as 'br.', n.naziv as 'naziv natječaja', n.opis, o.naziv as 'naziv obrta', (CASE WHEN n.zakljucan = 0 THEN 'otkljucan' ELSE 'zakljucan' END) AS 'status', n.ponude_od as 'Prihvat ponuda', n.ponude_do as 'Rok za ponuda', n.zalbe_do as 'Rok za žalbu'
                FROM natjecaj n, obrt o, korisnik k, vrsta_natjecaja vrsta 
                WHERE n.obrt_id = o.idobrt
                AND n.vrsta_natjecaja_id = vrsta.idvrsta_natjecaja
                GROUP BY n.idnatjecaj 
                ORDER BY $order $sort";

        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }

        echo json_encode($rows);
    }

    function promjeniStatusNatjecaja() {
        global $natjecajId, $status;

        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "UPDATE natjecaj SET zakljucan = $status WHERE idnatjecaj = $natjecajId;";
        $queryResult = $dbc->updateDB($sql);

        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Promjenjen status natjecaja');
            echo 1;
        }
    }

    function postaviPobjednike() {
        global $ponudaId;

        $natjecajIdSql = "SELECT natječaj_id, korisnik_id, $ponudaId FROM ponuda WHERE idponude = $ponudaId";
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "INSERT INTO dobitnici_natjecaja(natjecaj_id, korisnik_id, ponuda_id) $natjecajIdSql";
        $queryResult = $dbc->updateDB($sql);

        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Postavljen pobjednik natjecaja');
            echo 1;
        }
    }

    function kreirajNatjecaj() {
        global $obrtId, $naziv, $opis, $ponudeOd, $ponudeDo, $zalbeDo, $zalbeOd, $vrsta, $brojDobitnika;

        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "INSERT INTO `natjecaj`(`naziv`, `opis`, `ponude_od`, `ponude_do`, `vrsta_natjecaja_id`, `broj_dobitnika`, `zalbe_od`, `zalbe_do`, `obrt_id`, `moderator_natjecaja`)
                VALUES('$naziv', '$opis', '$ponudeOd', '$ponudeDo', $vrsta, $brojDobitnika, '$zalbeOd', '$zalbeDo', $obrtId, null);";
        $queryResult = $dbc->updateDB($sql);
        
        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Kreiraj novi natjecaj');
            echo 1;
        }
    }

    function dohvatiVrsteNatjecaja() {
        global  $order, $sort;
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT * FROM vrsta_natjecaja";
        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }

        echo json_encode($rows);
    }

    function azurirajVrstuNatjecaja() {
        global $naziv, $vrstaNatjecajaId;

        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "UPDATE vrsta_natjecaja SET vrsta = '$naziv' WHERE idvrsta_natjecaja = $vrstaNatjecajaId;";
        $queryResult = $dbc->updateDB($sql);

        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Ažurirana vrsta natjecaja');
            echo 1;
        }
    }

    function obrisiVrstuNatjecaja() {
        global $naziv, $vrstaNatjecajaId;

        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "DELETE FROM vrsta_natjecaja WHERE idvrsta_natjecaja = $vrstaNatjecajaId;";
        $queryResult = $dbc->updateDB($sql);

        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Obrisana vrsta natjecaja');
            echo 1;
        }else {
            $poruka = array("greska","Postoji natječajs ovom vrstom");
            echo $poruka;
        }
    }

    function kreirajVrstuNatjecaj() {
        global $vrstaNatjecajaId, $naziv;

        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "INSERT INTO `vrsta_natjecaja`(`vrsta`) VALUES ('$naziv');";
        $queryResult = $dbc->updateDB($sql);

        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Kreirana nova vrsta natjecaja');
            echo 1;
        }
    }
?>
