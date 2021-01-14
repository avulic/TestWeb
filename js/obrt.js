function kreriajObrt() {
    var pretragaBtn = $("<button/>").addClass("button noviNatjecaj-btn").html("Novi obrt").click(function(){
        var kontener = $("<div/>");
        var sadrzaj = $("<div/>").addClass("kontener-popup").append("<p/>").html("Kreiranje Obrta").append("<hr/>");
    
        var label = $("<label/>").attr("for","naziv").html("Naziv obrta:").addClass("labela");
        var input = $("<input/>").attr("name","naziv").addClass("input");
        sadrzaj.append(label).append(input).append("<br/>");

        $.ajax({
            type: "GET",
            url: "data/korisnici.php",
            data: {
                dohvatiKorisnike: 1
            },
            dataType: "json",
            success: function (response) {               
                $(response).each(function(index, korsinik) {
                    $("#listaObrta").append($("<option>", { value: korsinik["id"], text:  korsinik["kor_ime"]}))
                });
            }
        });
        var label = $("<label/>").html('').attr("id","poruka-ponuda").hide();
        sadrzaj.append(label).append("<br/>");

        label = $("<label/>").attr("for","listaObrta").html("Korisnik:").addClass("labela");
        var odabirVelicineStranice = $("<select/>").attr("id","listaObrta").attr("name","status-ponude")
        sadrzaj.append(label).append(odabirVelicineStranice);

        sadrzaj.append($("<button/>").addClass("button").html("Kreriaj obrt").click( e => posaljiObrt()));
        kontener.append(sadrzaj);
        $("#id01").append(kontener).show();
    });



    var noviNatjecaj = $("<div/>").addClass("kontener-noviNatjecaj right");
    noviNatjecaj.append(pretragaBtn);
    $(".kontener-pretraga").append(noviNatjecaj);
    
}

function azurirajObrt() {
    var korIme = $($(this).parent().parent().find("td")[3]).html();
    var naziv = $($(this).parent().parent().find("td")[1]).html();
    var obrtId = $($(this).parent().parent().find("td")[0]).html();

    var kontener = $("<div/>");
    var sadrzaj = $("<div/>").addClass("kontener-popup").append("<p/>").html("Azuriranje Obrta").append("<hr/>");
    
    var label = $("<label/>").attr("for","naziv").html("Naziv obrta:").addClass("labela");
    var input = $("<input/>").attr("name","naziv").addClass("input").val(naziv);
    sadrzaj.append(label).append(input).append("<br/>");

    $.ajax({
        type: "GET",
        url: "data/korisnici.php",
        data: {
            dohvatiKorisnike: 1
        },
        dataType: "json",
        success: function (response) {               
            $(response).each(function(index, korsinik) {
                if (korIme == korsinik["kor_ime"]) {
                    $("#listaObrta").append($("<option>", { value: korsinik["id"], text:  korsinik["kor_ime"]}).attr("selected","selected"));
                }else {
                    $("#listaObrta").append($("<option>", { value: korsinik["id"], text:  korsinik["kor_ime"]}));
                }
                
            });
        }
    });

    label = $("<label/>").attr("for","listaObrta").html("Korisnik:").addClass("labela");
    var odabirVelicineStranice = $("<select/>").attr("id","listaObrta").attr("name","listaObrta")
    sadrzaj.append(label).append(odabirVelicineStranice);

    sadrzaj.append($("<button/>").addClass("button").html("Spremi promjene").click( e => azuriranjeObrta(obrtId)));
    kontener.append(sadrzaj);
    $("#id01").append(kontener).show();
}

function azuriranjeObrta(obrtId) {
    var naziv = $("input[name=naziv]").val();
    var korId = $("select[name=listaObrta]").val();
    
    $.ajax({
        type: "POST",
        url: "data/obrt.php",
        data: {
            azuriranjeObrta: 1,
            naziv: naziv,
            obrtId: obrtId,
            korId: korId
        },
        dataType: "json",
        success: function (response) {
            if (response.greska != undefined) {
                $("#poruka-ponuda").html(response.greska).addClass("greska-poruka").show();
            } else {
                $("#sadrzaj").empty();
                $("#id01").empty();
                $("#id01").hide();
                ispisObrtaAdmin();
            }
            
        }
    });
}
function obrisiObrt() {
    var obrtId = $($(this).parent().parent().find("td")[0]).html();
    var kontener = $("<div/>");
    var sadrzaj = $("<div/>").addClass("kontener-popup").append("<p/>").html("Želite li izbrisat ponudu").append("<hr/>");
    
    sadrzaj.append($("<button/>").addClass("button").html("Da želim").click( function() {
        $.ajax({
            type: "POST",
            url: "data/obrt.php",
            data: {
                izbrisiObrt: 1,
                obrtId: obrtId
            },
            dataType: "json",
            success: function (response) {
                $("#sadrzaj").empty();
                $("#id01").empty();
                $("#id01").hide();
                ispisObrtaAdmin();
            }
        });
    }));
    kontener.append(sadrzaj);
    $("#id01").append(kontener).show();
}

function posaljiObrt() {
    var naziv = $("input[name=naziv]").val();
    var korisikId = $("#listaObrta option:selected").val();

    $.ajax({
        type: "POST",
        url: "data/obrt.php",
        data: {
            kreirajObrt: 1,
            korisikId: korisikId,
            naziv: naziv
        },
        dataType: 'json',
        success: function (response) {           
            if (response != 1) {
                $("#poruka-ponuda").html(response.greska).addClass("greska-poruka").show();
            } else {
                $(".kontener-popup").empty();
                $(".kontener-popup").append($("<p/>").html("Uspjesno kreirana obrt").addClass("greska-poruka").show());
            }
        }
    });
}

function ispisObrtaAdmin() {
    $("#sadrzaj").empty();
    $("#id01").empty();
    $.ajax({
        type: "GET",
        url: "data/obrt.php",
        data: {
            dohvatiObrte: 1
        },
        dataType: 'json',
        success: function (obrti) {
            var table = $("<table/>").addClass("korisnici").addClass("admin");
            var zaglavlje = kreirajZaglavlje(obrti,"Ažuriraj/Obriši");
            var sadrzaj = popuniTablicu(obrti);
            nadopuinTablicuObrtAdmin(sadrzaj);

            table.append(zaglavlje).append(sadrzaj);
            dodajPretrazivanje();
            $("#sadrzaj").append(table);
            dodajStranicenje();

            kreriajObrt();
        }
    });
}

function ispisVrsteObrtaAdmin() {
    $("#sadrzaj").empty();
    $("#id01").empty();
    $.ajax({
        type: "GET",
        url: "data/obrt.php",
        data: {
            dohvatiVrste: 1
        },
        dataType: 'json',
        success: function (obrti) {
            var table = $("<table/>").addClass("korisnici").addClass("admin");
            var zaglavlje = kreirajZaglavlje(obrti,);
            var sadrzaj = popuniTablicu(obrti);
            
            table.append(zaglavlje).append(sadrzaj);
            dodajPretrazivanje();
            $("#sadrzaj").append(table);
            dodajStranicenje();
        }
    });
}



function ispisModeratoraAdmin() {
    $("#sadrzaj").empty();
    $("#id01").empty();
    $.ajax({
        type: "POST",
        url: "data/korisnici.php",
        data: {
            ispisModeratora: 1
        },
        dataType: 'json',
        success: function (obrti) {
            var table = $("<table/>").addClass("korisnici").addClass("admin");
            var zaglavlje = kreirajZaglavlje(obrti);
            var sadrzaj = popuniTablicu(obrti);
            nadopuinTablicuModeratorAdmin(sadrzaj);

            table.append(zaglavlje).append(sadrzaj);
            dodajPretrazivanje();
            $("#sadrzaj").append(table);
            dodajStranicenje();


            dodjeliModeratora();
        }
    });
}
function dodjeliModeratora() {
    var pretragaBtn = $("<button/>").addClass("button noviNatjecaj-btn").html("Novi moderator").click(function(){
        var kontener = $("<div/>");
        var sadrzaj = $("<div/>").addClass("kontener-popup").append("<p/>").html("Dodaj moderatora").append("<hr/>");
    
        $.ajax({
            type: "GET",
            url: "data/obrt.php",
            data: {
                dohvatiObrte: 1
            },
            dataType: "json",
            success: function (response) {              
                $(response).each(function(index, obrt) {
                    
                    $("#listaObrta").append($("<option>", { value: obrt["idobrt"], text:  obrt["naziv"]}))
                });
            }
        });
        label = $("<label/>").attr("for","listaObrta").html("Obrt:").addClass("labela");
        var odabirVelicineStranice = $("<select/>").attr("id","listaObrta").attr("name","listaObrta")
        sadrzaj.append(label).append(odabirVelicineStranice);

        $.ajax({
            type: "POST",
            url: "data/korisnici.php",
            data: {
                dohvatiModeratore: 1
            },
            dataType: "json",
            success: function (response) {    
                $(response).each(function(index, korsinik) {
                    $("#listaKorisnika").append($("<option>", { value: korsinik["idkorisnik"], text:  korsinik["kor_ime"]}))
                });
            }
        });
        label = $("<label/>").attr("for","listaKorisnika").html("Korisnik:").addClass("labela");
        var odabirVelicineStranice = $("<select/>").attr("id","listaKorisnika").attr("name","listaKorisnika")
        sadrzaj.append(label).append(odabirVelicineStranice);

        sadrzaj.append($("<button/>").addClass("button").html("Kreriaj moderatora").click( e => posaljiModeratora()));
        kontener.append(sadrzaj);
        $("#id01").append(kontener).show();
    });



    var noviNatjecaj = $("<div/>").addClass("kontener-noviNatjecaj right");
    noviNatjecaj.append(pretragaBtn);
    $(".kontener-pretraga").append(noviNatjecaj);
    
}

function posaljiModeratora() {
    var korisnikId = $("#listaKorisnika option:selected").val();
    var obrtId = $("#listaObrta option:selected").val();

    $.ajax({
        type: "POST",
        url: "data/obrt.php",
        data: {
            dodajModeratora: 1,
            korisnikId: korisnikId,
            obrtId: obrtId
        },
        dataType: 'json',
        success: function (response) {           
            if (response != 1) {
                $("#poruka-ponuda").html(response.greska).addClass("greska-poruka").show();
            } else {
                $(".kontener-popup").empty();
                $(".kontener-popup").append($("<p/>").html("Uspjesno kreirana moderator").addClass("greska-poruka").show());
            }
        }
    });
}


function nadopuinTablicuModeratorAdmin() {

}

function nadopuinTablicuObrtAdmin(sadrzaj) { 
    $(sadrzaj).each(function() {
        var obrtId = $(this.find("td")[0]).html();
        
        data = $("<td/>");
        elem = $("<button/>").addClass("btn left").attr("id","s").html($("<i/>").addClass("fa fa-edit")).on("click",azurirajObrt);
        data.append(elem);

        elem = $("<button/>").addClass("btn left").attr("id","s").html($("<i/>").addClass("fa fa-trash")).on("click",obrisiObrt);
        data.append(elem);
        $(this).append(data);
    });
}