<?php
    $naslov = "Ponuda";
    include_once('../inicijalizacija.php');


    if (isset($_POST['kreirajZalbu'])) {
        if (isset($_POST['ponudaId']) && isset($_POST['naziv']) && isset($_POST['opis'])) {
            $ponudaId = $_POST['ponudaId'];
            $naziv = $_POST['naziv'];
            $opis = $_POST['opis'];
            kreirajZalbu();
        }else {
            $poruka = ["greska" => "Niste unjeli sve  podatke"];
            echo json_encode($poruka);
        }
        
    }

    if (isset($_POST['dohvatiZalbe'])) {
        dohvatiZalbe();
    }

    if (isset($_POST['prihvatiZalbu'])) {
        if (isset($_POST['ponudaId']) && isset($_POST['status'])) {
            $zalbaId = $_POST['zalbaId'];
            $status = $_POST['status'];
            prihvatiZalbu();
        }
    }

    function kreirajZalbu() {
        global $ponudaId, $naziv, $opis;
        $korId = $_SESSION['korisnik']->get_ID();
        $status = "poslana";
        $datum = "";
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "INSERT INTO `zalbe`(`naziv`, `opis`, `status`, `korisnik_id`, `ponuda_id`) 
                VALUES ('".$naziv."', '$opis', '$status', $korId, $ponudaId);";
        $queryResult = $dbc->updateDB($sql);

        if ($queryResult) {
            zapisiDnevnik(ocistiZapis($sql), 'Kreriana žalba');
            echo 1;
        }
    }
    
    
    function dohvatiZalbe() {
        global  $order, $sort, $natjecajId;
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT z.id, z.naziv AS 'Naziv žalbe', z.opis, z.status AS 'Status žalbe', `z`.`datum_odobrenja/odijanja`, k.ime, p.naziv AS 'Naziv ponude'
                FROM zalbe z, korisnik k, ponuda p 
                WHERE z.korisnik_id = k.idkorisnik 
                AND p.idponude = z.ponuda_id";

        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }

        echo json_encode($rows);
    }

    function prihvatiZalbu() {
        
    }

?>
