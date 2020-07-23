<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

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
    <%@include file="templates/header.jsp" %>
    <%
    int id_spoiler = Integer.parseInt(request.getParameter("id_spoiler"));  
    System.out.println(id_spoiler);  
    Class.forName("org.mariadb.jdbc.Driver");
<<<<<<< HEAD
    Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");    
=======
    Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");    
>>>>>>> 23de3cbafffd9cf7b76b129b25212dc2673a3eef
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT nombre_usuario, foto_pelicula, genero, titulo_spoiler, descripcion_spoiler, carrots, comentarios "
                                        + "FROM spoiler sp, pelicula p, usuario us "
                                        + "WHERE sp.id_pelicula = p.id_pelicula AND sp.id_usuario = us.id_usuario "
                                        + "AND sp.id_spoiler = "+id_spoiler+";"); 
    System.out.println(rs);
    %>
    <main class="main-container">
        
        <%
            
        while(rs.next()) {
            String usuario = rs.getString("nombre_usuario");
            String foto_pelicula = rs.getString("foto_pelicula");
            String genero = rs.getString("genero");
            String titulo = rs.getString("titulo_spoiler");
            String descripcion = rs.getString("descripcion_spoiler");
            String carrots = rs.getString("carrots");
            String comentarios = rs.getString("comentarios");
                    
        %>
        <div class="post">
            
            <img src="<%=foto_pelicula%>" class="img_spoiler" alt="">
            
            <div class= "tag">
                <p class="t_tag">
                    <%=genero%>
                </p>
            </div>

            <img class="pp_user" src="./img/pp_user.png" alt=""> <!--AÑADIR IMÁGEN PP USUARIO-->
            <div class="user">
                <h3>
                    @<%=usuario%>
                </h3>
            </div>

            <div class="titulo">
                <h2>
                    <%=titulo%>
                </h2>
            </div>

            <div class="comentario">
                <p class="t_comentario">
                    <%=descripcion%>
                </p>
            </div>

            <div class="carrots">
                <i id="icono" class="fas fa-carrot"></i> <%=carrots%>
            </div>

            <div class="comments">
                <i id="icono" class="fas fa-comment-dots"></i>
                <a href="cargar_comentario.jsp">Comentar</a>
            </div>

        </div>
        <%}%>

        <div class="more">
            <a href="./comentarios.jsp">
                    <h2 class="t_more">Cargar más comentarios</h2>
            </a>
            <i id="i_more" class="fas fa-chevron-circle-right"></i>
            
        </div>
    </main>

</body>
</html>