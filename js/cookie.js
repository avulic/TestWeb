$(document).ready(function() {
    if (document.cookie.indexOf('uvjeti') == -1) {
        $(".fixed-top-wrap").removeClass('sakrij');
            $(".fixed-top-wrap").addClass('prikazi');
        $(".cookie-message-button").click(function() {
            $(".fixed-top-wrap").removeClass('prikazi');
            $(".fixed-top-wrap").addClass('sakrij');
            dohvatiVrijemeSustava();
        });
    }
});


function dohvatiVrijemeSustava() {
    $.ajax({
        type: "GET",
        url: "data/vrijeme.php",
        data: {
            ispisVremena: 1
        },
        dataType: "JSON",
        success: function (vrijeme) {
            var exdays = 2;
            var cname = "uvjeti";
            var d = new Date(vrijeme.sustav);
            d.setTime(d.getTime() + (exdays*24*60*60*1000));
            var expires = "expires="+ d.toUTCString();
            document.cookie = cname + "=" + cname + ";" + expires + ";path=/";
        }
    });
}
