<?php
    @ include_once("../vanjske_biblioteke/baza.class.php");

    $_SESSION['pomak'] = dohvatiVrijemeServera();

    if (isset($_GET['spremiPomak']) && $_GET['spremiPomak'] == 1) {
        spremiPomak();
    }

    if (isset($_GET['ispisVremena']) && $_GET['ispisVremena'] == 1) {
        $sustav = dohvatiVrijemeSustava();
        $server = dohvatiVrijemeServera();
        $vrijeme = array('server' => $server, 'sustav' => $sustav  );
        echo json_encode($vrijeme);
    }



    function spremiPomak(){
        $dbc = new Baza();
        $dbc->spojiDB();

        $pomak = $_GET['pomak'];

        $sql = "UPDATE pomak_vremena SET `pomak`=$pomak WHERE id=1;";
        $queryResult = $dbc->updateDB($sql);
        if ($queryResult) {
            $_SESSION['vrijemeSustava'] = preracunajVrijeme("$pomak hours", dohvatiVrijemeServera());
        }
        zapisiDnevnik(ocistiZapis($sql), 'Postavljen pomak vremena');
        $dbc->zatvoriDB();
    }

    function dohvatiVrijemeSustava() {
        $dbc = new Baza();
        $dbc->spojiDB();

        $sql = "SELECT pomak FROM pomak_vremena WHERE id=1;";
        $queryResult = $dbc->selectDB($sql);
        if ($queryResult->num_rows > 0) {
            $pomak = $queryResult->fetch_array()[0];
            $_SESSION['pomak'] = $pomak;

            $vrijeme_servera = dohvatiVrijemeServera();
            $vrijeme_sustava = preracunajVrijeme("$pomak hours", $vrijeme_servera);

            return $vrijeme_sustava;
        }
            $dbc->zatvoriDB();
    }

    function dohvatiVrijemeServera() {
        $vrijeme_servera = time();
        return date('Y-m-d H:i:s', $vrijeme_servera);
    }

    function preracunajVrijeme($pomak, $vrijeme) {
        $datumString = strtotime($pomak, strtotime($vrijeme));
        return date('Y-m-d H:i:s', $datumString);
    }
?>