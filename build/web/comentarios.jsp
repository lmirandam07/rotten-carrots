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
    int id_spoiler = Integer.parseInt(request.getParameter("id_spoiler")); 
     Class.forName("org.mariadb.jdbc.Driver");


     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");

     Statement stmt = conn.createStatement();
     ResultSet rs = stmt.executeQuery("SELECT nombre_usuario, cuerpo_comentario, carrots_comentario,spoiler.id_spoiler,comentario.id_spoiler, num_comentario "
             + "FROM comentario, usuario, spoiler  WHERE spoiler.id_spoiler="+id_spoiler+" AND comentario.id_spoiler="+id_spoiler+" AND usuario.id_usuario=comentario.id_usuario;");

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
                        
                        
                        
                    
                 %>
             
                <div class="comment"> <!--Comment-->
                     
                    <div class= "comment-content">
                        
                        <div class="comment-header">
                            <h4 class="comment-user"><%=usuarios%></h4>
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
    <script src="scripts/aumentar_like_comentario.js"></script>
</body>
</html>
