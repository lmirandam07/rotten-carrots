

// Utilización de JQuery
$("#btn-carrots").click(function(){ 
    let id_spoiler = $("#btn-comment").val(); // Obtener el valor del input que será el id del spoiler
    +$("#btn-carrots")[0].childNodes[1].nodeValue++; // Aumentar like en el sitio
    $("#btn-carrots")[0].disabled = true; 
    $.ajax({ // Uso del modulo de peticiones AJAX para enviar datos al servidor
            url: 'actualizar_like.jsp',
            type: 'POST',
            data: {id_spoiler: id_spoiler}, // Se envian los datos al sevidor para actualizar like en la base de datos
            success: function(msg) {
                console.log(msg);
            }
        }
    );
});