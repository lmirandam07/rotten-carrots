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
    <link rel="stylesheet" href="./css/comentarios.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots - Comentarios Spoiler</title>
</head>
<body>
    <%@include file="templates/header.html" %>
    <main class="main-container">
        <div class="comments-container">
            <div> <!--Comment-->

                <img class="pp_user_1" src="./img/pp_user.png" alt=""> <!--AGREGAR IMAGEN PP USUARIO-->

                <div class="tag_1">
                    <p class="t_tag_1">
                        Categoría
                    </p>
                </div>

                <div class="tiempo_1">
                    <p>Hace 10 horas</p>
                </div>

                <div class="user_1">
                    <h4>
                        @SuicideSquadLover
                    </h4>
                </div>

                <div class="comentario_1">
                    <p class="t_comentario_1">
                        No concuerdo caballero, me parece que la historia fue llevada a cabo de la mejor forma y Jared hace un papel fenomenal en esa película, retratando a la perfección un personaje tan complejo como el Joker y el plot twist al final fue la cereza del pastel ante tal obra de arte. Saludos
                    </p>
                </div>

                <div class="carrots_1">
                    <i id="icono" class="fas fa-carrot"></i> -3
                </div>

            </div>
            
        </div> <!--FIN DEL FONDO-->
    </main>

</body>
</html>
