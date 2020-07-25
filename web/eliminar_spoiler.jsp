<%-- 
    Document   : elimar_spoiler
    Created on : 07/23/2020, 08:12:13 PM
    Author     : Alexander
--%>

<%@page import="Entidad.Spoiler"%>
<%@page import="Proceso.SpoilerProceso"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/template.css">
        <link rel="stylesheet" href="./css/admin.css">
	<link href="https://fonts.googleapis.com/css2?family=Istok+Web:wght@700&family=Montserrat&family=Roboto&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
        <title>Eliminar spoiler</title>
    </head>
    <body>
        <%@include file="templates/header.jsp" %>
        <%
            Class.forName("org.mariadb.jdbc.Driver");



            Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");

            

            Statement stmt = conn.createStatement();
            
            ResultSet rs = stmt.executeQuery("Select spoiler.id_spoiler,spoiler.titulo_spoiler,spoiler.descripcion_spoiler from spoiler, usuario where usuario.activo = 1 AND usuario.id_usuario = spoiler.id_usuario;");
    
        %>
        <main class="main-container">
        <div class="ocultar">
        <div class="eliminar">
                <form action="elimar_spoiler.jsp">
                   <button class="btn-del"><i class="fa fa-trash-o fa-lg" aria-hidden="true"></i></button>
                   <input type="text" name="id_spoiler" placeholder="Introduzca el cod del spoiler">
                </form>
                
        </div>
        
        <div class="crear">
                   <h5 class="create">Crear Discusion</h5>
                   <a class="enlace" ><i class="fas fa-plus x4"></i></a>
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
           </div>
            <%
                String id = request.getParameter("id_spoiler");
                int id_spoiler = Integer.parseInt(id);
                Spoiler spoiler = new Spoiler();
                spoiler.setId_spoiler(id_spoiler);
                

            %>
            <%
                SpoilerProceso pspoiler = new SpoilerProceso();
                pspoiler.EliminarSpoiler(spoiler);
            %>
           <div class="modal">
                <h4 class="sub">SPOILER ELIMINADO CORRECTAMENTE</h4>
                <a href="./admin.jsp"><button class="guardar" >Aceptar</button></a>
                

            </div>
        </main>
    </body>
</html>
