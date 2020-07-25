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
            /*Se obtiene los datos ingresados en el formulario de la p�gina de inicio de sesi�n mediante los .getParameter*/
            String pemail = request.getParameter("email");
            String pcontrasena = request.getParameter("contra"); 
            /*Declaramos la variable inicialmente en 0 para que no existan conflictos con los if y el while, en caso de que 
            nunca entre al while que valida de que exista un usuario activo en el momento, al ser 0 la variable activo, 
            autom�ticamente entrar�a al if de si activo es diferente a 1*/
            String activo = "0";
            
            Class.forName("org.mariadb.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");


            Statement stmt = con.createStatement();
            /*Se realiza el query de actualizaci�n en el campo activo para indicar que dicho usuario est� utilizando el sistema.
            Esta validaci�n la realizamos con los datos de los inputs de la p�gina de inicio de sesi�n; validando si el correo 
            electr�nico y la contrase�a corresponden a un usuario espec�fico.
            En el caso de que se encuentre un usuario con dicha informaci�n, se actualiza su campo "activo" a 1; de no existir
            un usaurio con dicha informaci�n, no se realiza esta actualizaci�n y todos los usuarios seguiran con su campo 
            "activo" con 0, indicando que no est�n utilizando el sistema.*/
            stmt.executeQuery("UPDATE usuario SET activo = 1 WHERE email = '"+pemail+"' AND contrasena = '"+pcontrasena+"';");
        %>
        <%
            Statement stmt2 = con.createStatement();
            /*Este query se realiza para obtener la informaci�n del usuario cuyo campo activo sea 1.*/
            ResultSet rs = stmt2.executeQuery("SELECT activo FROM usuario WHERE email = '"+pemail+"' AND contrasena = '"+pcontrasena+"';");
            /*Si existe un usuario con el campo activo 1, podemos entrar al while y se nos autoriza el ingreso al sistema.*/
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
            <!--En el caso de que no haya ning�n usuario activo, se nos niega el ingreso al sistema y se regresa al usuario al inicio de sesi�n.-->
            <%if(!activo.equals("1")){%>
                    <div class="modal">
                    <h4 class="sub">DISTE PAPAYA</h4>
                    <a href="./index.jsp"><button class="guardar" >Aceptar</button></a>
                    </div>
            <%}%>
</body>
</html>
