<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>

<%@page import="Entidad.Contacto"%>
<%@page import="Proceso.ContactoProceso"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/template.css">
    <link rel="stylesheet" href="./css/AcercaDeNosotros.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
    <%@include file="templates/header.jsp" %>
        <%
            int usuario = 1;
            String asunto = request.getParameter("i_asunto");
            String consulta = request.getParameter("i_consulta");
            
            Contacto contacto = new Contacto();

            contacto.setId_usuario(usuario);
            contacto.setAsunto(asunto);
            contacto.setConsulta(consulta);
    
            ContactoProceso contactop = new ContactoProceso();
            
            contactop.GuardarContacto(contacto);
        %>
    <main class="main-container">
        <div class="nosotros">

        </div>
    </main>
</body>
</html>
