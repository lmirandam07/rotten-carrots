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
    <link rel="stylesheet" href="./css/index.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
	<div class="containerRegistro">
		<h2>Rotten Carrots</h2>
		<form class="registrar" action="foro.jsp">
            <div class="forma">
                <input type="Usuario" name= "usuario" id="usuario" class="textbox" placeholder="Usuario">
                <br>
                <input type="email" name ="email" id= "correo"class="textbox" placeholder="Correo Electronico">
			    <br>
            </div>
            <div class="forma2">
                <input type="password" name="contra" id="password" class="textbox" placeholder="Contraseña">
                <br>
                <input type="password" name="confirmarContra" id="confirmar" class="textbox" placeholder="Confirmar Contraseña">
                <br>
            </div>
            <div class="checkboxes">
                <input type="checkbox" name="terminos" id="terminos" class="terminos" placeholder="Terminos" autofocus required>
                <label for="">Acepto los términos y condiciones</label>
                <br>
                <br>
                <input type="checkbox" name="RecibirCorreo" id="terminos" class="terminos2" placeholder="RecibirCorreo">
                <label for="">Deseo recibir correos acerca de los nuevos spoilers</label>
                <br>
                <br>
                <br>
                <br>
                <br>

            </div>
            <button class="Registro">Registrarse</button>
            <br>
            <p>¿Ya tienes una cuenta? <a href="index.jsp">Inicia sesión aquí</a></p>

		</form>
	</div>
</body>
</html>