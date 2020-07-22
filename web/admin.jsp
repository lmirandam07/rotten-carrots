
<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/template.css">
		<link rel="stylesheet" href="./css/admin.css">
		<link href="https://fonts.googleapis.com/css2?family=Istok+Web:wght@700&family=Montserrat&family=Roboto&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
    <%@include file="templates/header.html" %>
    <main class="main-container">
        <div class="prueba">
                <h5 class="create">Crear Discusion</h5>
                 <a href="./agregar_discusion.jsp"><img class="plus" src="./img/plus.png" alt="plus"></a>
                 <h3 class="Discussions">Mis discusiones:</h3>
                 <table class="encabezados">
                     <tr>
                        <td><h4>Nombre</h4></td>
                        <td><h4>Discusión</h4></td>

                     </tr>
                 </table>
                <table class="primtabla">
                        <tbody>
                                <tr>
                                        <td class="td1"><div class="act1"> <p>Jack Muere</p> </div></td>
                                        <td class="td2"><div class="act2"><p>Al final de Titanic todos nos desilucionamos con el destino final que tuvo el personaje interpretado por Leonardo DiCaprio...</p></div></td>

                                        <td class="td4"><img class="del"src="./img/delete.png" alt=""></td>
                                </tr>
                        </tbody>
                </table>
                <table class="segtabla">
                        <tbody>
                                <tr>
                                        <td class="td1"><div class="act1"> <p>Bruce Willis era un fantasma</p></div></td>
                                        <td class="td2"><div class="act2"><p>De lo mas emocionante del cine en las últimas 3 décadas fué enterarnos que al final, Bruce Willis estaba muerto...</p></div></td>
                                        <td class="td3"><div class="act3"> <img class="imagen2"src="./img/willis.jpg" alt=""></div></td>
                                        <td class="td4"><img class="del"src="./img/delete.png" alt=""></td>
                                </tr>
                        </tbody>
                </table>
                <table class="tertabla">
                        <tbody>
                                <tr>
                                        <td class="td1"><div class="act1"><p> Snape era bueno</p></div></td>
                                        <td class="td2"><div class="act2"><p>Después de la película del principe mestizo, la verdad sorpendió que las razones de Snape para hacer lo que hizo estaban justificadas...</p> </div></td>
                                        <td class="td3"><div class="act3"> <img class="imagen2"src="./img/goodboi.jpg" alt=""></div></td>
                                        <td class="td4"><img class="del"src="./img/delete.png" alt=""></td>
                                </tr>
                        </tbody>
                </table>


                <table class="cuartabla">
                        <tbody>
                                <tr>
                                        <td class="td1"><div class="act4"><p>Tyler Durden era una personalidad alterna</p></div></td>
                                        <td class="td2"><div class="act2"><p>Muy pocos se dieron cuenta de los mensajes que nos daban alrededor de la película para descubrir la verdad...</p> </div></td>
                                        <td class="td3"><div class="act3"> <img class="imagen3"src="./img/crazyboi.jpg" alt=""> </div></td>
                                        <td class="td4"><img class="del"src="./img/delete.png" alt=""></td>
                                </tr>
                        </tbody>
                </table>
        </div>
    </main>

</body>
</html>
