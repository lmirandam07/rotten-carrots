<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entidad.Comentario"%>
<%@page import="Proceso.ComentarioProceso"%>
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
    <link rel="stylesheet" href="./css/comentarios.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots - Comentarios Spoiler</title>
</head>
<body>
    <%@include file="templates/header.jsp" %>
    <%
     Class.forName("org.mariadb.jdbc.Driver");
<<<<<<< HEAD
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");
=======
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");
>>>>>>> 206bc0333dc1fcf70cafb02a2053ed43f3a10b96
     
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT nombre_usuario, cuerpo_comentario, carrots_comentario, genero "
                                        + "FROM spoiler sp, comentario c, usuario us, pelicula p "
                                        + "WHERE sp.id_spoiler = c.id_spoiler AND us.id_usuario = c.id_usuario AND sp.id_pelicula = p.id_pelicula; ");
    
    %>
    <div class="container my-5">
    
    
        <ul>
            
            <%%>
        </ul>
    
</div>

                    
    <main class="main-container">
        <section class="comments-wrapper">
            <div class="comments-container">
                <%
            while(rs.next()) {
              
                        String usuarios = rs.getString("nombre_usuario");
                        String cuerpo_comment = rs.getString("cuerpo_comentario");
                        String zanahoria = rs.getString("carrots_comentario");
                        String genero = rs.getString("genero");
                        
                        
                    
                 %>
                <div class="comment"> <!--Comment-->
                    <div class= "comment-content">
                        <div class="comment-header">
                            <h4 class="comment-user"><%=usuarios%></h4>
                            <div class="comment-tag">
                                <h4 class="tag"><%=genero%></h4>
                            </div>
                        </div>

                        <div class="comment-mensaje">
                            <p class="mensaje">
                               <%=cuerpo_comment%>
                            </p>
                        </div>

                        <div class="comment-footer">
                            <div class="comment-carrots">
                                <button class="btn-carrots"><small class="carrots"><i class="fas fa-carrot"></i> <%=zanahoria%></small></button>
                            </div>
                        </div>
                        <hr>
                    </div>
                    
                </div>
                            <%}%>
                
            
            </div> <!--FIN DEL FONDO-->
        </section>
   
        
        
    </main>

</body>
</html>
