
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
    <%@include file="templates/header.jsp" %><!--Template con el navbar y el sidebar-->
    <%

     Class.forName("org.mariadb.jdbc.Driver");

     /*Conexion con la base de datos de rotten_carrots*/
     Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");

     Statement stmt = conn.createStatement();
     /*Query con el que se obtienen los datos de la base de datos*/
     ResultSet rs = stmt.executeQuery("Select spoiler.id_spoiler,spoiler.titulo_spoiler,spoiler.descripcion_spoiler from spoiler, usuario where usuario.activo = 1 AND usuario.id_usuario = spoiler.id_usuario;");
    
    %>

    <main class="main-container"><!--Contenedor padre-->
        <div class="eliminar"><!--Contenedor con el boton de eliminar y el input para ingresar el cod del spoiler ha eliminar-->
                <form action="eliminar_spoiler.jsp">
                   <button class="btn-del"><i class="fa fa-trash-o fa-lg" aria-hidden="true"></i></button>
                   <input type="text" name="id_spoiler" placeholder="Introduzca el cod del spoiler ha eliminar">
                </form>
                
        </div>
        <div class="crear"><!--Contenedor con el boton de crear discusion-->
               <h5 class="create">Crear Discusion</h5>
               <a class="enlace" href="./agregar_discusion.jsp"><i class="fas fa-plus x4"></i></a>
        </div>
        <div class="prueba">
            


                 <div class="discusiones"><!--Contenedor que posee los encabezados y todas las discuciones o spoilers del usuario-->
                     

                    <table class="encabezados"><!--Tabla que solo posee los encabezados de la tabla general-->
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
                    <table class="tabla"><!--Tabla que contiene cada discusion que se crea por el usuario mediante el ciclo while-->
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
    <script src="scripts/active_toggle.js"></script>
</body>
</html>
