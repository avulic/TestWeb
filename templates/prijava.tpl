<form method="post" id="form-prijava" novalidate action={$self}>
    <div class="kontener-obrazac">
        <h2>Prijavite se</h2>
        <hr>
        <div>
            {if isset($greskaPoruka) && !empty($greskaPoruka['prijava'])}
                <div class=""><p class="greska-poruka">{$greskaPoruka['prijava']}</p></div>
            {/if}
            <label class="labela" for="korime"><b>Korisničko ime</b></label>
            <input id="korime" class="input" type="text" placeholder="Unesite korisničko ime" name="korime" maxlength="20" value="{if isset($smarty.cookies.korIme)}{$smarty.cookies.korIme}{/if}">
    
            <label class="labela" for="zaporka"><b>Zaporka</b></label>
            <input id="zaporka" class="input" type="password" placeholder="Unesite zaporku" name="zaporka" required>
    
            <button name="submit" class="labela button" type="submit">Prijavi se</button>
            <span><a href="reset.php">Zaboravio sam lozinku</a></span><br>
            <label>
                <input id="zapamti" class="clear-input" type="checkbox" checked="checked" name="zapamti"> Zapamti me
            </label>
            
        </div>
    </div>
</form>




