<?php /* Smarty version Smarty-3.1.21-dev, created on 2019-06-11 12:39:38
         compiled from "templates/zaglavlje.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3135418985cf45740427433-02884998%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3f6d6a98c6622226e3744cd6ffcc6c8b79ebe3ae' => 
    array (
      0 => 'templates/zaglavlje.tpl',
      1 => 1560249572,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3135418985cf45740427433-02884998',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.21-dev',
  'unifunc' => 'content_5cf4574045ef80_58437927',
  'variables' => 
  array (
    'naslov' => 0,
    'putanja' => 0,
    'href' => 0,
  ),
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5cf4574045ef80_58437927')) {function content_5cf4574045ef80_58437927($_smarty_tpl) {?><?php if (!is_callable('smarty_modifier_date_format')) include '/var/www/webdip.barka.foi.hr/2018_projekti/WebDiP2018x149/vanjske_biblioteke/Smarty-3.1.21/libs/plugins/modifier.date_format.php';
?>
<!DOCTYPE html>
<html lang="hr">

<head>
    <title><?php echo $_smarty_tpl->tpl_vars['naslov']->value;?>
</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Ante Vulić">
    <meta name="keywords" content="FOI, WebDiP">
    <meta name="description" content="Primjer za meta podatke">
    <meta name="naslov" content="Početna stranica">
    <meta name="datum" content="<?php echo smarty_modifier_date_format(time(),"%d.%m.%Y %H:%M:%S");?>
">
    
    <link href="css/avulic.css" rel="stylesheet" type="text/css">
    
    <?php echo '<script'; ?>
 src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"><?php echo '</script'; ?>
>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <?php echo '<script'; ?>
 src="js/js.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=prikaziSubmit" async defer><?php echo '</script'; ?>
>


    
    <!---
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <?php echo '<script'; ?>
 src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"><?php echo '</script'; ?>
>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <?php echo '<script'; ?>
 type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"><?php echo '</script'; ?>
>
    
    <?php echo '<script'; ?>
 src="../javascript/avulic_jquery.js" type="text/javascript"><?php echo '</script'; ?>
>
    --->
</head>

<body id="registracija">
    <div class="fixed-top-wrap sakrij">
        <div class="fixed-top">
            <div class="cookie-poruka">
                <p>Stranica prikuplja kolačiće. Pritiskom na gumb "Prihvaćam" prihvaćate uvjete korištenja.</p>
            </div>
            <button class="cookie-message-button">Uredu</button>
        </div>
    </div>
    <header>
        <h1><?php echo $_smarty_tpl->tpl_vars['naslov']->value;?>
</h1>
    </header>
    <nav id="izbornik">
        <ul>
            <?php if (isset($_SESSION['uloga'])&&($_SESSION['uloga']=='administrator')) {?>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn">Obrti</a>
                    <div class="dropdown-content">
                        <a href="#" onclick="ispisObrtaAdmin()">Ispis obrta</a>
                    </div>
                </li>
                <li><a href="#" onclick="ispisiKorisnike()">Korisnici</a></li>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn">Natječaji</a>
                    <div class="dropdown-content">
                        <a href="#" onclick="ispisNatjecajaAdmin()">Ispis natječaja</a>
                        <a href="#" onclick="vrsteNatjecaja()">Vrste natječaja</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn">Žalbe</a>
                    <div class="dropdown-content">
                        <a href="#" onclick="ispisZalbiAdmin()">Ispis žalbi</a>
                    </div>
                </li>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn">Moderatori</a>
                    <div class="dropdown-content">
                        <a href="#" onclick="ispisModeratoraAdmin()">Ispis Moderatora</a>
                    </div>
                </li>
                <li><a href="natjecaji.php">Statistika</a></li>
                <li><a href="#" onclick="ispisDnevnikaRada()">Dnevnik rada</a></li> 
                <li><a href="vrijeme.php">Pomak vremena</a></li>  
            <?php }?>
            <?php if (isset($_SESSION['uloga'])&&($_SESSION['uloga']=='moderator')) {?>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Natječaji</a>
                <div class="dropdown-content">
                    <a href="#" onclick="ispisNatjecajiModerator()">Ispis natječaja</a>
                </div>
            </li>
                <li class="dropdown">
                    <a href="javascript:void(0)" class="dropbtn">Ponude</a>
                    <div class="dropdown-content">
                        <a href="#" onclick="ponudeModerator()">Ispis onuda</a>
                        <a href="#" onclick="ponudeRegistriran()">Vlastitie ponude</a>
                    </div>
                </li>
            <?php }?> 
            <?php if (isset($_SESSION['uloga'])&&(($_SESSION['uloga']=='registriran'))) {?>
                <li><a onclick="natjecajRegistriran()">Natječaji</a></li>
                <li><a onclick="ponudeRegistriran()">Ponude</a></li>
            <?php }?>   
            <?php if (!isset($_SESSION['uloga'])) {?>     
                <?php if (isset($_smarty_tpl->tpl_vars['putanja']->value)) {?> <?php $_smarty_tpl->tpl_vars["href"] = new Smarty_variable(($_smarty_tpl->tpl_vars['putanja']->value).("registracija.php"), null, 0);?> <?php } else { ?> <?php $_smarty_tpl->tpl_vars["href"] = new Smarty_variable("registracija.php", null, 0);?> <?php }?>
                <li><a  onclick="natjecajNeregistriran()">Natječaji</a></li>
                <li><a href=<?php echo $_smarty_tpl->tpl_vars['href']->value;?>
>Registracija</a></li>
            <?php }?> 
            <?php if (isset($_SESSION['uloga'])) {?>
                <li><a href="prijava.php?mod=odjava">Odjava</a></li>
            <?php } else { ?>
            <li ><a href="prijava.php">Prijava</a></li>  
            <?php }?> 
            <li ><a href="dokumentacija.html">Dokumentacija</a></li>  
            <li ><a href="o_autoru.html">O autoru</a></li>  
        </ul>
    </nav>

<section id="sadrzaj">

<?php }} ?>
