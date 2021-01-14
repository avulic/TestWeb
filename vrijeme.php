<?php
    $naslov = "PomakVremena";
    include('inicijalizacija.php');
    $self = $_SERVER['PHP_SELF'];
    $poruke = array();


    $smarty->assign("self",$self);
    $smarty->assign("poruke",$poruke);
    $smarty->display("templates/zaglavlje.tpl");
    $smarty->display("templates/vrijeme.tpl");
    $smarty->display("templates/podnozje.tpl");

?>