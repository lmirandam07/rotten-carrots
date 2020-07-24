
<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>
<%@page import="Entidad.Spoiler"%>
<%@page import="Proceso.SpoilerProceso"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/template.css">
		<link rel="stylesheet" href="./css/admin.css">
		<link href="https://fonts.googleapis.com/css2?family=Istok+Web:wght@700&family=Montserrat&family=Roboto&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
    <%@include file="templates/header.jsp" %>
    <%
     int usuario_prueba = 3;
     Class.forName("org.mariadb.jdbc.Driver");
    
<<<<<<< HEAD

     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");
=======
<<<<<<< HEAD
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");
=======
<<<<<<< HEAD
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");
=======
<<<<<<< HEAD
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");
=======
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");
>>>>>>> f261aac56879d93e1c360fc61b1a8b8928ad0530
>>>>>>> leo
>>>>>>> 0ba939720393c2f7ff982cd1b05ed3b6311e193d
>>>>>>> f7b8581faf287ea4951643c33bcbe4b04472d883

     Statement stmt = conn.createStatement();

     ResultSet rs = stmt.executeQuery("Select id_spoiler,titulo_spoiler,descripcion_spoiler from spoiler where id_usuario = "+usuario_prueba+";");
    
    %>

    <main class="main-container">
        <div class="eliminar">
                <form action="elimar_spoiler.jsp">
                   <button class="btn-del"><i class="fa fa-trash-o fa-lg" aria-hidden="true"></i></button>
                   <input type="text" name="id_spoiler" placeholder="Introduzca el cod del spoiler que desea eliminar">
                </form>
                
        </div>
        <div class="crear">
               <h5 class="create">Crear Discusion</h5>
               <a class="enlace" href="./agregar_discusion.jsp"><img class="plus" src="./img/plus.png" alt="plus"></a>
        </div>
        <div class="prueba">
            


                 <div class="discusiones">
                     

                    <table class="encabezados">
                        <tr>
                            <td><h4>Cod</h4></td>
                           <td><h4>Nombre</h4></td>
                           <td><h4>Discusión</h4></td>
                        </tr>
                    </table>
                <%

                    while(rs.next()) {
                        String id = rs.getString("id_spoiler");
                        String titulo = rs.getString("titulo_spoiler");
                        String descripcion = rs.getString("descripcion_spoiler");

                    
                 %>
                    <table class="tabla">
                           <tbody>
                                   <tr>
                                       <td class="td1"><div class="act1"><p><%=id%></p></div></td>
                                        <td class="td1"><div class="act2"> <p><%=titulo%></p> </div></td>
                                        <td class="td2"><div class="act3"><p><%=descripcion%></p></div></td>

                                   </tr>
                           </tbody>
                    </table>
                    <%}%>
                    
                </div>
        </div>
    </main>

</body>
</html>
