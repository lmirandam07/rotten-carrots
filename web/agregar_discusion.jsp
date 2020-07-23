<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>

<%@ page import="java.sql.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="es">
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
    <%@include file="templates/header.jsp" %>
    <main class="main-container">
        <h2>Agregar Discusión</h2>


        <div class="discusion">
            <form method="POST" action="./admin.jsp">
            <h3 class="name">Nombre del Tema</h3>
            <br>
            <input type="text" name="tema" id="tema" value="" placeholder=" " class="first" class="inputs">
            <br>
            <br>
<<<<<<< HEAD
            <h3 class="name">Género: </h3>
            <select class="drop">
                <%
                    Class.forName("org.mariadb.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");
                    Statement stmt = con.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT * FROM pelicula");
                    while(rs.next()){
                        
                    String genero2 = rs.getString("genero");
                %>
                <option name="<%=genero2%>"><%=genero2%></option>
                <%}%>
            </select>
            <br>
            <br>
            <h3 class="disc">Discusión</h3>
            <textarea name="name" rows="8" cols="80"></textarea>
=======
            <h3 class="disc">DiscusiÃ³n</h3>
            <textarea name="cuerpo" id="cuerpo" rows="8" cols="80"></textarea>
>>>>>>> herrera
            <br>
            <a href="./admin.jsp"><button type="button" name="button" class="cancelar">Cancelar</button></a>
            <input type="submit" name="button" class="publicar">Publicar
            </form>

        </div>

    </main>

</body>
</html>
