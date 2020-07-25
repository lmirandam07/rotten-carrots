/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$("#btn-carrots").click(function(){
    let id_spoiler = $("#btn-comment").val();
    +$("#btn-carrots")[0].childNodes[1].nodeValue++;
    $("#btn-carrots")[0].disabled = true;
    $.ajax({
            url: 'actualizar_like.jsp',
            type: 'POST',
            data: {id_spoiler: id_spoiler},
            success: function(msg) {
                console.log(msg);
            }
        }
    );
});