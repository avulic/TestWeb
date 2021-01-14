function natjecajAdmin() {
    ispisNatjecajaAdmin();
}
function natjecajNeregistriran() {
    ispisNatjecajaNeregistriran();
}
function natjecajRegistriran() {
    ispisNatjecajRegistriran();
}
function natjecajiModerator() {
    ispisNatjecajiModerator();
}
function vrsteNatjecaja() {
    ispisVrstaNatjecaja();
}



function prikaziDetaljeNatjecaja() {
    var natjecajId = $($(this)[0]).parent().find("td").html();
    var ponude = $("<div/>").append("<pre/>").html("    "+"Dobitnik natječaja").append("<hr/>");
    
    $.ajax({
        type: "GET",
        url: "data/ponuda.php",
        data: {
            dohvatiPonudeNatjecaja: 1,
            natjecajId : natjecajId
        },
        dataType: 'json',
        success: function (ponudeObj) { 
            ponudeObj.forEach(element => {
                for (const key in element) {
                    div = $("<div/>");
                    if (key == 'slika_url') {
                        row = $("<img/>").attr("src",element[key]).addClass("icon-small");
                        div.append(row);
                    }else {
                        var row = $("<pre/>").html($("<strong/>").html("    "+key));
                        div.append(row);
                        row = $("<pre/>").html("    "+ "    "+element[key]);
                        div.append(row);
                    }
                    ponude.append(div);
                }
            });
        }
    });

    $.ajax({
        type: "GET",
        url: "data/natjecaj.php",
        data: {
            dohvatiNatjecaj: 1,
            natjecajId : natjecajId
        },
        dataType: 'json',
        success: function (natjecaj) { 
            $("#sdarzaj").empty();
            $("#id01").empty();
            var kontener = $("<div/>");
            var sadrzaj = $("<div/>").addClass("kontener-popup").append("<p/>").html("Detalji natječaja").append("<hr/>");
            var div = $("<div/>");
            for(var key in natjecaj[0]) {
                div = $("<div/>");
                var row = $("<p/>").html($("<strong/>").html(key));
                div.append(row);
                row = $("<pre/>").html("    " + natjecaj[0][key]);
                div.append(row);
                sadrzaj.append(div);
            }            
            sadrzaj.append("<br>").append(ponude);
            $(kontener).append(sadrzaj);
            $("#id01").append(kontener).show();
            
            
        }
    });
    
}
function prikaziDetaljeObrta() {
    var obrtNaziv = $($(this)[0]).find("a").html();
    $.ajax({
        type: "GET",
        url: "data/obrt.php",
        data: {
            dohvatiObrt: 1,
            obrtNaziv: obrtNaziv
        },
        dataType: 'json',
        success: function (obrt) { 
            $("#id01").empty();
            var kontener = $("<div/>");
            var sadrzaj = $("<div/>").addClass("kontener-popup");
            var div = $("<div/>");
            for(var key in obrt[0]) {
                div = $("<div/>");
                var row = $("<pre/>").html($("<strong/>").html(key));
                div.append(row);
                row = $("<pre/>").html("  "+obrt[0][key]);
                div.append(row);
                sadrzaj.append(div);
            }
            $(kontener).append(sadrzaj);
            $("#id01").append(kontener).show();

            var modal = document.getElementById('id01');
            window.onclick = function(event) {
                if (event.target == modal) {
                    modal.style.display = "none";
                }
            }
        }
    });
    $("#natjecaj-detalji").show();
}




function nadopuinTablicuAdmin(sadrzaj) {
    $(sadrzaj).each(function() {
        data = $("<td/>");
        elem = $("<button/>").addClass("button-small").attr("id","s");
        elem.html("Prijava").click();
        data.append(elem);
        $(this).append(data);
    });
}
function nadopuinTablicuRegistriran(sadrzaj) { 
    $(sadrzaj).each(function() {
        data = $("<td/>");
        elem = $("<button/>").addClass("btn left").attr("id","s").html($("<i/>").addClass("fa fa-plus")).on("click", kreirajnjePonude);
        data.append(elem);
        $(this).append(data);
    });
}
function nadopuinTablicuModerator(sadrzaj) { 
    $(sadrzaj).each(function() {
        var natjecajId = $(this.find("td")[0]).html();
        var status = $(this.find("td")[4]).html();
        data = $("<td/>");
        if (status == "zakljucan") {
            elem = $("<button/>").addClass("btn left disabled").attr("id","s").html($("<i/>").addClass("fa fa-lock")).click(e => zakljucavanjeNatjecaja(natjecajId, 1)).prop('disabled', true);
            data.append(elem);

            elem = $("<button/>").addClass("btn left").attr("id","s").html($("<i/>").addClass("fa fa-unlock")).click(e => zakljucavanjeNatjecaja(natjecajId, 0)).prop('disabled', false).removeClass("disabled");
            data.append(elem);

        }else {
            elem = $("<button/>").addClass("btn left").attr("id","s").html($("<i/>").addClass("fa fa-lock")).click(e => zakljucavanjeNatjecaja(natjecajId, 1)).prop('disabled', false).removeClass("disabled");
            data.append(elem);

            elem = $("<button/>").addClass("btn left disabled").attr("id","s").html($("<i/>").addClass("fa fa-unlock")).click(e => zakljucavanjeNatjecaja(natjecajId, 0)).prop('disabled', true);
            data.append(elem);

        }
        $(this).append(data);
    });
}
function nadopuinTablicuVrsteAdmin(sadrzaj) { 
    $(sadrzaj).each(function() {
        var vrstaId = $(this.find("td")[0]).html();
        var naziv = $(this.find("td")[1]).html();
        data = $("<td/>");
        elem = $("<button/>").addClass("btn left").attr("id","s").html($("<i/>").addClass("fa fa-edit")).click(e => azurirajVrstuNatjecaj(vrstaId, naziv));
        data.append(elem);

        elem = $("<button/>").addClass("btn left").attr("id","s").html($("<i/>").addClass("fa fa-trash")).click(e => obrisiVrstuNatjecaja(vrstaId));
        data.append(elem);
        $(this).append(data);
    });
}
function sortiranjeTablicuNeregistriran() {     
    var element = $($($("#sadrzaj table").find("tr")[0]).find("th")[0]);
    postaviStrelicu(element);
    var tablica = $($($("#sadrzaj table").find("tr")[0]).find("th")[0]).click(function() {
        postaviStrelicu($(this));
    });
}
function postaviStrelicu(element) {
    var strelicaUp = "&#x2191;";
    var strelicaDown = "&#8595;";

    if ($(element).attr("strelica") == "up") {
        $(element).html('');
        $(element).html($(element).attr("value"));
        $(element).append(strelicaDown).attr("strelica","down");
        ispisNatjecajaNeregistriran("DESC");
    }else if($(element).attr("strelica") == "down"){
        $(element).html('');
        $(element).html($(element).attr("value"));
        $(element).append(strelicaUp).attr("strelica","up");
        ispisNatjecajaNeregistriran("ASC");
    }else {
        $(element).attr("value", element.html());
        $(element).append(strelicaUp).attr("strelica","up");
    }
}



function ispisNatjecajaNeregistriran(sort=null) {
    $("#sadrzaj").empty();
    $("#id01").empty();
    $.ajax({
        type: "GET",
        url: "data/natjecaj.php",
        data: {
            dohvatiNatjecaje: 1,
            sort : sort
        },
        dataType: 'json',
        success: function (natjecaji) { 
            var table = $("<table/>").addClass("korisnici");
            var zaglavlje = kreirajZaglavlje(natjecaji);
            var sadrzaj = popuniTablicu(natjecaji);
            nadopuinTablicu(sadrzaj);
            
            table.append(zaglavlje).append(sadrzaj);
            dodajPretrazivanje("naziv obrta");
            $("#sadrzaj").append(table);
            dodajStranicenje();
            sortiranjeTablicuNeregistriran();
        }
    });
}
function ispisNatjecajaAdmin() {
    $("#sadrzaj").empty();
    $("#id01").empty();
    $("#sadrzaj").empty();
    $.ajax({
        type: "GET",
        url: "data/natjecaj.php",
        data: {
            dohvatiNatjecaje: 1
        },
        dataType: 'json',
        success: function (natjecaji) { 
            var table = $("<table/>").addClass("korisnici");
            var zaglavlje = kreirajZaglavlje(natjecaji, "Operacije");
            var sadrzaj = popuniTablicu(natjecaji);
            nadopuinTablicu(sadrzaj);
            nadopuinTablicuAdmin(sadrzaj);

            table.append(zaglavlje).append(sadrzaj);
            dodajPretrazivanje("naziv obrta");
            $("#sadrzaj").append(table);
            dodajStranicenje();

            kreriajNoviNatjecaj();
        }
    });
}
function ispisNatjecajRegistriran() {
    $("#sadrzaj").empty();
    $("#id01").empty();
    $.ajax({
        type: "GET",
        url: "data/natjecaj.php",
        data: {
            dohvatiNatjecaje: 1
        },
        dataType: 'json',
        success: function (natjecaji) { 
            var table = $("<table/>").addClass("korisnici");
            var zaglavlje = kreirajZaglavlje(natjecaji, "Kreiraj ponudu");
            var sadrzaj = popuniTablicu(natjecaji);
            nadopuinTablicu(sadrzaj);
            nadopuinTablicuRegistriran(sadrzaj);

            table.append(zaglavlje).append(sadrzaj);
            dodajPretrazivanje("naziv obrta");
            $("#sadrzaj").append(table);
            dodajStranicenje();
        }
    });
}
function ispisNatjecajiModerator() {
    $("#sadrzaj").empty();
    $("#id01").empty();
    $.ajax({
        type: "GET",
        url: "data/natjecaj.php",
        data: {
            dohvatiNatjecajeModerator: 1
        },
        dataType: 'json',
        success: function (natjecaji) { 
            var table = $("<table/>").addClass("korisnici");
            var zaglavlje = kreirajZaglavlje(natjecaji, ["Pošalj iponudu","Zaključaj/Otključaj"]);
            var sadrzaj = popuniTablicu(natjecaji);
            nadopuinTablicu(sadrzaj);
            nadopuinTablicuRegistriran(sadrzaj);
            nadopuinTablicuModerator(sadrzaj);
            
            table.append(zaglavlje).append(sadrzaj);
            dodajPretrazivanje();
            $("#sadrzaj").append(table);
            dodajStranicenje();
            kreriajNoviNatjecaj();
        }
    })
}
function ispisVrstaNatjecaja() {
    $("#sadrzaj").empty();
    $("#id01").empty();
    $.ajax({
        type: "POST",
        url: "data/natjecaj.php",
        data: {
            dohvatiVrsteNatjecaja: 1
        },
        dataType: 'json',
        success: function (natjecaji) { 
            var table = $("<table/>").addClass("korisnici");
            var zaglavlje = kreirajZaglavlje(natjecaji, "Akcija");
            var sadrzaj = popuniTablicu(natjecaji);
            nadopuinTablicuVrsteAdmin(sadrzaj);

            table.append(zaglavlje).append(sadrzaj);
            dodajPretrazivanje();
            $("#sadrzaj").append(table);
            dodajStranicenje();

            kreriajNovaVrstaNatjecaja();
        }
    })
}



function zakljucavanjeNatjecaja(id,status) {
    $.ajax({
        type: "POST",
        url: "data/natjecaj.php",
        data: {
            promjeniStatusNatjecaja : 1,
            natjecajId : id,
            status: status
        },
        dataType: "json",
        success: function (response) {
            $("#sadrzaj").empty();
            $("#id01").empty();
            $("#id01").hide();
            ispisNatjecajiModerator();
        }
    });
}
function kreriajNoviNatjecaj() {
    var pretragaBtn = $("<button/>").addClass("button noviNatjecaj-btn").html("Novi natjecaj").click(function(){
        var kontener = $("<div/>");
        var sadrzaj = $("<div/>").addClass("kontener-popup").append("<p/>").html("Kreiranje natjecaja").append("<hr/>");
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
        var label = $("<label/>").html('').attr("id","poruka-ponuda").hide();
        sadrzaj.append(label).append("<br/>");

        label = $("<label/>").attr("for","listaObrta").html("Obrt:").addClass("labela");
        var odabirVelicineStranice = $("<select/>").attr("id","listaObrta").attr("name","status-ponude")
        sadrzaj.append(label).append(odabirVelicineStranice);

        var label = $("<label/>").html('').attr("id","poruka-ponuda").hide();
        sadrzaj.append(label).append("<br/>");
        
        var label = $("<label/>").attr("for","naziv").html("Naziv natjecaja:").addClass("labela");
        var input = $("<input/>").attr("name","naziv").addClass("input");
        sadrzaj.append(label).append(input).append("<br/>");

        label = $("<label/>").attr("for","opis").html("Opis natjecaja:").addClass("labela");
        input = $("<input/>").attr("name","opis").addClass("input");
        sadrzaj.append(label).append(input);
        
        label = $("<label/>").attr("for","ponudeOd").html("Ponude od:").addClass("labela");
        input = $("<input/>").attr("type","date").attr("name","ponudeOd").addClass("input");
        sadrzaj.append(label).append(input);

        label = $("<label/>").attr("for","ponudeDo").html("Ponude do:").addClass("labela");
        input = $("<input/>").attr("type","date").attr("name","ponudeDo").addClass("input");
        sadrzaj.append(label).append(input);

        label = $("<label/>").attr("for","zalbeDo").html("Žalbe od:").addClass("labela");
        input = $("<input/>").attr("type","date").attr("name","zalbeDo").addClass("input");
        sadrzaj.append(label).append(input);

        label = $("<label/>").attr("for","zalbeOd").html("Žalbe do:").addClass("labela");
        input = $("<input/>").attr("type","date").attr("name","zalbeOd").addClass("input");
        sadrzaj.append(label).append(input);

        $.ajax({
            type: "POST",
            url: "data/natjecaj.php",
            data: {
                dohvatiVrsteNatjecaja: 1
            },
            dataType: "json",
            success: function (response) {               
                $(response).each(function(index, vrsta) {
                    $("#vrsta").append($("<option>", { value: vrsta["idvrsta_natjecaja"], text:  vrsta["vrsta"]}))
                });
            }
        });

        label = $("<label/>").attr("for","vrsta").html("Vrsta:").addClass("labela");
        var odabirVrste = $("<select/>").attr("id","vrsta").attr("name","vrsta")
        sadrzaj.append(label).append(odabirVrste);
        sadrzaj.append("<br/>");

        label = $("<label/>").attr("for","brojDobitnika").html("Broj dobitnika:").addClass("labela");
        input = $("<input/>").attr("type","number").attr("name","brojDobitnika").addClass("input");
        sadrzaj.append(label).append(input);

        sadrzaj.append($("<button/>").addClass("button").html("Kreriaj natječaj").click( e => posaljiNatjecaj()));
        kontener.append(sadrzaj);
        $("#id01").append(kontener).show();
    });
    


    var noviNatjecaj = $("<div/>").addClass("kontener-noviNatjecaj right");
    noviNatjecaj.append(pretragaBtn);
    $(".kontener-pretraga").append(noviNatjecaj);
}
function posaljiNatjecaj() {
    var naziv = $("input[name=naziv]").val();
    var opis= $("input[name=opis]").val();
    var obrtId = $("#listaObrta option:selected").val();
    var brojDobitnika = $("input[name=brojDobitnika]").val();
    var vrsta = $("#vrsta option:selected").val();
    
    var ponudeOd= $("input[name=ponudeOd]").val().toString();
    var ponudeDo= $("input[name=ponudeDo]").val().toString();
    var zalbeDo= $("input[name=zalbeDo]").val().toString();
    var zalbeOd= $("input[name=zalbeOd]").val().toString();
    
    $.ajax({
        type: "POST",
        url: "data/natjecaj.php",
        data: {
            kreirajNatjecaj: 1,
            obrtId: obrtId,
            naziv: naziv,
            opis: opis,
            brojDobitnika: brojDobitnika,
            ponudeOd: ponudeOd,
            ponudeDo: ponudeDo,
            zalbeDo: zalbeDo,
            zalbeOd: zalbeOd,
            vrsta: vrsta,
            brojDobitnika: brojDobitnika
        },
        dataType: 'json',
        success: function (response) {           
            if (response != 1) {
                $("#poruka-ponuda").html(response.greska).addClass("greska-poruka").show();
            } else {
                $("#sadrzaj").empty();
                $("#id01").empty();
                $("#id01").hide();
                $(".kontener-popup").empty();
                $(".kontener-popup").append($("<p/>").html("Uspjesno kreirana natjecaj").addClass("greska-poruka").show());
                ispisNatjecajaAdmin();
            }
        }
    });
}




function kreriajNovaVrstaNatjecaja() {
    var pretragaBtn = $("<button/>").addClass("button noviNatjecaj-btn").html("Novi vrsta").click(function(){
        var kontener = $("<div/>");
        var sadrzaj = $("<div/>").addClass("kontener-popup").append("<p/>").html("Kreiranje vrste natječaja").append("<hr/>");

        var label = $("<label/>").html('').attr("id","poruka-ponuda").hide();
        sadrzaj.append(label).append("<br/>");
        
        var label = $("<label/>").attr("for","naziv").html("Naziv vrste:").addClass("labela");
        var input = $("<input/>").attr("name","naziv").addClass("input");
        sadrzaj.append(label).append(input).append("<br/>");

        sadrzaj.append($("<button/>").addClass("button").html("Kreriaj natječaj").click(kreirajVrstuNatjecaj));
        kontener.append(sadrzaj);
        $("#id01").append(kontener).show();
    });
    


    var noviNatjecaj = $("<div/>").addClass("kontener-noviNatjecaj right");
    noviNatjecaj.append(pretragaBtn);
    $(".kontener-pretraga").append(noviNatjecaj);
}
function kreirajVrstuNatjecaj() {
    var naziv = $("input[name=naziv]").val();

    $.ajax({
        type: "POST",
        url: "data/natjecaj.php",
        data: {
            kreirajVrstuNatjecaj: 1,
            naziv: naziv
        },
        dataType: 'json',
        success: function (response) {           
            if (response != 1) {
                $("#poruka-ponuda").html(response.greska).addClass("greska-poruka").show();
            } else {
                $(".kontener-popup").empty();
                $(".kontener-popup").append($("<p/>").html("Uspjesno kreirana vrsta").addClass("greska-poruka").show());
            }
        }
    });
}
function azurirajVrstuNatjecaj(vrstaId, naziv) {
    var kontener = $("<div/>");
    var sadrzaj = $("<div/>").addClass("kontener-popup").append("<p/>").html("Azuriranje natječaj").append("<hr/>");
    
    var label = $("<label/>").attr("for","naziv").html("Naziv vrste:").addClass("labela");
    var input = $("<input/>").attr("name","naziv").addClass("input").val(naziv);
    sadrzaj.append(label).append(input).append("<br/>");


    sadrzaj.append($("<button/>").addClass("button").html("Spremi promjene").click( e => azuriranjeVrstu(vrstaId)));
    kontener.append(sadrzaj);
    $("#id01").append(kontener).show();

    
}
function azuriranjeVrstu(vrstaId) {    
    var naziv = $("input[name=naziv]").val();
    $.ajax({
        type: "POST",
        url: "data/natjecaj.php",
        data: {
            azurirajVrstuNatjecaja: 1,
            vrstaId: vrstaId,
            naziv: naziv
        },
        dataType: 'json',
        success: function (response) {           
            if (response != 1) {
                $("#poruka-ponuda").html(response.greska).addClass("greska-poruka").show();
            } else {
                $(".kontener-popup").empty();
                $(".kontener-popup").append($("<p/>").html("Uspjesno azurirana vrsta natjecaja").addClass("greska-poruka").show());
            }
        }
    });
}
function obrisiVrstuNatjecaja(vrstaId) {
    var kontener = $("<div/>");
    var sadrzaj = $("<div/>").addClass("kontener-popup").append("<p/>").html("Želite li izbrisat vrstu").append("<hr/>");
    
    sadrzaj.append($("<button/>").addClass("button").html("Da želim").click( function() {
        $("#id01").append(kontener).show();
        $.ajax({
            type: "POST",
            url: "data/natjecaj.php",
            data: {
                obrisiVrstuNatjecaja: 1,
                vrstaId: vrstaId,
            },
            dataType: 'json',
            success: function (response) {           
                if (response != 1) {
                    $("#poruka-ponuda").html(response.greska).addClass("greska-poruka").show();
                } else {
                    $(".kontener-popup").empty();
                    $(".kontener-popup").append($("<p/>").html("Uspjesno izbrisana vrsta natjecaj").addClass("greska-poruka").show());
                }
            }
        });
    }));
    kontener.append(sadrzaj);
    $("#id01").append(kontener).show();
}

function sortiranjeStupaca() {
    $("#sadrzaj table");
}