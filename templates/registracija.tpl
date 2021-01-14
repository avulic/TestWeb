<script src="js/js.js"></script>
<form  method="POST" id="form-registracija" enctype="multipart/form-data" novalidate action={$self}>
    <div class="kontener-obrazac">
        <div class="poruka-global"></div>
        <div class="poruka-datoteka">
            {if isset($poruke) && !empty($poruke['datoteka'])}
                {$poruke['datoteka']}
            {/if}
        </div>
        <label class="labela" for="imageUpload"><b>Avatar: </b></label>
        <div id="profile-container">
            <image id="profileImage" src="slike/avatar-default.png" />
        </div>
        <input id="imageUpload" type="file" name="imageUpload">

        <div class="poruka-prezime">
            {if isset($poruke) && !empty($poruke['prezime'])}
                {$poruke['prezime']}
            {/if}
        </div>
        <label class="labela" for="prezime"><b>Prezime: </b></label>
        <input class="input" type="text" id="prezime" name="prezime" maxlength="20" placeholder="Prezime"
            autofocus="autofocus" required="required" value="{if isset($smarty.cookies.prezime)}{$smarty.cookies.prezime}{/if}"><br>
        
        <div class="poruka-ime">
            {if isset($poruke) && !empty($poruke['ime'])}
                {$poruke['ime']}
            {/if}
        </div>
        <label class="labela" for="ime"><b>Ime: </b></label>
        <input class="input" type="text" id="ime" name="ime" maxlength="20" placeholder="Ime"
            required="required" value="{if isset($smarty.cookies.ime)}{$smarty.cookies.ime}{/if}"><br>

        <div class="poruka-korime">
            {if isset($poruke) && !empty($poruke['korime'])}
                {$poruke['korime']}
            {/if}
        </div>
        <label class="labela" for="korime"><b>Korisničko ime: </b></label>
        <input class="input" type="text" id="korime" name="korime" maxlength="20" placeholder="Korisničko ime"
            required="required" value="{if isset($smarty.cookies.korime)}{$smarty.cookies.korime}{/if}"><br>

        <div class="poruka-zaporka">
            {if isset($poruke) && !empty($poruke['zaporka'])}
                {$poruke['zaporka']}
            {/if}
        </div>
        <label class="labela" for="zaporka"><b>Zaporka: </b></label>
        <input class="input" type="password" id="zaporka" name="zaporka" placeholder="Lozinka" required="required"><br>

        <div class="poruka-zaporka2">
            {if isset($poruke) && !empty($poruke['zaporka2'])}
                {$poruke['zaporka2']}
            {/if}
        </div>
        <label class="labela" for="zaporka2"><b>Ponovi pozinku: </b></label>
        <input class="input" type="password" id="zaporka2" name="zaporka2" placeholder="Lozinka" required="required"><br>

        <div class="poruka-email">
            {if isset($poruke) && !empty($poruke['email'])}
                {$poruke['email']}
            {/if}
        </div>
        <label class="labela" for="email"><b>Email adresa: </b></label>
        <input class="input" type="email" id="email" name="email" placeholder="ime.prezime@posluzitelj.xxx"
            required="required" value="{if isset($smarty.cookies.email)}{$smarty.cookies.email}{/if}"><br>

        <div class="g-recaptcha" data-sitekey="6LfuKlwUAAAAAID92vg8E8MNc4y7p4PhuRKg2GBh" data-callback="prikaziSubmit"></div>
        <button id="submit" class="button sakrij"  name="submit" type="submit">Registriraj se</button>
    </div>
</form>

