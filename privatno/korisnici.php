<?php
    $naslov = "Popis korisnika";
    include_once('../inicijalizacija.php');

    $dbc = new Baza();
    $dbc->spojiDB();
    $sql = "SELECT `idkorisnik`, `kor_ime`, `ime`, `prezime`, `lozinka`, `email`  FROM korisnik;";
    $rs = $dbc->selectDB($sql);
    
    $content = array();
    while($row_user = mysqli_fetch_assoc($rs)){
        $result[] = $row_user;
    }
    foreach ($result as $row) {
        array_push($content, "<tr>");
        foreach ($row as $key => $value) {
                array_push($content, "<td>$value</td>");
            }        
        array_push($content, "</tr>");
    }

    $smarty->assign('sadrzaj', $content);
    $smarty->assign('putanja', '../');
    $smarty->display("../templates/zaglavlje.tpl");
    $smarty->display("../templates/korisnici.tpl");
    $smarty->display("../templates/podnozje.tpl");
?>