<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>

<%@page import = "Entidad.Usuario"%>
<%@page import = "Proceso.UsuarioProceso"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
<a href="../../web/registrocompletado.jsp"></a>
<%
            String nombre_usuario = request.getParameter("usuario");
            String email = request.getParameter("email");
            String contrasena = request.getParameter("contra");
            String perfil_usuario = "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png";
            
            Usuario usuario = new Usuario();

            usuario.setNombre_usuario(nombre_usuario);
            usuario.setEmail(email);
            usuario.setContrasena(contrasena);
            usuario.setPerfil_usuario(perfil_usuario);
    
            UsuarioProceso usuariop = new UsuarioProceso();
            
            usuariop.GuardarUsuario(usuario);
        %>
<body>
  
       
<main class="containerRegistro">
    <div class="hola">
		<h2>Rotten Carrots</h2>
		<form class="registrar" method="POST" action="registrocompletado.jsp">
            <div class="forma">
                <input type="Usuario" name= "usuario" id="usuario" class="textbox" placeholder="Usuario">
                <br>
                <input type="email" name ="email" id= "email" class="textbox" placeholder="Correo Electronico">
			    <br>
            </div>
            <div class="forma2">
                <input type="password" name="contra" id="password" class="textbox" placeholder="Contraseña">
                <br>
                <input type="password" name="confirmarContra" id="confirmar" class="textbox" placeholder="Confirmar Contraseña">
                <br>
            </div>
            <div class="checkboxes">
                <input type="checkbox" name="terminos" id="terminos" class="terminos" placeholder="Terminos" disabled>
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
            <button class="Registro" disabled>Registrarse</button>
            <br>
            <p>¿Ya tienes una cuenta? <a href="index.jsp">Inicia sesión aquí</a></p>
            </form>
            </div>


		<div class="modal">
                <h4 class="sub">REGISTRO COMPLETADO CORRECTAMENTE</h4>
                <a href="./index.jsp"><button class="guardar" >Aceptar</button></a>
                

        </div>
            </main>
</body>
</html>