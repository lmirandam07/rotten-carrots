<%-- 
    Document   : cargar_comentario
    Created on : 07/21/2020, 07:24:20 PM
    Author     : Javier Singh
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
    <link rel="stylesheet" href="./css/cargar_comentario_guardar.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
    <%
        Boolean guardado = (Boolean)session.getAttribute("guardado");
        int c = (Integer)session.getAttribute("ejecucion");
        session.setAttribute("ejecucion", c + 1);%>

    <%@include file="templates/header.jsp" %>
   
    
    <main class="main-container">
         <% 
        Class.forName("org.mariadb.jdbc.Driver");


<<<<<<< HEAD
<<<<<<< HEAD
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root","lionel");
=======
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root","1014");
>>>>>>> 111b6201994fad5a95c2639738ff03fd9e60b778
=======
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root","12345");
>>>>>>> 06853d4c166df8acdf5e9db5fa9b752e0db73184

     Statement stmt = conn.createStatement();
     ResultSet rs = stmt.executeQuery("SELECT id_usuario FROM usuario WHERE activo = 1;");
        while(rs.next()){
        int usuario = rs.getInt("id_usuario");
        String cuerpo_comentario = request.getParameter("cuerpo_comentario");
        int spoiler = Integer.parseInt(request.getParameter("id_spoiler"));

        
        Comentario comentario = new Comentario();
        
        
        comentario.setCuerpo_comentario(cuerpo_comentario);
        comentario.setId_usuario(usuario);
        comentario.setId_spoiler(spoiler);
        ComentarioProceso pcomentario = new ComentarioProceso();
        pcomentario.GuardarComentario(comentario);
          
       
    %>
        <div class="hola" class="comentario">
        <br>
        <h2>Nuevo Comentario</h2>
        <br>
        <div class="comentario">
            <br>
            <br><br>
            <form action="./comentarios.jsp" method="POST"> 
                <h3 class="opinion">Mi opinión sobre este spoiler es...</h3>
                <br>
            <textarea name="cuerpo_comentario" rows="8" cols="80" placeholder="
                      
                           
                           Escribe tu opinión aquí"></textarea>
            <br><br>
            
                
            <button href="./comentarios.jsp" type="submit" type="button" class="publicar" disable>Publicar</button>
            <a href="./spoiler.jsp"><button type="button" name="button" class="cancelar" disable >Cancelar</button></a>
            
            </form>
            


        </div>
        </div>
    <div class="modal">
                <h4 class="sub">COMENTARIO GUARDADO CORRECTAMENTE</h4>
                <a href="./foro.jsp"><button class="guardar" >Aceptar</button></a>
                

        </div>
        <%}%>
        </main>
     
</body>
</html>