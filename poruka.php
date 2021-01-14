<?php
    $naslov = "Poruka";
    include('inicijalizacija.php');
    $self = $_SERVER['PHP_SELF'];

    if ($_GET['greska']) {
        $poruka = $_GET['greska'];
    }

    $smarty->assign("poruka",$poruka);
    $smarty->display("templates/zaglavlje.tpl");
    $smarty->display("templates/poruka.tpl");
    $smarty->display("templates/podnozje.tpl");
?>