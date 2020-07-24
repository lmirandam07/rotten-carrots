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
<body>
  
	<div class="containerRegistro">
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

                <h4 class="sub">MENSAJE ENVIADO CORRECTAMENTE</h4>
                <a href="./index.jsp"><button class="Registro" >Aceptar</button></a>
		</form>
            </div>
</body>
</html>