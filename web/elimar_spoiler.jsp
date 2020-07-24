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
            int usuario_prueba = 3;
            Class.forName("org.mariadb.jdbc.Driver");

            Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");

            Statement stmt = conn.createStatement();

            ResultSet rs = stmt.executeQuery("Select titulo_spoiler,descripcion_spoiler from spoiler where id_usuario = "+usuario_prueba+";");
    
        %>
        <main class="main-container">
        <div class="ocultar">
            <div class="prueba">

                <div class="crear">
                   <h5 class="create">Crear Discusion</h5>
                   <a class="enlace" href="./agregar_discusion.jsp"><img class="plus" src="./img/plus.png" alt="plus"></a>
                </div>

                     <div class="discusiones">


                        <table class="encabezados">
                            <tr>
                               <td><h4>Nombre</h4></td>
                               <td><h4>Discusión</h4></td>
                            </tr>
                        </table>
                    <%
                       
                        while(rs.next()) {
                            String titulo = rs.getString("titulo_spoiler");
                            String descripcion = rs.getString("descripcion_spoiler");
                       

                     %>
                        <table class="tabla">
                               <tbody>
                                       <tr>
                                               <td class="td1"><div class="act1"> <p><%=titulo%></p> </div></td>
                                               <td class="td2"><div class="act2"><p><%=descripcion%></p></div></td>
                                               <td class="td4"><button class="btn-del"><i class="fa fa-trash-o fa-2x" aria-hidden="true"></i></button></td>
                                       </tr>
                               </tbody>
                        </table>
                        <%}%>

                    </div>
            </div>
           </div>
            <%
                int usuario_eliminar = 3;
                ResultSet ts = stmt.executeQuery("Select id_spoiler from spoiler where id_usuario = "+usuario_eliminar+";");
                Spoiler spoiler = new Spoiler();
                spoiler.setId_usuario(usuario_eliminar);
                

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
