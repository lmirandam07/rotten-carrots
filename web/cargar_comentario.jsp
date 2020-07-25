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
    
    <%
    int id_spoiler2 = Integer.parseInt(request.getParameter("id_spoiler2")); %> 
    <!-- Este id_spoiler2 agarra el codigo de spoiler que se trae de la pantalla anterior spoiler y lo vuelve un entero -->
    <main class="main-container">
        <br>
        <h2>Nuevo Comentario</h2>
        <br>

        <div class="comentario">
            <br>
            <br><br>
            <!-- Mediante este form nosotros podemos almacenar toda la informacion que el usuario inserta y luego lo mandamos a la pantalla de guardado-->
            <form action="./cargar_comentario_guardar.jsp" method="POST"> 
                <!--<input type="text" name="id_spoiler" value="" disabled></input>-->
                <h3 class="opinion">Mi opinión sobre este spoiler es...</h3>
                <br>
            <textarea name="cuerpo_comentario" rows="8" cols="80" placeholder="
                      
                           
                           Escribe tu opinión aquí"></textarea>
            <br><br>
            
            
            
            <input type="hidden" name="id_spoiler" value="<%=id_spoiler2%>"></input>
            <!--este input agarra el valor del id_spoiler2 que se manda a la siguiente pantalla para poder guardarse en la pantalla de guardado-->
            
            <button href="./comentarios.jsp" type="submit" type="button" class="publicar" disable>Publicar</button>
            <a href="./foro.jsp"><button type="button" name="button" class="cancelar">Cancelar</button></a>
            
            </form>
            


        </div>
    </main>
</body>
</html>
