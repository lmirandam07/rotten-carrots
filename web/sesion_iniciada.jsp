<%-- 
    Document   : sesion_iniciada
    Created on : 07/24/2020, 04:40:33 PM
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
<<<<<<< HEAD
            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");
=======
            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");
>>>>>>> 111b6201994fad5a95c2639738ff03fd9e60b778
=======
            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");
>>>>>>> 06853d4c166df8acdf5e9db5fa9b752e0db73184

            Statement stmt = con.createStatement();
            stmt.executeQuery("UPDATE usuario SET activo = 1 WHERE email = '"+pemail+"' AND contrasena = '"+pcontrasena+"';");
        %>
        <%
            Statement stmt2 = con.createStatement();
            ResultSet rs = stmt2.executeQuery("SELECT activo FROM usuario WHERE email = '"+pemail+"' AND contrasena = '"+pcontrasena+"';");
            while(rs.next()){
                activo = rs.getString("activo");
                if(activo.equals("1")){
        %>
                    <div class="modal">
                        <h4 class="sub">BIENVENIDO A ROTTEN CARROTS UwU</h4>
                        <a href="./foro.jsp"><button class="guardar" >Aceptar</button></a>
                    </div>
                <%}%>
            <%}%>
            <%if(!activo.equals("1")){%>
                    <div class="modal">
                    <h4 class="sub">DISTE PAPAYA</h4>
                    <a href="./index.jsp"><button class="guardar" >Aceptar</button></a>
                    </div>
            <%}%>
</body>
</html>
