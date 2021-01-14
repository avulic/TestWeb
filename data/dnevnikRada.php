<?php
    $naslov = "Natjecaji";
    include('../inicijalizacija.php');


    if (isset($_GET['dohvatiDnevnikRada'])) {
        if (isset($_GET['order'])) {
            $order = $_GET['order'];
        }else {
            $order = 'id';
        }

        if (isset($_GET['sort'])) {
            $sort = $_GET['sort'];
        }else {
            $sort = 'DESC';
        }
        dohvatiDnevnikRada();
    }
    
    function dohvatiDnevnikRada(){
        global  $order, $sort;
        $dbc = new Baza();
        $dbc->spojiDB();
        $sql = "SELECT * FROM `dnevnk_rada`;";

        $queryResult = $dbc->selectDB($sql);

        $rows = array();
        while ($row = mysqli_fetch_assoc($queryResult)) {
            $rows[] = $row;
        }

        echo json_encode($rows);
    }
?>
