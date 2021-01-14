function ispisiKorisnike() {
    $("#sadrzaj").empty();
    $("#id01").empty();
    $.ajax({
        type: "GET",
        url: "data/korisnici.php",
        data: {
            dohvatiKorisnike: 1
        },
        dataType: 'json',
        success: function (korisnici) {
            var table = $("<table/>").addClass("korisnici").addClass("admin");
            var zaglavlje = kreirajZaglavlje(korisnici, ["Opearcija","Uloga"]);
            var sadrzaj = popuniAdminTablicu(korisnici, extColumn=1);
            
            table.append(zaglavlje).append(sadrzaj);
            dodajPretrazivanje();
            $("#sadrzaj").append(table);
            dodajStranicenje();
        }
    });
}

function popuniAdminTablicu(korisnici, extColumn = null) {  
    var row, data = null;
    var sadrzaj = Array();
    $.each(korisnici, function (index, korisnik) {
        row = $("<tr/>");
        for(var elem in korisnik){   
            data = $("<td/>");
            data.append(korisnik[elem]);
            row.append(data);
        };
        if (extColumn == 1) {
            data = $("<td/>");
            elem = $("<button/>").addClass("button-medium").attr("id",korisnik["id"]);
            if (korisnik['status'] != 'blokiran') {
                elem.html("Blokiraj").attr("status", "blokiran").click(promjeniStatuskorisniku);
            }else {
                elem.html("Aktiviraj").attr("status", "aktiviran").click(promjeniStatuskorisniku);
            }
            data.append(elem);
            row.append(data);

            data = $("<td/>");
            elem = $("<button/>").addClass("button-medium").attr("id",korisnik["id"]);
            
            elem.html("Uloga").attr("status", "blokiran").click(promjeniUloguKorisnika);
            
            data.append(elem);
            row.append(data);
        }
        sadrzaj.push(row); 
    });  
    return sadrzaj;
}

function promjeniStatuskorisniku(event) {
    var idKorisnik = event.currentTarget.id;
    var status = $(event.currentTarget).attr("status");
    
    $.ajax({
        type: "POST",
        url: "data/korisnici.php",
        data: {
            promjeniStatuskorisniku : 1,
            idKorisnik : idKorisnik,
            status: status
        },
        dataType: "json",
        success: function (response) {
            if (response != 'blokiran') {
                $(event.currentTarget).html("Blokiraj").attr("status", "blokiran");
            }else {
                $(event.currentTarget).html("Aktiviraj").attr("status", "aktiviran");
            }
            
            $(event.currentTarget).closest("tr").find("td:nth-child(5)").text(response);
        }
    });
}

function ispisDnevnikaRada() {
    $("#sadrzaj").empty();
    $("#id01").empty();
    $.ajax({
        type: "GET",
        url: "data/dnevnikRada.php",
        data: {
            dohvatiDnevnikRada: 1
        },
        dataType: 'json',
        success: function (dnevnik) { 
            var table = $("<table/>").addClass("korisnici").addClass("admin");
            var zaglavlje = kreirajZaglavlje(dnevnik);
            var sadrzaj = popuniTablicu(dnevnik);

            table.append(zaglavlje).append(sadrzaj);
            dodajPretrazivanje();
            $("#sadrzaj").append(table);
            dodajStranicenje();
        }
    });
}

function promjeniUloguKorisnika() {
   
    var korisnikId = $($(this).parent().parent().find("td")[0]).html();
    var kontener = $("<div/>");
    var sadrzaj = $("<div/>").addClass("kontener-popup").append("<p/>").html("Promjeni ulogu").append("<hr/>");

    var label = $("<label/>").attr("for","korisnikId").html("Korsinicko ime:").addClass("labela");
    var input = $("<input/>").attr("name","korisnikId").addClass("input").val($($(this).parent().parent().find("td")[2]).html());
    sadrzaj.append(label).append(input).append("<br/>");

    $.ajax({
        type: "POST",
        url: "data/korisnici.php",
        data: {
            dohvatiUloga: 1
        },
        dataType: "json",
        success: function (response) {               
            $(response).each(function(index, obrt) {
                $("#listaObrta").append($("<option>", { value: obrt["iduloga"], text:  obrt["naziv"]}))
            });
        }
    });
    var label = $("<label/>").html('').attr("id","poruka-ponuda").hide();
    sadrzaj.append(label).append("<br/>");

    label = $("<label/>").attr("for","listaObrta").html("Uloga:").addClass("labela");
    var odabirVelicineStranice = $("<select/>").attr("id","listaObrta").attr("name","status-ponude")
    sadrzaj.append(label).append(odabirVelicineStranice);


    sadrzaj.append($("<button/>").addClass("button").html("Promjeni ulogu").click( e => izmjeniUlogu(korisnikId)));
    kontener.append(sadrzaj);
    $("#id01").append(kontener).show();
    
    var noviNatjecaj = $("<div/>").addClass("kontener-noviNatjecaj right");
    $(".kontener-pretraga").append(noviNatjecaj);
}

function izmjeniUlogu(korisnikId) {
    var ulogaId = $("#listaObrta option:selected").val();
    
    $.ajax({
        type: "POST",
        url: "data/korisnici.php",
        data: {
            postaviUloguKorisniku: 1,
            ulogaId: ulogaId,
            korisnikId: korisnikId
        },
        dataType: 'json',
        success: function (response) {           
            if (response != 1) {
                $("#poruka-ponuda").html(response.greska).addClass("greska-poruka").show();
            } else {
                $(".kontener-popup").empty();
                $(".kontener-popup").append($("<p/>").html("Uspjesno promjenjena uloga").addClass("greska-poruka").show());

                $("#sadrzaj").empty();
                $("#id01").empty();
                ispisiKorisnike();
            }
        }
    });
}