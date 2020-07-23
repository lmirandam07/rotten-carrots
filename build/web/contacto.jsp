<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>


<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/template.css">
    <link rel="stylesheet" href="./css/contacto1.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
    <%@include file="templates/header.jsp" %>
    <main class="main-container">
        <br>
        <h2>Contacto</h2>
        
        <div class="contacto">
            <form method="POST" action="contactoenviado.jsp">
                <br>
                <h3 class="asunto">Asunto</h3>
                <br>
                <input type="name" name="i_asunto" value="" placeholder="   Asunto" class="i_asunto">
                <br><br>
                <h3 class="consulta">Consulta</h3>
                <textarea name="i_consulta" rows="8" cols="80" placeholder="


                          Escriba aquí su consulta"></textarea>
                <br>
                <a href="./contacto.jsp"><button type="button" name="button" class="cancelar">Cancelar</button></a>
                <input type="submit" class="enviar" value="Enviar" />
            </form>
        </div>
        
        
        
    </main>
</body>
</html>
