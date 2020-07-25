<%-- 
    Document   : administrar_perfil
    Created on : 20-jul-2020, 15:38:43
    Author     : luyim
--%>

<%@page import="Entidad.Usuario"%>
<%@page import="Proceso.UsuarioProceso"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/AdministrarPerfil.css">
    <link rel="stylesheet" href="./css/template.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
    <%@include file="templates/header.jsp" %>
    <main class="main-container">

        <%
            Class.forName("org.mariadb.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT nombre_usuario, email, contrasena, perfil_usuario FROM usuario WHERE activo = 1;");
            while(rs.next()){
                String usuario = rs.getString("nombre_usuario");
                String contrasena = rs.getString("contrasena");
                String email = rs.getString("email");
                String foto = rs.getString("perfil_usuario");
        %>
        <h2 class="titulo">Administrar Perfil</h2>

            <form class= "cajaPadreAP" method="POST" action="./perfilactualizado.jsp" >
                <div class="cont1">
                    <h3>Usuario</h3>
                    <input type="text" name= "usuario" id="usuario" class="textbox" value="<%=usuario%>" placeholder="<%=usuario%>">
                    <button name="lapiz" type="button" class="btn-post" ><i class="fas fa-pencil-alt fa-2x"></i></button>
                </div>

                <div class="cont2">
                    <h3>Contraseña</h3>
                    <input type="text" name ="contrasena" id= "contrasena"class="textbox" value="<%=contrasena%>" placeholder="<%=contrasena%>">
                    <button name="lapiz" type="button" class="btn-post" ><i class="fas fa-pencil-alt fa-2x"></i></button>
                </div>

                <div class="cont3">
                    <h3>Correo electronico</h3>
                    <input type="email" name ="email" id= "correo"class="textbox" value="<%=email%>" placeholder="<%=email%>">
                    <button name="lapiz" type="button" class="btn-post" ><i class="fas fa-pencil-alt fa-2x"></i></button>
                </div>

                <div class="cont4">
                    <h3>Url de foto de perfil</h3>
                    <input type="url" name ="url" id= "url"class="textbox" value="<%=foto%>" placeholder="<%=foto%>">
                    <button name="lapiz" type="button" class="btn-post" ><i class="fas fa-pencil-alt fa-2x"></i></button>
                </div>

                <%}%>
                <div class="ContenedorBotonesAP">
                    <input type="submit" class="guardarb" value="Guardar" />
                    <button type=button><a class="link" href="./foro.jsp">Cancelar</a></button>
                    <button type="button" class="cerrar"><a class="link cerrar" href="./sesion_cerrada.jsp">Cerrar sesion</a></button>
                </div>

            </form>
    </main>

</body>
</html>
