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
            String pemail = request.getParameter("email");
            String pcontrasena = request.getParameter("contra"); 
            String activo = "0";
            
            Class.forName("org.mariadb.jdbc.Driver");

<<<<<<< HEAD
            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");
=======
            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");
>>>>>>> 111b6201994fad5a95c2639738ff03fd9e60b778

            Statement stmt = con.createStatement();
            stmt.executeQuery("UPDATE usuario SET activo = 0 WHERE activo = 1;");
        %>
                    <div class="modal">
                        <h4 class="sub">RUEDA PS</h4>
                        <a href="./index.jsp"><button class="guardar" >Aceptar</button></a>
                    </div>
                
</body>
</html>
