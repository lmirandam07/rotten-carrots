<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/template.css">
    <link rel="stylesheet" href="./css/newdiscusion.css">
		<link href="https://fonts.googleapis.com/css2?family=Istok+Web:wght@700&family=Montserrat:wght@700&family=Roboto&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
    <%@include file="templates/header.html" %>
    <main class="main-container">
        <h2>Agregar Discusión</h2>


        <div class="discusion">
            <h3 class="name">Nombre del Tema</h3>
            <br>
            <input type="name" name="tema" value="" placeholder=" " class="first" class="inputs">
            <h3 class="name">Imagen</h3>
            <br>
            <input type="imagen" name="" value=""class="inputs">
            <br>
            <button type="button" name="button" class="buscar">Buscar</button>
            <h3 class="disc">Discusión</h3>
            <textarea name="name" rows="8" cols="80"></textarea>
            <br>
            <a href="./admin.jsp"><button type="button" name="button" class="cancelar">Cancelar</button></a>
            <a href="./foro.jsp"><button type="button" name="button" class="publicar">Publicar</button></a>

        </div>

    </main>

</body>
</html>
