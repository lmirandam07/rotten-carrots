<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/template.css">
    <link rel="stylesheet" href="./css/ResultadoDeBusqueda.css">
		<link href="https://fonts.googleapis.com/css2?family=Istok+Web:wght@700&family=Montserrat&family=Roboto&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
    <%@include file="templates/header.jsp" %>
    <%
        String textobusqueda = request.getParameter("barrabuscar");
        
        Class.forName("org.mariadb.jdbc.Driver");
<<<<<<< HEAD

            
            /*  Es para igualar la variable conn, con los datos de la base de datos a la que nos estamos conectando, necesita 3 parametros: ruta, usuario y contraseña   */

            Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");
            
            Statement stmt = conn.createStatement();
            ResultSet result = stmt.executeQuery( "SELECT titulo_spoiler, descripcion_spoiler FROM spoiler, pelicula WHERE spoiler.id_pelicula = pelicula.id_pelicula AND pelicula.nombre_peli = '"+textobusqueda+"';");

=======
        /*  Es para igualar la variable conn, con los datos de la base de datos a la que nos estamos conectando, necesita 3 parametros: ruta, usuario y contraseña   */
        Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");

        Statement stmt = conn.createStatement();
        ResultSet result = stmt.executeQuery( "SELECT titulo_spoiler, descripcion_spoiler FROM spoiler, pelicula WHERE spoiler.id_pelicula = pelicula.id_pelicula AND pelicula.nombre_peli = '"+textobusqueda+"';");
>>>>>>> 461e49a206ff2d61e32b50e4e26ff93f974a658b
    %>
    
    <main class="main-container">
        <div class="prueba">


                 <div class="discusiones">
                    <table class="encabezados">
                        <tr>
                           <td><h4>Nombre</h4></td>
                           <td><h4>Discusión</h4></td>
                        </tr>
                    </table>
                     
                    <%
                       while(result.next()){
                       String titulo = result.getString("titulo_spoiler");
                       String descripcion = result.getString("descripcion_spoiler");
                       int link = result.getInt("id_spoiler");
                    %>
                     
                    
                    <form action="spoiler.jsp" method="POST">
                        <table class="primtabla">
                               <tbody>
                                       <tr>
                                               <td class="td1"><div class="act1"> <p><%=titulo%></p> </div></td>
                                               <td class="td2"><div class="act2"><p><%=descripcion%>.</p></div></td>
                                               <td class="td4"><button class="btn-del"><i class="fas fa-chevron-circle-right" aria-hidden="true"></i></button></td>
                                       </tr>
                               </tbody>
                        </table>
                    </form>
                    <%}%>



                </div>
        </div>
    </main>

</body>
</html>
