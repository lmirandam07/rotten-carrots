

// Utilización de JQuery
btn = $(".btn-carrots");
btn.each(function(i){ // Iterar la lista de nodos de comentarios
    $(this).on('click', function() {
        let num_comment = this.value;  // Obtener el valor del input que será el numero de comentario
        +this.childNodes[0].childNodes[1].nodeValue++; // Aumentar like visualmente en el sitio
        this.disabled = true;
        $.ajax({ // Uso del modulo de peticiones AJAX para enviar datos al servidor
            url: 'actualizar_like_comentario.jsp',
            type: 'POST',
            data: {num_comment: num_comment}, // Se envian los datos al sevidor para actualizar like en la base de datos
            success: function(msg) {
                console.log(msg);
            }
        });
    })
});
