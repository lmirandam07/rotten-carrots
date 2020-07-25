/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

btn = $(".btn-carrots");
btn.each(function(i){
    $(this).on('click', function() {
        let num_comment = this.value;
        +this.childNodes[0].childNodes[1].nodeValue++;
        this.disabled = true;
        $.ajax({
            url: 'actualizar_like_comentario.jsp',
            type: 'POST',
            data: {num_comment: num_comment},
            success: function(msg) {
                console.log(msg);
            }
        });
    })
});
