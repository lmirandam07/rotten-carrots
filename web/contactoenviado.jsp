<%-- 
    Document   : contactoenviado
    Created on : 07/23/2020, 04:08:09 PM
    Author     : Javier Singh
--%>

<!DOCTYPE html>
<%@page import="Entidad.Contacto"%>
<%@page import="Proceso.ContactoProceso"%>
<%@page import="Entidad.Usuario"%>
<%@page import="Proceso.UsuarioProceso"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
        <%
            Class.forName("org.mariadb.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT id_usuario FROM usuario WHERE activo = 1;");
            while(rs.next()){
            int usuario = rs.getInt("id_usuario");
            String asunto = request.getParameter("i_asunto");
            String consulta = request.getParameter("i_consulta");
            
            Contacto contacto = new Contacto();

            contacto.setId_usuario(usuario);
            contacto.setAsunto(asunto);
            contacto.setConsulta(consulta);
    
            ContactoProceso contactop = new ContactoProceso();
            
            contactop.GuardarContacto(contacto);
        %>
        <div class="mensaje">  
            <div class="fondo">
                <br>
                <h2>Contacto</h2>

                <div class="contacto">
                    <form method="POST" action="contacto.jsp">
                        <br>
                        <h3 class="asunto">Asunto</h3>
                        <br>
                        <input type="name" name="i_asunto" value="" placeholder="   Asunto" class="i_asunto">
                        <br><br>
                        <h3 class="consulta">Consulta</h3>
                        <textarea name="i_consulta" rows="8" cols="80" placeholder="


                                  Escriba aquí su consulta"></textarea>
                        <br>
                        <a href="./contacto.jsp"><button type="button" name="button" disabled class="cancelar">Cancelar</button></a>
                        <input type="submit" disabled class="enviar" value="Enviar" />
                    </form>
                </div>
           </div>
            <div class="modal">
                <h4 class="sub">MENSAJE ENVIADO CORRECTAMENTE</h4>
                <a href="./contacto.jsp"><button class="guardar" >Aceptar</button></a>
            </div>
        </div>
        
        <%}%>
    </main>
</body>
</html>