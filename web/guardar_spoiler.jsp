<%-- 
    Document   : guardar_spoiler
    Created on : 07/23/2020, 03:28:13 PM
    Author     : Alexander
--%>

<!DOCTYPE html>
<html  lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/template.css">
        <link rel="stylesheet" href="./css/newdiscusion.css">
        <link href="https://fonts.googleapis.com/css2?family=Istok+Web:wght@700&family=Montserrat:wght@700&family=Roboto&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
    <%@include file="templates/header.jsp" %>
    <main class="main-container">
        <div class="mensaje">
           <h2>Agregar Discusión</h2>


            <div class="discusion">
                <form method="POST" action="./admin.jsp">
                <br><br>
                <h3 class="name">Nombre del Tema</h3>
                <br>
                <input type="text" name="tema" id="tema" value="" placeholder=" " class="first" class="inputs">
                <br><br><br>
                <h3 class="name">Película: </h3>
                <select class="drop">

                </select>
                <br><br><br>
                <h3 class="disc">Discusión</h3>
                <textarea name="name" rows="8" cols="80"></textarea>

                <br>
                <a href="./admin.jsp"><button type="button" name="button" class="cancelar">Cancelar</button></a>
                <input type="submit" name="button" class="publicar" value="Publicar">
                </form>

            </div>
            
        </div>
        <div class="modal">
                <h4 class="sub">SPOILER GUARDADO CORRECTAMENTE</h4>
                <a href="./admin.jsp"><button class="guardar" >Aceptar</button></a>
                

        </div>
        
    </main>
    </body>
</html>
