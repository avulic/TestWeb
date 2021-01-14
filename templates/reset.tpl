<form method="post" id="form1" novalidate action={$self}>
    <div class="kontener">
        {if isset($greskaPoruka) && !empty($greskaPoruka['korisnickoIme'])}
            <div class=""><p class="greska-poruka">{$greskaPoruka['korisnickoIme']}</p></div>
        {/if}
        <label class="labela" for="korime"><b>Korisničko ime</b></label>
        <input id="korime" type="text" placeholder="Unesite korisničko ime" name="korime" maxlength="20">

        <button name="resetLoinke" class="labela">Zatrazi novu lozinku</button>
        <span name="submit" class="labela" onclick="Javascript:window.location.href = 'prijava.php';" ><a href="prijava.php">Odustani</a></span>
    </div>
</form>