function ponudeRegistriran() {
    ispisPonudeRegistriran();
}
function ponudeModerator() {
    ispisPonudeModerator();
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
function nadopuinTablicuPonudaRegistriran(sadrzaj) { 
    var data = $("<td/>");
    var i = 0;
    $(sadrzaj).each(function() {

        var status = $(this.find("td")[3]).html();
        data = $("<td/>");
        if (status == 'poslana' || status == 'povucena') {
            elem = $("<button/>").addClass("btn left").attr("id","s").html($("<i/>").addClass("fa fa-edit")).on("click", azuriranjePonude).prop('disabled', false).removeClass("disabled");
            data.append(elem);
        }else {
            elem = $("<button/>").addClass("btn left disabled").attr("id","s").html($("<i/>").addClass("fa fa-edit")).on("click", azuriranjePonude).prop('disabled', true);
            data.append(elem);
        }

        var zalbe_datum = new Date($(this.find("td")[5]).html());
        var vrijemeSustava = new Date($("#vrijemeSustava").html());
        
        if(status == 'odbijena' && zalbe_datum >= vrijemeSustava) {
            elem = $("<button/>").addClass("btn left").attr("id","s").css("border","2px red solid").html($("<i/>").addClass("fa fa-exclamation")).on("click", kreiranjeZalbe).prop('disabled', false).removeClass("disabled");
            data.append(elem);
        }else {
            elem = $("<button/>").addClass("btn left disabled").attr("id","s").css("border","2px red solid").html($("<i/>").addClass("fa fa-exclamation")).on("click", kreiranjeZalbe).prop('disabled', true);
            data.append(elem);
        }

        if(status != 'odabrana' && i == 0 || status == 'odbijena') {
            elem = $("<button/>").addClass("btn left disabled").attr("id","s").css("background-color","red").html($("<i/>").addClass("fa fa-trash")).on("click", izbrisiPonudu).prop('disabled', false).removeClass("disabled");
            data.append(elem);
            i++;
        }else {
            elem = $("<button/>").addClass("btn left disabled").attr("id","s").css("background-color","red").html($("<i/>").addClass("fa fa-trash")).on("click", izbrisiPonudu).prop('disabled', true);
            data.append(elem);
            i++;
        }
        $(this).append(data);
    });
}
function nadopuinTablicuPonudModerator(ponude) { 
    var data;
    brojOdabranih = 0;
    $(ponude).each(function() {
        var id = $(this.find("td")[0]).html();
        var naziv = $(this.find("td")[2]).html(); 
        var opis = $(this.find("td")[4]).html(); 
        var brojDobitnika = $(this.find("td")[9]).html(); 
        data = $("<td/>");
        var zalbe_rok = new Date($(this.find("td")[7]).html());   
        var ponude_rok = new Date($(this.find("td")[8]).html());        
        var status = $(this.find("td")[6]).html();
        var vrijemeSustava = new Date($("#vrijemeSustava").html());
        if ($(this).children().length > 1) {

            if( status == 'poslana' && ponude_rok > vrijemeSustava && brojOdabranih <= brojDobitnika) {
                elem = $("<button/>").addClass("btn left").html($("<i/>").addClass("btn-odobrena fa fa-check")).click(event =>{promjeniStatusPonude(id,"odobrena",naziv,opis)}).prop('disabled', false).removeClass("disabled");
                data.append(elem);
                elem = $("<button/>").addClass("btn left").html($("<i/>").addClass("btn-odbijena fa fa-close")).click(event => {promjeniStatusPonude(id,"odbijena",naziv,opis)}).prop('disabled', false).removeClass("disabled");
                data.append(elem);
                $(this).append(data);
            }else {
                elem = $("<button/>").addClass("btn-odobrena btn left disabled").attr("id","s").html($("<i/>").addClass("fa fa-check")).prop('disabled', true);
                data.append(elem);
                elem = $("<button/>").addClass("btn-odbijena btn left disabled").attr("id","s").html($("<i/>").addClass("fa fa-close")).prop('disabled', true);
                data.append(elem);
                $(this).append(data);
            }

            if (status == 'odobrena' && zalbe_rok < vrijemeSustava) {
                data = $("<td/>");
                elem = $("<button/>").addClass("btn left").html($("<i/>").addClass("fa fa-check")).click(event => {postaviPobjednika(id,naziv,opis)});
                data.append(elem);
                $(this).append(data);
            }else {
                data = $("<td/>");
                elem = $("<button/>").addClass("btn left disabled").html($("<i/>").addClass("fa fa-check")).prop('disabled', true);
                data.append(elem);
                $(this).append(data);
            }
            
        }
    });
}



function kreirajnjePonude() {  
    var natjecajId = $($(this).parent().parent().find("td")[0]).html();

    var kontener = $("<div/>");
    var sadrzaj = $("<div/>").addClass("kontener-popup").append("<p/>").html("Kreiranje ponuda").append("<hr/>");

    var label = $("<label/>").html('').attr("id","poruka-ponuda").hide();
    sadrzaj.append(label).append("<br/>");
    
    var label = $("<label/>").attr("for","naziv").html("Naziv ponude:").addClass("labela");
    var input = $("<input/>").attr("name","naziv").addClass("input");
    sadrzaj.append(label).append(input).append("<br/>");

    label = $("<label/>").attr("for","opis").html("Opis ponude:").addClass("labela");
    input = $("<textarea/>").attr("name","opis").addClass("input");
    sadrzaj.append(label).append(input);

    sadrzaj.append($("<button/>").addClass("button").html("Predaj").click( e => posaljiPonudu(natjecajId)));
    kontener.append(sadrzaj);
    $("#id01").append(kontener).show();
}
function posaljiPonudu(natjecajId) {
    var naziv = $("input[name=naziv]").val();
    var opis= $("textarea[name=opis]").val();

    $.ajax({
        type: "POST",
        url: "data/ponuda.php",
        data: {
            pohraniPonudu: 1,
            naziv: naziv,
            opis: opis,
            natjecajId: natjecajId
        },
        dataType: "json",
        success: function (response) {
            if (response != 1) {
                $("#poruka-ponuda").html(response.greska).addClass("greska-poruka").show();
            } else {
                $(".kontener-popup").empty().append($("<p/>").html("Ponuda uspjesno kreirana"));
            }
            
        }
    });
}


function ispisPonudeRegistriran() {
    $("#sadrzaj").empty();
    $.ajax({
        type: "GET",
        url: "data/ponuda.php",
        data: {
            dohvatiPonuduKorisnika: 1
        },
        dataType: 'json',
        success: function (ponuda) { 
            var table = $("<table/>").addClass("korisnici");
            var zaglavlje = kreirajZaglavlje(ponuda, "Akcija");
            var sadrzaj = popuniTablicu(ponuda);
            //nadopuinTablicu(sadrzaj);
            nadopuinTablicuPonudaRegistriran(sadrzaj);

            table.append(zaglavlje).append(sadrzaj);
            dodajPretrazivanje();
            $("#sadrzaj").append(table);
            dodajStranicenje();
        }
    });
}



function azuriranjePonude(){
    var ponudaId = $($(this).parent().parent().find("td")[0]).html();
    var naziv = $($(this).parent().parent().find("td")[1]).html();
    var opis = $($(this).parent().parent().find("td")[4]).html();
    

    var kontener = $("<div/>");
    var sadrzaj = $("<div/>").addClass("kontener-popup").append("<p/>").html("Izmjeni ponudu").append("<hr/>");

    var label = $("<label/>").html('').attr("id","poruka-ponuda").hide();
    sadrzaj.append(label).append("<br/>");
    
    label = $("<label/>").attr("for","naziv").html("Naziv ponude:").addClass("labela");
    var input = $("<input/>").attr("name","naziv").addClass("input").val(naziv);
    sadrzaj.append(label).append(input).append("<br/>");

    label = $("<label/>").attr("for","opis").html("Opis ponude:").addClass("labela");
    input = $("<textarea/>").attr("name","opis").addClass("input").val(opis);
    sadrzaj.append(label).append(input);

    label = $("<label/>").attr("for","status-ponude").html("Status:").addClass("labela");
    var odabirVelicineStranice = $("<select/>").attr("id","status-ponude").attr("name","status-ponude")
                            .append($("<option>", { value: "povucena", text: 'povuci' }))

    sadrzaj.append(label).append(odabirVelicineStranice);

    sadrzaj.append($("<button/>").addClass("button").html("Spremi promjene").click( e => azurirajPonuduRegistrirani(ponudaId)));
    kontener.append(sadrzaj);
    $("#id01").append(kontener).show();
}
function azurirajPonuduRegistrirani(ponudaId) {
    var naziv = $("input[name=naziv]").val();
    var opis= $("textarea[name=opis]").val();
    var status = $("select[name=status-ponude]").val();

    $.ajax({
        type: "POST",
        url: "data/ponuda.php",
        data: {
            azurirajPonudu: 1,
            naziv: naziv,
            opis: opis,
            status: status,
            ponudaId: ponudaId
        },
        dataType: "json",
        success: function (response) {
            if (response.greska != undefined) {
                $("#poruka-ponuda").html(response.greska).addClass("greska-poruka").show();
            } else {
                $("#sadrzaj").empty();
                $("#id01").empty();
                $("#id01").hide();
                ispisPonudeRegistriran();
            }
            
        }
    });
}
function izbrisiPonudu() {
    var ponudaId = $($(this).parent().parent().find("td")[0]).html();

    var kontener = $("<div/>");
    var sadrzaj = $("<div/>").addClass("kontener-popup").append("<p/>").html("Želite li izbrisat ponudu").append("<hr/>");
    
    sadrzaj.append($("<button/>").addClass("button").html("Da želim").click( function() {
        $.ajax({
            type: "POST",
            url: "data/ponuda.php",
            data: {
                izbrisiPonudu: 1,
                ponudaId: ponudaId
            },
            dataType: "json",
            success: function (response) {
                $("#sadrzaj").empty();
                $("#id01").empty();
                $("#id01").hide();
                ispisPonudeRegistriran();
            }
        });
    }));
    kontener.append(sadrzaj);
    $("#id01").append(kontener).show();
}



function ispisPonudeModerator() {
    $("#sadrzaj").empty();
    $.ajax({
        type: "POST",
        url: "data/ponuda.php",
        data: {
            dohvatiPonude: 1
        },
        dataType: 'json',
        success: function (ponude) { 
            var table = $("<table/>").addClass("korisnici");
            var zaglavlje = kreirajZaglavlje(ponude, ["Odobro/Odbij","Pobjednik"]);
            var sadrzaj = popuniTablicu(ponude, "Naziv natječaja");
            nadopuinTablicuPonudModerator(sadrzaj);
            
            table.append(zaglavlje).append(sadrzaj);
            dodajPretrazivanje();
            $("#sadrzaj").append(table);
            dodajStranicenje();
        }
    });
}
function promjeniStatusPonude(id,status,naziv,opis) {   
    $.ajax({
        type: "POST",
        url: "data/ponuda.php",
        data: {
            azurirajPonudu : 1,
            ponudaId : id,
            status: status,
            naziv: naziv,
            opis: opis
        },
        dataType: "json",
        success: function (response) {
            $("#sadrzaj").empty();
            $("#id01").empty();
            $("#id01").hide();
            ispisPonudeModerator();
        }
    });
}




function kreiranjeZalbe() {
    var ponudaId = $($(this).parent().parent().find("td")[0]).html();
    
    var kontener = $("<div/>");
    var sadrzaj = $("<div/>").addClass("kontener-popup").append("<p/>").html("Kreiranje žalbe").append("<hr/>");

    var label = $("<label/>").html('').attr("id","poruka-ponuda").hide();
    sadrzaj.append(label).append("<br/>");
    
    label = $("<label/>").attr("for","naziv").html("Naziv Žalbe:").addClass("labela");
    var input = $("<input/>").attr("name","naziv").addClass("input");
    sadrzaj.append(label).append(input).append("<br/>");

    label = $("<label/>").attr("for","opis").html("Opis žalbe:").addClass("labela");
    input = $("<textarea/>").attr("name","opis").addClass("input");
    sadrzaj.append(label).append(input);

    sadrzaj.append($("<button/>").addClass("button").html("Pošalji žalbu").click( e => kreirajZalbu(ponudaId)));
    kontener.append(sadrzaj);
    $("#id01").append(kontener).show();
}
function kreirajZalbu(ponudaId) {
    var naziv = $("input[name=naziv]").val();
    var opis= $("textarea[name=opis]").val();
    
    $.ajax({
        type: "POST",
        url: "data/zalba.php",
        data: {
            kreirajZalbu: 1,
            naziv: naziv,
            opis: opis,
            ponudaId: ponudaId
        },
        dataType: "json",
        success: function (response) {
            if (response.greska != undefined) {
                $("#poruka-ponuda").html(response.greska).addClass("greska-poruka").show();
            } else {
                $("#sadrzaj").empty();
                $("#id01").empty();
                $("#id01").hide();
                ispisPonudeRegistriran();
            }
            
        }
    });
}



function postaviPobjednika(ponudaId,naziv,opis) {
    $.ajax({
        type: "POST",
        url: "data/natjecaj.php",
        data: {
            postaviPobjednike : 1,
            ponudaId : ponudaId
        },
        dataType: "json",
        success: function (response) {
            promjeniStatusPonude(ponudaId,"odabrana",naziv,opis);
        }
    });
}