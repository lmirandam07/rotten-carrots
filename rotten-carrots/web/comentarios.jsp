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
    <header class="wrapper">
        <nav class="navbar">
            <div class="searchbar-container">
                <div class="searchbar">
                    <input type="text" class="search-input" placeholder="Ingrese la película a buscar" id="search">
                    <a class="search-btn" href="./resultados_busqueda.jsp" id="search-btn">
                        <i class="fas fa-search"></i>
                    </a>
                </div>
            </div>

            <div class="profile-container">
                <div class="profile">
                    <a href="./administrar_perfil.jsp" class="user-img"><i class="far fa-user fa-2x"></i> </a>
                    <small class="user-name" id="user-name">Usuario</small>
                </div>
            </div>

        </nav>

        <aside class="sidebar">
            <div class="sb-logo">
                <img class="logo" src="./img/logo.jpg" alt="">
            </div>
            <ul class="sb-items">
                <li class="sb-item"><a class="sb-links" href="./foro.jsp"><i class="fas fa-newspaper fa-2x"></i> <span class="sb-text">Foro </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./admin.jsp"><i class="far fa-plus-square fa-2x"></i> <span class="sb-text">Discusión </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./tendencia.jsp"><i class="fas fa-fire-alt fa-2x"></i> <span class="sb-text">Tendencias </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./nosotros.jsp"><i class="far fa-address-card fa-2x"></i> <span class="sb-text">Nosotros </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./contacto.jsp"><i class="far fa-envelope fa-2x"></i> <span class="sb-text">Contáctanos </span></a></li>
            </ul>
        </aside>


    </header>
    <main class="main-container">
        <div class="f_comments">
            <div> <!--Primer comment-->

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

                <div class="comments_1">
                    <i id="icono" class="fas fa-comment-dots"></i> 1
                </div>

                <div class="share_1">
                    <i id="icono" class="fas fa-share"></i> Compartir
                </div>

            </div>


            <div> <!--Segundo comment-->

                <img class="pp_user_2" src="./img/pp_user.png" alt=""> <!--AGREGAR IMAGEN PP USUARIO-->

                <div class="user_2">
                    <h4>
                        @SuicideSquadHater2
                    </h4>
                </div>

                <div class="tiempo_2">
                    <p>Hace 10 horas</p>
                </div>

                <div class="comentario_2">
                    <p class="t_comentario_2">
                        Eres un papanatas.
                    </p>
                </div>

                <div class="carrots_2">
                    <i id="icono" class="fas fa-carrot"></i> 7
                </div>

                <div class="comments_2">
                    <i id="icono" class="fas fa-comment-dots"></i> 0
                </div>

                <div class="share_2">
                    <i id="icono" class="fas fa-share"></i> Compartir
                </div>

            </div>


            <div> <!--Tercer comment-->

                <img class="pp_user_3" src="./img/pp_user.png" alt=""> <!--AGREGAR IMAGEN PP USUARIO-->

                <div class="tag_3">
                    <p class="t_tag_3">
                        Categoría
                    </p>
                </div>

                <div class="comentario_3">
                    <p class="t_comentario_3">
                        No concuerdo caballero, me parece que la historia fue llevada a cabo de la mejor forma y Jared hace un papel fenomenal en esa película, retratando a la perfección un personaje tan complejo como el Joker y el plot twist al final fue la cereza del pastel ante tal obra de arte. Saludos
                    </p>
                </div>

                <div class="user_3">
                    <h4>
                        @SuicideSquadLover2
                    </h4>
                </div>

                <div class="tiempo_3">
                    <p>Hace 10 horas</p>
                </div>

                <div class="carrots_3">
                    <i id="icono" class="fas fa-carrot"></i> -3
                </div>

                <div class="comments_3">
                    <i id="icono" class="fas fa-comment-dots"></i> 1
                </div>

                <div class="share_3">
                    <i id="icono" class="fas fa-share"></i> Compartir
                </div>

            </div>
        </div> <!--FIN DEL FONDO-->
    </main>

</body>
</html>
