<%-- 
    Document   : guardar_spoiler
    Created on : 07/23/2020, 03:28:13 PM
    Author     : Alexander
--%>
<%@page import="Entidad.Spoiler"%>
<%@page import="Proceso.SpoilerProceso"%>
<!DOCTYPE html>
<html  lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/template.css">
        <link rel="stylesheet" href="./css/newdiscusion.css">
        <link href="https://fonts.googleapis.com/css2?family=Istok+Web:wght@700&family=Montserrat:wght@700&family=Roboto&display=swap" rel="stylesheet">
        <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
    <%@include file="templates/header.jsp" %>
    <%
        /*Conexion con la base de datos de rotten_carrots*/
        Class.forName("org.mariadb.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");
        Statement stmt = conn.createStatement();
        /*Query con el que se obtienen los datos de la base de datos*/
        ResultSet rs = stmt.executeQuery("SELECT id_usuario FROM usuario WHERE activo = 1;");
        /*Ciclo while por el cual se obtienen todos los datos del query anterior y se guardan en variables.*/
        while(rs.next()){
        int usuario = rs.getInt("id_usuario");
        /*Obteniendo el los datos del formulario de agregar_discusion.jsp*/
        String pelicula = request.getParameter("pelicula");
        String titulo = request.getParameter("tema");
        String cuerpo = request.getParameter("cuerpo");
        int id_pelicula = Integer.parseInt(pelicula);
        /*Creando el objeto de la entidad Spoiler*/
        Spoiler spoiler = new Spoiler();
        /*Utilizando el metodo Set para guardar los datos obtenidos del formulario en el objeto spoiler*/
        spoiler.setId_usuario(usuario);
        spoiler.setId_pelicula(id_pelicula);
        spoiler.setTitulo_spoiler(titulo);
        spoiler.setDescripcion_spoiler(cuerpo);
    %>
    <%
        /*Creando el objeto del proceso SppoilerProceso*/
        SpoilerProceso pspoiler = new SpoilerProceso();
        /*Se utliza el metodo GuardarSpoiler del Proceso SpoilerProceso en el cual se guardan los datos en la base de datos*/
        pspoiler.GuardarSpoiler(spoiler);
       
    %>
    <main class="main-container"><!--Contenedor Padre-->
        <div class="mensaje"><!--Contenedor con todo el formulario de agregar_discusion para poder ocultarlo-->
           <h2>Agregar Discusión</h2>


            <div class="discusion">
                <form method="POST" action="./admin.jsp">
                <br><br>
                <h3 class="name">Nombre del Tema</h3>
                <br>
                <input type="text" value="" placeholder=" " class="first" class="inputs">
                <br><br><br>
                <h3 class="name">Película: </h3>
                <select class="drop">

                </select>
                <br><br><br>
                <h3 class="disc">Discusión</h3>
                <textarea name="name" rows="8" cols="80"></textarea>

                <br>
                <a href="./admin.jsp"><button type="button" name="button" class="cancelar" disabled="True">Cancelar</button></a>
                <input type="submit" name="button" class="publicar" value="Publicar" disabled="True">
                </form>

            </div>
            
        </div>
        <div class="modal"><!--Contenedor creado como modal para mostrar el registro del spoiler exitoso-->
                <h4 class="sub">SPOILER GUARDADO CORRECTAMENTE</h4>
                <a href="./admin.jsp"><button class="guardar" >Aceptar</button></a>
                

        </div>
        <%}%>
    </main>
    </body>
</html>
