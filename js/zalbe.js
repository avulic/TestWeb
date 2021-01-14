function ispisZalbiAdmin() {
    ispisiZalbeAdmin();
}

function nadopuinTablicuZalbeAdmin(sadrzaj) { 
    $(sadrzaj).each(function() {
        var natjecajId = $(this.find("td")[0]).html();
        data = $("<td/>");
        elem = $("<button/>").addClass("btn left").attr("id","s").html($("<i/>").addClass("fa fa-check")).click(e => prihvatiZalbu(natjecajId, "odobri"));
        data.append(elem);

        elem = $("<button/>").addClass("btn left").attr("id","s").html($("<i/>").addClass("fa fa-close")).click(e => prihvatiZalbu(natjecajId, "odbij"));
        data.append(elem);
        $(this).append(data);
    });
}

function ispisiZalbeAdmin() {
    $("#sadrzaj").empty();
    $("#id01").empty();
    $.ajax({
        type: "POST",
        url: "data/zalba.php",
        data: {
            dohvatiZalbe: 1
        },
        dataType: 'json',
        success: function (natjecaji) { 
            var table = $("<table/>").addClass("korisnici");
            var zaglavlje = kreirajZaglavlje(natjecaji, "Prihvati zalbu");
            var sadrzaj = popuniTablicu(natjecaji);
            nadopuinTablicuZalbeAdmin(sadrzaj);

            table.append(zaglavlje).append(sadrzaj);
            dodajPretrazivanje("naziv obrta");
            $("#sadrzaj").append(table);
            dodajStranicenje();
        }
    });
}

function prihvatiZalbu(zalbaId, status) {
    $.ajax({
        type: "POST",
        url: "data/zalba.php",
        data: {
            prihvatiZalbu : 1,
            zalbaId : id,
            status: status
        },
        dataType: "json",
        success: function (response) {
            $("#sadrzaj").empty();
            $("#id01").empty();
            $("#id01").hide();
            ispisiZalbeAdmin();
        }
    });
}