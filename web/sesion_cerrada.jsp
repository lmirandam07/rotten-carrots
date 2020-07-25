<%-- 
    Document   : sesion_cerrada
    Created on : 07/24/2020, 06:19:08 PM
    Author     : Javier Singh
--%>

<%@page import="Entidad.Usuario"%>
<%@page import="Proceso.UsuarioProceso"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
        <%
            Class.forName("org.mariadb.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");

            Statement stmt = con.createStatement();
            /*Al estar cerrando la sesión en el sistema, se debe resetear al usuario activo a "no activo".
            Para hacer esto, ejecutamos un query que actualice el campo activo a 0 de todos los usuarios cuyo campo activo es 1 actualmente.*/
            stmt.executeQuery("UPDATE usuario SET activo = 0 WHERE activo = 1;");
        %>
                    <!--Este mensaje para dar un tipo de feedback al usuario sobre el cierre de sesión y nos redirecciona al inicio de sesión nuevamente.-->
                    <div class="modal">
                        <h4 class="sub">RUEDA PS</h4>
                        <a href="./index.jsp"><button class="guardar" >Aceptar</button></a>
                    </div>
                
</body>
</html>
