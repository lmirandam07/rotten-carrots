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


     /*Conexion con la base de datos de rotten_carrots*/
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");

    Statement stmt = conn.createStatement();
    /*Query con el que se obtienen los datos de la base de datos*/
    ResultSet rs = stmt.executeQuery("SELECT p.nombre_peli, p.genero,p.foto_pelicula,p.descripcion_peli, SUM(sp.carrots) AS total_carrots FROM pelicula p, spoiler sp WHERE p.id_pelicula = sp.id_pelicula GROUP BY nombre_peli ORDER BY SUM(carrots) DESC LIMIT 4;");                       

    
    %>
    <main class="main-container">
        <section class="posts-container">
            <%
                    /*Contador para ennumerar las tendencias en orden ascendente*/
                    int cont =0;
                    /*Ciclo while por el cual se obtienen todos los datos del query anterior y se guardan en variables.*/
                    while(rs.next()) {
                        cont = cont+1;
                        String titulo = rs.getString("nombre_peli");
                        String foto = rs.getString("foto_pelicula");
                        String genero = rs.getString("genero");
                        String carrots = rs.getString("total_carrots");
                        String descripcion = rs.getString("descripcion_peli");
                    
            %>
                <div class="post-puesto"><!--Contenedor con el valor del contador para saber el puesto que ocupa en las tendencias-->
                    <h1><%=cont%></h1>
                </div>
                  <form class="post" method="POST" action="spoiler.jsp"><!--Contenedor con toda la informacion de cada pelicula-->
                    <div class="post-img"><!--Contenedor con la portada de la pelicula-->
                        <img src="<%=foto%>" class="img-spoiler" alt="">
                    </div>

                    <div class= "post-content"><!--Contenedor con el nombre,genero y las zanahorias(likes) de cada pelicula-->
                        <div class="post-tag"><!--Contenedor con el genero de la pelicula-->
                            <small class="tag"><%=genero%></small>
                        </div>



                        <div class="post-title"><!--Contenedor con el nombre de la pelicula-->
                            <h3><%=titulo%></h3>
                            <div class="descripcion">
                                <p><%=descripcion%></p>
                            </div>
                        </div>

                        <div class="post-info"><!--Contenedor con las zanahorias de la pelicula-->

                            <div class="post-carrots">
                                <button name="carrots" value="x" type="button" class="btn-post" ><small class="carrots"><i class="fas fa-carrot"></i><%=carrots%></small></button>
                            </div>
                        </div>

                    </div>

                </form>
                           
                 <%}%>
        </section>
    </main>
<script src="scripts/active_toggle.js"></script><!--Script el cual activa el color de la pagina actual en el sidebar-->
</body>
</html>