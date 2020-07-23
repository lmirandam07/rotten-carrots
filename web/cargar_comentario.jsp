<%-- 
    Document   : cargar_comentario
    Created on : 07/21/2020, 07:24:20 PM
    Author     : Javier Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/template.css">
    <link rel="stylesheet" href="./css/cargar_comentario.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
    <%@include file="templates/header.jsp" %>
     <% session.setAttribute("guardado", true);
        
        if(session.getAttribute("ejecucion") == null){
            session.setAttribute("ejecucion", 0);
        }
    %>
    <main class="main-container">
        <br>
        <h2>Nuevo Comentario</h2>
        <br>

        <div class="comentario">
            <br>
            <br><br>
            <form action="./cargar_comentario_guardar.jsp" method="POST"> 
                <h3 class="opinion">Mi opinión sobre este spoiler es...</h3>
                <br>
            <textarea name="cuerpo_comentario" rows="8" cols="80" placeholder="
                      
                           
                           Escribe tu opinión aquí"></textarea>
            <br><br>
            
                
            <button href="./cargar_comentario_guardar.jsp" type="submit" type="button" class="publicar" >Publicar</button>
            <a href="./spoiler.jsp"><button type="button" name="button" class="cancelar">Cancelar</button></a>
            
            </form>
            


        </div>
    </main>
</body>
</html>
