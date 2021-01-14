<link href="../css/avulic.css" rel="stylesheet" type="text/css">
<script src="../js/js.js"></script>
<script src="../js/cookie.js"></script>

<table class="korisnici" id="korisnici">
    <caption class="tablica"><b>Popis korsnika</b></caption>
    <thead class="tablica">
        <tr class="tablica_zaglavlje">
            <th>ID</th>
            <th>Korisničko ime</th>
            <th>Ime</th>
            <th>Prezime</th>
            <th>Zaporka</th>
            <th>E-mail</th>
        </tr>
    </thead>
    <tbody class="korisnici">
            {foreach from=$sadrzaj item=row}
                {$row|unescape:'html'}
            {/foreach}
    </tbody>
</table>
