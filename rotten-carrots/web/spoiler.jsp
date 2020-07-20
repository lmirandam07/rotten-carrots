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
    <link rel="stylesheet" href="./css/spoiler.css">
    <link rel="stylesheet" href="./css/template.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots - Spoiler</title>
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
        <div class="post">

            <img src="./img/suicidesquad.png" class="img_spoiler" alt="">
            
            <div class= "tag">
                <p class="t_tag">
                    Categoría
                </p>
            </div>

            <div class="tiempo">
                <p>
                    Hace 10 horas
                </p>
            </div>

            <img class="pp_user" src="./img/pp_user.png" alt=""> <!--AÑADIR IMÁGEN PP USUARIO-->
            <div class="user">
                <h3>
                    @SuicideSquadHater
                </h3>
            </div>

            <div class="titulo">
                <h2>
                    Título Spoiler
                </h2>
            </div>

            <div class="comentario">
                <p class="t_comentario">
                    Ese Joker de Jared Leto es tremenda ***** , no sé a quién se le ocurrió hacer esta película, fue un insulto a los fans. Porquería de villano Enchantress.
                </p>
            </div>

            <div class="carrots">
                <i id="icono" class="fas fa-carrot"></i> 15
            </div>

            <div class="comments">
                <i id="icono" class="fas fa-comment-dots"></i> 8
            </div>

            <div class="share">
                <i id="icono" class="fas fa-share"></i> Compartir
            </div>

        </div> <!--FINAL DEL POST-->

        <div class="more">
            <a href="./comentarios.jsp">
                <h2 class="t_more">Cargar más comentarios</h2>
            </a>
            <i id="i_more" class="fas fa-chevron-circle-right"></i>
        </div>
    </main>

</body>
</html>