var header;
function kreirajZaglavlje(data, extColumn = null) {
    header = [];
    
    var row = Array();
    for (var key in data[0]) {
        if (header.indexOf(key) === -1) {
            header.push(key);
        }
    }
    if (extColumn !== null) {
        if (Array.isArray(extColumn)) {
            $(extColumn).each(function(index, elem) {
                header.push(elem);
            });
        }else {
            header.push(extColumn);
        }
        
    }

    var tr = $('<tr/>');
    var head = null;
    $.each(header, function(key, elem){    
        head = $('<th/>');
        head.append(elem);
        tr.append(head);
    });
    row.push(tr);
    return row;
}

function popuniTablicu(sadrzaj, groupBy = null) {  
    var row, data = null, index = 0;
    var table = Array();
    for (let i = 0; i < sadrzaj.length; i++) {
        row = sadrzaj[i];

        var groupElement = (sadrzaj[i-1] != undefined) ? sadrzaj[i-1][groupBy] : null;
        tbRow = $("<tr/>");
        if (groupBy != null && ( (groupElement !=  row[groupBy]) || groupElement == null) ) {
            data = $("<td/>").attr("colspan","20").attr("style","background-color:blue");
            data.append("Ponude za natječaj:" + row[groupBy]);
            tbRow.append(data);
            table.push(tbRow); 

            tbRow = $("<tr/>");
            for(var elem in row){   
                data = $("<td/>");
                data.append(row[elem]);
                tbRow.append(data);
            };
            table.push(tbRow);

        }else {
            for(var elem in row){   
                data = $("<td/>");
                data.append(row[elem]);
                tbRow.append(data);
            };
            table.push(tbRow);
        }
    }
    return table;
}

function dodajPretrazivanje(column = null) {
    var div = $("<div/>").addClass("kontener-pretraga");
    var kontener = $("<div/>").addClass("pretraga").attr("style","margin-top:20px");
    var label =  (column == null) ? $("<label/>").html("Pretraživanje: ") : $("<label/>").html("Pretraživanje po " + column + ": ");
    var pretraga = $("<input/>").attr("id","pretraga-input").on("keyup", function() {pretrazivanjeTablice(column)} );
    kontener.append(label).append(pretraga).addClass("left");
    div.append(kontener);
    $("#sadrzaj").append(div);
}

function pretrazivanjeTablice(prema = null) {
    var trazi = $("#pretraga-input").val().toLowerCase();
    var found;
    if (trazi != '') {
        var column = header.indexOf(prema);
        var tablicaSadrzaj = $("#sadrzaj table").find("tr:gt(0)").length;
        if (tablicaSadrzaj == 0) {
            var pageNum = $(".button-small.active").html();        
            ispisiStranicu(pageNum);
        }else {            
            var tdIndex = 0;
            $("#sadrzaj table").find("tr:visible:gt(0)").each(function() {               
                if (prema != null) {
                    tdIndex = 0;
                    $(this).find("td").each(function(){              
                        if (tdIndex == column) {  
                            if ($(this).text().toLowerCase().indexOf(trazi) > -1) {
                                $(this).parent().show();
                            } else {
                                $(this).parent().hide();
                            }
                        }
                        tdIndex++; 
                    });
                } else {   
                    if ($(this).text().toLowerCase().indexOf(trazi) > -1) {
                        $(this).show();
                    } else {
                        $(this).hide();
                    }
                }
            });
        }
    }else {
        var pageNum = $(".button-small.active").html();        
        ispisiStranicu(pageNum);
    }
}

function dodajStranicenje() {
    odabirVelicineStranice();
    var kontenerNavigacijaStranica = $("<div/>");
    var nav;
    var optionVelicineStranice = $("#maxRows");
    optionVelicineStranice.on('change', function() {
        $("#stranicenje").html('');    
        ispisiStranicu();
        var maxRows = parseInt($(this).val());
        nav = dodajNavigacijuStraica(maxRows);
        kontenerNavigacijaStranica.append(nav);
    });
    $("#sadrzaj").append(kontenerNavigacijaStranica);
}

function ispisiStranicu(pageNum = 1) {
    var trIndex = 0;
    var maxRows = parseInt($("#maxRows").val());
    $("#sadrzaj table").find("tr:gt(0)").each(function() {
        trIndex++;
        if (trIndex > (maxRows*pageNum) || trIndex <= ((maxRows*pageNum)-maxRows)) {
            $(this).hide();
        }else {
            $(this).show();
        }    
    });
}

function dodajNavigacijuStraica(maxRows) {
    $("#navigacijaStranica").remove();
    var nav = $("<nav/>").attr("id","navigacijaStranica");
    var brojStranica = $("<ul/>").attr("id","stranicenje").attr("type","none");
    var totalRows = $("#sadrzaj table").find("tr").length-1;
    if (totalRows > maxRows) {
        var pageNum = Math.ceil(totalRows/maxRows);
        for (var i=1; i <= pageNum;) {
            var brojStranice = $("<li/>").addClass("left").attr("data-page", i).append($("<button/>").html(i++).addClass("button-small")).show();
            brojStranica.append(brojStranice);
        }
        nav.append(brojStranica);
    }

    $(nav).find("li button").first().addClass("active"); 
        $(nav).find("li").on('click', function() {
            if ($("#pretraga-input").val() == '') {
                var pageNum = $(this).attr("data-page");
                ispisiStranicu(pageNum);
            }else {
                var pageNum = $(this).attr("data-page");
                ispisiStranicu(pageNum);
                pretrazivanjeTablice();
            }
            $("#stranicenje li button").removeClass("active");
            $(this).find("button").addClass("active");
        });

    return nav;
}

function odabirVelicineStranice() {
    var kontener = $("<div/>").attr("name","prikaz-stranica").attr("id","kontener-stranicenje").attr("style","margin-top:20px");
    var naslov = $("<label/>").attr("for","prikaz-stranica").html("Prikaz po stranici");
    var odabirVelicineStranice = $("<select/>").attr("id","maxRows")
                            .append($("<option>", { value: 5000, text: 'Prikaži sve' }))
                            .append($("<option>", { value: 1, text: '1' }))
                            .append($("<option>", { value: 5, text: '5' }))
                            .append($("<option>", { value: 15, text: '15' }))
                            .append($("<option>", { value: 20, text: '20' }));
    kontener.append(naslov).append(odabirVelicineStranice).addClass("left");
    $(".kontener-pretraga").append(kontener);
}

function dodajSortiranjne() {

}