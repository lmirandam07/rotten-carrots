
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
    <link rel="stylesheet" href="./css/foro.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
    <%@include file="templates/header.html" %>
    <main class="main-container">
        <div class="foro-container">
            <section class="posts-container">

                <div class="post">
                    <div class="post-img">
                        <img src="./img/suicidesquad.png" class="img-spoiler" alt="">
                    </div>

                    <div class= "post-content">
                        <div class="post-tag">
                            <small class="tag">categoría</small>
                        </div>

                        <div class="post-user">
                            <i class="fas fa-user"></i>
                            <a href="./administrar_perfil.jsp" class="user-name"><small>@SuicideSquadHater</small></a>
                        </div>

                        <div class="post-title">
                            <h3>Odio el Joker de Jared Leto</h3>
                        </div>

                        <div class="post-info">
                            <div class="post-carrots">
                                <small class="carrots"><i class="fas fa-carrot"></i> 15</small>
                            </div>
                            <div class="post-comments">
                                <small class="comments"><i id="icono" class="fas fa-comment-dots"></i> 50</small>
                            </div>
                            <div class="post-share">
                                <small class="comments"><i id="icono" class="fas fa-share"></i> Compartir</small>
                            </div>
                        </div>
                        <a href="./spoiler.jsp">
                            <span class="link-span"></span>
                        </a>
                    </div>

                </div>

                <div class="post">
                    <div class="post-img">
                        <img src="./img/after.jpg" class="img-spoiler" alt="">
                    </div>

                    <div class= "post-content">
                        <div class="post-tag">
                            <small class="tag">categoría</small>
                        </div>

                        <div class="post-user">
                            <i class="fas fa-user"></i>
                            <a href="#" class="user-name"><small>@SuicideSquadHater</small></a>
                        </div>

                        <div class="post-title">
                            <h3>Los manes se van a vivir juntos</h3>
                        </div>

                        <div class="post-info">
                            <div class="post-carrots">
                                <small class="carrots"><i class="fas fa-carrot"></i> 15</small>
                            </div>
                            <div class="post-comments">
                                <small class="comments"><i id="icono" class="fas fa-comment-dots"></i> 50</small>
                            </div>
                            <div class="post-share">
                                <small class="comments"><i id="icono" class="fas fa-share"></i> Compartir</small>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="post">
                    <div class="post-img">
                        <img src="./img/inception.jpg" class="img-spoiler" alt="">
                    </div>

                    <div class= "post-content">
                        <div class="post-tag">
                            <small class="tag">categoría</small>
                        </div>

                        <div class="post-user">
                            <i class="fas fa-user"></i>
                            <a href="#" class="user-name"><small>@SuicideSquadHater</small></a>
                        </div>

                        <div class="post-title">
                            <h3>Al final todo fue un sueño</h3>
                        </div>

                        <div class="post-info">
                            <div class="post-carrots">
                                <small class="carrots"><i class="fas fa-carrot"></i> 15</small>
                            </div>
                            <div class="post-comments">
                                <small class="comments"><i id="icono" class="fas fa-comment-dots"></i> 50</small>
                            </div>
                            <div class="post-share">
                                <small class="comments"><i id="icono" class="fas fa-share"></i> Compartir</small>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="trend-container">
                <div class="trend">
                    <h2>Top Tendencias</h2>

                    <ul>
                        <li class="trend-movie">
                            <h3>Inception</h3>
                            <small>
                                8995 zanahorias
                            </small>
                        </li>
                        <li class="trend-movie">
                            <h3>Fight Club</h3>
                            <small>
                                7456 zanahorias
                            </small>
                        </li>
                        <li class="trend-movie">
                            <h3>After</h3>
                            <small>
                                4200 zanahorias
                            </small>
                        </li>
                        <li class="trend-movie">
                            <h3>Black Swan</h3>
                            <small>
                                2105 zanahorias
                            </small>
                        </li>
                    </ul>
                    <hr class="divisor">
                    <div class="mostrar-mas-container">
                        <a href="./tendencia.jsp" class="mostrar-mas">Mostrar más</a>
                        <i class="fas fa-arrow-circle-right"></i>
                    </div>
                </div>

            </section>
        </div>
    </main>

</body>
</html>