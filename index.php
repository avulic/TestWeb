<?php
    $naslov = "Početna stranica";
    include('inicijalizacija.php');
    $smarty->display("templates/zaglavlje.tpl");
    $smarty->display("templates/index.tpl");
    $smarty->display("templates/podnozje.tpl");
?>  