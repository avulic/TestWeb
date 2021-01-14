
<!DOCTYPE html>
<html lang="hr">

<head>
    <title>{$naslov}</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="author" content="Ante Vulić">
    <meta name="keywords" content="FOI, WebDiP">
    <meta name="description" content="Primjer za meta podatke">
    <meta name="naslov" content="Početna stranica">
    <meta name="datum" content="{$smarty.now|date_format:"%d.%m.%Y %H:%M:%S"}">
    
    <link href="css/avulic.css" rel="stylesheet" type="text/css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <script src="js/js.js"></script>
    <script src="https://www.google.com/recaptcha/api.js?onload=onloadCallback&render=prikaziSubmit" async defer></script>


    
    <!---
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    
    <script src="../javascript/avulic_jquery.js" type="text/javascript"></script>
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
        <h1>{$naslov}</h1>
    </header>
    <nav id="izbornik">
        <ul>
            {if isset($smarty.session.uloga) && ($smarty.session.uloga == 'administrator')}
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
            {/if}
            {if isset($smarty.session.uloga) && ($smarty.session.uloga == 'moderator')}
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
            {/if} 
            {if isset($smarty.session.uloga) && (($smarty.session.uloga == 'registriran'))}
                <li><a onclick="natjecajRegistriran()">Natječaji</a></li>
                <li><a onclick="ponudeRegistriran()">Ponude</a></li>
            {/if}   
            {if !isset($smarty.session.uloga)}     
                {if isset($putanja)} {assign var="href" value=$putanja|cat:"registracija.php"} {else} {assign var="href" value="registracija.php"} {/if}
                <li><a  onclick="natjecajNeregistriran()">Natječaji</a></li>
                <li><a href={$href}>Registracija</a></li>
            {/if} 
            {if isset($smarty.session.uloga)}
                <li><a href="prijava.php?mod=odjava">Odjava</a></li>
            {else}
            <li ><a href="prijava.php">Prijava</a></li>  
            {/if} 
            <li ><a href="dokumentacija.html">Dokumentacija</a></li>  
            <li ><a href="o_autoru.html">O autoru</a></li>  
        </ul>
    </nav>

<section id="sadrzaj">

