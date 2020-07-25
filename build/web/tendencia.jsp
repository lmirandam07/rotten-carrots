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
    <link rel="stylesheet" href="./css/template.css">
    <link rel="stylesheet" href="./css/tendencia.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
        <%@include file="templates/header.jsp" %>
        
        <%
     Class.forName("org.mariadb.jdbc.Driver");


<<<<<<< HEAD
<<<<<<< HEAD
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");
=======
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");
>>>>>>> f41272bcc0ea1b30618b532a5b61f5744ebc8beb
=======
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");
>>>>>>> 67d0320662b4c7f7afee30e3542188b899a19ef8

    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT p.nombre_peli, p.genero,p.foto_pelicula, SUM(sp.carrots) AS total_carrots FROM pelicula p, spoiler sp WHERE p.id_pelicula = sp.id_pelicula GROUP BY nombre_peli ORDER BY SUM(carrots) DESC LIMIT 4;");                       

    
    %>
    <main class="main-container">
        <section class="posts-container">
            <%
                    int cont =0;
                    while(rs.next()) {
                        cont = cont+1;
                        String titulo = rs.getString("nombre_peli");
                        String foto = rs.getString("foto_pelicula");
                        String genero = rs.getString("genero");
                        String carrots = rs.getString("total_carrots");
                    
            %>
                <div class="post-puesto">
                    <h1><%=cont%></h1>
                </div>
                  <form class="post" method="POST" action="spoiler.jsp">
                    <div class="post-img">
                        <img src="<%=foto%>" class="img-spoiler" alt="">
                    </div>

                    <div class= "post-content">
                        <div class="post-tag">
                            <small class="tag"><%=genero%></small>
                        </div>



                        <div class="post-title">
                            <h3><%=titulo%></h3>
                        </div>

                        <div class="post-info">
                            <div class="post-carrots">
                                <button name="carrots" value="x" type="button" class="btn-post" ><small class="carrots"><i class="fas fa-carrot"></i><%=carrots%></small></button>
                            </div>
                        </div>

                    </div>

                </form>
                 <%}%>
        </section>>
    </main>
<script src="scripts/active_toggle.js"></script>
</body>
</html>