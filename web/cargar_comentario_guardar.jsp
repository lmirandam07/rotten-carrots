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
        session.setAttribute("ejecucion", c + 1);
        if(guardado){
    %>
    <%
        int usuario=1;
        int spoiler=1;
        String cuerpo_comentario = request.getParameter("cuerpo_comentario");
        
        Comentario comentario = new Comentario();
        
        
        comentario.setId_usuario(usuario);
        comentario.setId_spoiler(spoiler);
        comentario.setCuerpo_comentario(cuerpo_comentario);
        
 
       
          
       
    %>
    
    <%
        
        ComentarioProceso pcomentario = new ComentarioProceso();
        int isSaved = pcomentario.GuardarComentario(comentario);
        if(isSaved > 0){

        }else{

        }
        
       }
     else{
    %>

    <%}%>
    <%@include file="templates/header.jsp" %>
    
    <main class="main-container">
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
                <a href="./spoiler.jsp"><button class="guardar" >Aceptar</button></a>
                

        </div>
        </main>
     
</body>
</html>