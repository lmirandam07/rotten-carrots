<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>
<%-- Haciendo las importaciones  --%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="es">
    <%--  Estableciendo en el head, las páginas css que van ligadas a esta   --%>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/template.css">
    <link rel="stylesheet" href="./css/newdiscusion.css">
		<link href="https://fonts.googleapis.com/css2?family=Istok+Web:wght@700&family=Montserrat:wght@700&family=Roboto&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>

<body>
    <%--  Incluyendo el archibo header.jsp, para que aparezca en la pagina el menu y la barra de busqueda   --%>
    <%@include file="templates/header.jsp" %>
    <main class="main-container">
        
        <%--  Título que se mostrará en esta página   --%>
        <h2>Agregar Discusión</h2>

        <%--  Creando el contendedor que tendrá los campos a llenar y los botones   --%>
        <div class="discusion">
            <%--  creando el formulario que enviará a la página giardar_spoiler   --%>
            <form method="POST" action="./guardar_spoiler.jsp">
            <br><br>
            <h3 class="name">Nombre del Tema</h3>
            <br>
            <%--  Espacio donde se escribe el nombre del tema   --%>
            <input type="text" name="tema" id="tema" value="" placeholder=" " class="first" class="inputs">
            <br><br><br>
            <h3 class="name">Película: </h3>
            <%--  Lista desplegable con las películas disponibles   --%>
            <select class="drop" name="pelicula">
                <%
                    /* establecienco la coneccion con la base de datos  */
                    Class.forName("org.mariadb.jdbc.Driver");
<<<<<<< HEAD
                    Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");
                    
                    /* creando la instancia para este procedimiento */
=======
       Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");

>>>>>>> 4d4dd71c57a47431bf94b9989b6747de6cf280ae
                    Statement stmt = con.createStatement();
                    
                    /* consulta para seleccionar todo en la tabla pelicula en la base de datos */
                    ResultSet rs = stmt.executeQuery("SELECT * FROM pelicula");
                    int contador = 0;
                    
                    /* ciclo repetitivo mientras todavia haya un siguiente campo, de los obtenidos en la tabla de la bdd */
                    while(rs.next()){
                    contador = contador + 1;
                    
                    /*Obtendiendo el nombre de la pelicula donde se está en ese ciclo*/
                    String pelicula = rs.getString("nombre_peli");
                %>
                <%-- Donde se establecen las opciones de películas que hay en la lista desplegable   --%>
                <option value="<%=contador%>"><%=pelicula%></option>
                <%}%>
            </select>
            <br><br><br>
            <h3 class="disc">Discusión</h3>
            <%--  Área de texto para agregar la discusión   --%>
            <textarea name="cuerpo" id="cuerpo" rows="8" cols="80"></textarea>

            <br>
            <%--  Botón para cancelar, que redirigirá a la página donde están las discusiones   --%>
            <a href="./admin.jsp"><button type="button" name="button" class="cancelar">Cancelar</button></a>
            <%-- Botón para guardar la información en la base de datos, que se almacenará en la tabla de spoiler en la base de datos  --%>
            <input type="submit" name="button" class="publicar" value="Publicar">
            </form>

        </div>

    </main>

</body>
</html>
