
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
    <%@include file="templates/header.jsp" %>
    <%
     Class.forName("org.mariadb.jdbc.Driver");
<<<<<<< HEAD
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");
     
=======
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");    
>>>>>>> 87e5fda87ea88400ac2e98f960ab37dfa15a1c7d
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT sp.id_spoiler, nombre_usuario, foto_pelicula, genero, titulo_spoiler, carrots, comentarios "
                                        + "FROM spoiler sp, pelicula p, usuario us "
                                        + "WHERE sp.id_pelicula = p.id_pelicula AND sp.id_usuario = us.id_usuario; ");
    
    %>
    <main class="main-container">
        <div class="foro-container">
            <section class="posts-container">
                
                <%
                    while(rs.next()) {
                        String usuario = rs.getString("nombre_usuario");
                        String foto_pelicula = rs.getString("foto_pelicula");
                        String titulo = rs.getString("titulo_spoiler");
                        String genero = rs.getString("genero");
                        String carrots = rs.getString("carrots");
                        String comentarios = rs.getString("comentarios");
                        String id_spoiler = rs.getString("id_spoiler");
                    
                 %>
                 
                 <form class="post" method="POST" action="spoiler.jsp">
                    <div class="post-img">
                        <img src="<%=foto_pelicula%>" class="img-spoiler" alt="">
                    </div>

                    <div class= "post-content">
                        <div class="post-tag">
                            <small class="tag"><%= genero %></small>
                        </div>

                        <div class="post-user">
                            <i class="fas fa-user"></i>
                            <a href="./administrar_perfil.jsp" class="user-name"><small>@<%= usuario %></small></a>
                        </div>

                        <div class="post-title">
                            <h3><%= titulo %></h3>
                        </div>

                        <div class="post-info">
                            <div class="post-carrots">
                                <button type="button" class="btn-post" ><small class="carrots"><i class="fas fa-carrot"></i><%= carrots %></small></button>
                            </div>
                            <div class="post-comments">
                                <button type="button" class="btn-post" ><small class="comments"><i id="icono" class="fas fa-comment-dots"></i> <%= comentarios %></small></button>
                            </div>
                            <div class="post-comments">
                                <button name="<%= id_spoiler %>" type="submit" class="btn-post"><small class="comments"><i id="icono" class="fas fa-share"></i> Ver spoiler</small></button>
                            </div>
                            
                        </div>
                    </div>

                </form>
                 
                 <%}%>
                
                

                <!--<div class="post">
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
                                <button class="btn-post"><small class="carrots"><i class="fas fa-carrot"></i> 15</small></button>
                            </div>
                            <div class="post-comments">
                                <button class="btn-post"><small class="comments"><i id="icono" class="fas fa-comment-dots"></i> 50</small></button>
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

                        <div class="post-us0er">
                            <i class="fas fa-user"></i>
                            <a href="#" class="user-name"><small>@SuicideSquadHater</small></a>
                        </div>

                        <div class="post-title">
                            <h3>Al final todo fue un sueño</h3>
                        </div>

                        <div class="post-info">
                            <div class="post-carrots">
                                <button class="btn-post"><small class="carrots"><i class="fas fa-carrot"></i> 15</small></button>
                            </div>
                            <div class="post-comments">
                                <button class="btn-post"><small class="comments"><i id="icono" class="fas fa-comment-dots"></i> 50</small></button>
                            </div>
                        </div>
                    </div>
                </div> -->
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