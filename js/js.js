var $greska = false;


$(document).ready(function () {
    window.prikaziSubmit = prikaziSubmit;
    provjeriKorisnickoIme();
    provjeriUnesenePodatke();
    ispisVremena();
    $("#profileImage").click(function(e) {
        $("#imageUpload").click();
    });

    $("#imageUpload").change(function(){
        fasterPreview(this);
    });

    var modal = document.getElementById('id01');
    window.onclick = function(event) {
        if (event.target == modal) {
            modal.style.display = "none";
            $("#id01").empty();
        }
    }
});

function provjeriKorisnickoIme() { 
    $("#form-registracija input[name='korime']").blur(function (event) {
        var username = $(this).val();
        $.ajax({
            type: "GET",
            url: "data/korisnici.php",
            data: {
                dohvatiKorisnickaImena: 1
            },
            success: function (response) {
                var obj = $.parseJSON(response);

                var nasao = 0;
                obj.forEach(element => {
                    if (element.kor_Ime == username) {
                        nasao = 1;
                    }
                });
                if (nasao) {
                    prikaziPoruku("korime", "Korisnicko ime je zauzeto");
                    $("input[name='korime']").addClass('greska-border');
                }else {
                    ocistiPoruke("korime");
                    $("input[name='korime']").removeClass('greska-border');
                }
            }
        });
    });
}

function provjeriUnesenePodatke() { 
    var $ime ,$prezime , $korIme ,$pass ,$repass ,$email;
    
    $("#form-registracija").submit(function(event) {
        $ime = $("input[name='ime']").val();
        $prezime = $("input[name='prezime']").val();
        korIme = $("input[name='korime']").val();
        $pass = $("input[name='zaporka']").val();
        $repass = $("input[name='zaporka2']").val();
        $email = $("input[name='email']").val();

        if ($ime == '' || $prezime == '' || $korIme == '' || $pass == '' || $repass == '' || $email == '') {
            prikaziPoruku("global","Nista unjeli sva polja");
            event.preventDefault(); 
        }else {
            ocistiPoruke("global");
        }
        
        if ($("#form-registracija div.kontener div").children("p.greska-poruka").length > 0) {
            event.preventDefault(); 
        } 
    });


    $("input[name='ime']").blur(function () {
        $ime = $("input[name='ime']").val();
        if ($ime != "" && $ime[0] != $ime[0].toUpperCase()){
            prikaziPoruku("ime","Ime ne počinje s velikim slovom");
        }else {
            ocistiPoruke("ime");
        }
    });

    $("input[name='prezime']").blur(function () {
        $prezime = $("input[name='prezime']").val();
        if($prezime != "" && $prezime[0] != $prezime[0].toUpperCase()) {
            prikaziPoruku("prezime","Prezime ne počinje s velikim slovom");
        }else {
            ocistiPoruke("prezime");
        }
    });

    $("input[name='zaporka'],input[name='zaporka2']").blur(function () {
        $pass = $("input[name='zaporka']").val();
        $repass = $("input[name='zaporka2']").val();
        if ($pass != 0 && $pass.length < 5) {
            prikaziPoruku("zaporka","Zaporka ima premalo znakova");
        }else {
            ocistiPoruke("zaporka");
        }

        if ($pass != $repass && $repass != '') {
            prikaziPoruku("zaporka2","Lozinke se ne podudaraju");
        }else {
            ocistiPoruke("zaporka2");
        }
    });

    $("input[name='email']").blur(function () {
        $email = $("input[name='email']").val();
        var $uzorak = new RegExp(/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/);
        if (!$uzorak.test($email)) {
            prikaziPoruku("email","Email je neispravnog formata");
        }else {
            ocistiPoruke("email");
        }
    });
}

function prikaziSubmit() {
    $("#submit").removeClass("sakrij");
    $("#submit").addClass("prikazi");
}

function prikaziPoruku(element, poruka) {
    var $elemPoruka = $(".poruka-" + element);    

    if ($elemPoruka.children('p.greska-poruka').length == 0) {
        var poruka = " <p class='greska-poruka'>" + poruka + "</p>"
        $(".poruka-" + element).append(poruka);
    }
}

function ocistiPoruke(element) { 
    $(".poruka-" + element +" .greska-poruka").remove();
}

function postavljanjePomaka() {  
    var iframe = document.getElementsByTagName("iframe")[0];
    var poruka = document.getElementsByTagName("h1")[1];
    var submitButton = iframe.contentWindow.document.getElementsByName("submit")[0];
    if (submitButton != undefined) {
        submitButton.onclick = function () {  
            poruka.className = "prikazi";
            iframe.className = "sakrij";
            dohvatiPomak();
        }
    }
    
}

function dohvatiPomak() {  
    setTimeout(function() {
        $.ajax({
                type: "GET",
                url: "/WebDiP/pomak_vremena/pomak.php",
                data: {
                    format: "json"
                },
                success: function (response) {
                    spremiPomak(response);
                }
            });
    }, 1000);
}

function spremiPomak(response) {  
    var pomak = response.WebDiP.vrijeme.pomak.brojSati;
    $.ajax({
        type: "GET",
        url: "data/vrijeme.php",
        data: {
            spremiPomak: 1,
            pomak: pomak
        },
        success: function (response) {
        }
    });
}

function ispisVremena(){
    setInterval(function () {
        $.ajax({
            type: "GET",
            url: "data/vrijeme.php",
            data: {
                ispisVremena : 1
            },
            datatype: 'json',
            success: function (vrijeme) {
                vrijeme = $.parseJSON(vrijeme);
                
                $("#vrijemeSustava").html(vrijeme.sustav);
                $("#vrijemeServera").html(vrijeme.server);
            }
        });
    }, 1000);
}

function fasterPreview(uploader) {
    if ( uploader.files && uploader.files[0] ){
        $('#profileImage').attr('src', window.URL.createObjectURL(uploader.files[0]) );
    }
}

function nadopuinTablicu(sadrzaj) {  
    var tdIndex; 
    $(sadrzaj).each(function() {
        tdIndex = 0;
        
        $(this).find("td").each(function() {
            if (tdIndex == 1) {
                var sdrzaj = $(this).html();
                $(this).empty();
                $(this).html("<a href='#' onclick='prikaziDetaljeNatjecaja()'>"+sdrzaj+"</a>");
                $(this).on("click", prikaziDetaljeNatjecaja);
            }
            if (tdIndex == 3) {
                var sdrzaj = $(this).html();
                $(this).empty();
                $(this).html("<a href='#' onclick='prikaziDetaljeObrta()'>"+sdrzaj+"</a>");
                $(this).on("click", prikaziDetaljeObrta);
            }
            tdIndex++;
        });
    });
}

