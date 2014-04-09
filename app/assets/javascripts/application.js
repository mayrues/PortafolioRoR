//= require jquery
//= require turbolinks

$(window).load(function () {    
    $('ul li a').click(function (e) {        
        e.preventDefault();
        var strAncla = $(this).attr('href');
        if (strAncla != "" && strAncla.contains("#")) {
            $('body,html').stop(true, true).animate({ scrollTop: $(strAncla).offset().top }, 1000);
        }
    });
    $("#formContact").subalert("Envio");
        var valuesToSubmit = $(this).serialize();
        var accion=$(this).attr('action');
        
        $.ajax({
            url: accion, //sumbits it to the given url of the form
            data: valuesToSubmit,
            type: "POST",
            dataType: 'json',
            processData: false,
            success: function (msg) {                         
                $("#msg").html("Gracias por contactar con nosotros.");
                $('body,html').stop(true, true).animate({ scrollTop: $("#contacto").offset().top }, 1000);                
            },
            error: function (xhr, status) {
                alert("Error " + xhr.error);
            }
        });
        return false; // prevents normal behaviour
    });
});
