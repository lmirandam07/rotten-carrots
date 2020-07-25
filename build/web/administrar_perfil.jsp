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
            int v_usuario = 1;

            Class.forName("org.mariadb.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");
<<<<<<< HEAD
=======

>>>>>>> 4d4dd71c57a47431bf94b9989b6747de6cf280ae
            Statement stmt = con.createStatement();
            /*Con este query, seleccionamos la información referente al usuario que tiene una sesión activa en el sistema.
            Esto se hace para poder mostrar en el formulario la información respectiva del usuario, para así, poder editar
            o actualizar esta.*/
            ResultSet rs = stmt.executeQuery("SELECT nombre_usuario, email, contrasena, perfil_usuario FROM usuario WHERE activo = 1;");
            /*Al ser solo un usuario activo en el sistema, implementamos un while para acceder a la información del ResulSet*/
            while(rs.next()){
                /*Obtenemos la información recopilada del usuario en el query y asiganamos cada uno de los campos (usuario, email, contraseña
                y url de la foto de perfil), a sus variables respectivas.*/
                String usuario = rs.getString("nombre_usuario");
                String contrasena = rs.getString("contrasena");
                String email = rs.getString("email");
                String foto = rs.getString("perfil_usuario");

        %>
        <h2 class="titulo">Administrar Perfil</h2>

            <!--Formulario utilizado para obtener los cambios que realiza el usuario a su información.-->
            <form class= "cajaPadreAP" method="POST" action="./perfilactualizado.jsp" >
                <div class="cont1">
                    <h3>Usuario</h3>
                    <!--Asignamos el valor obtenido de query tanto al value como al placeholder, esto lo hacemos para que se visualice en el campo
                    y para que en el caso de que el usuario no modifique todos los campos, no existan conflictos al intentar hacer un updtae sin ningún dato.-->
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
                    <!--Botón que controla el formulario con el que el usuario modifica su información actual.-->
                    <input type="submit" class="guardarb" value="Guardar" />
                    <button type=button><a class="link" href="./foro.jsp">Cancelar</a></button>
                    <button type="button" class="cerrar"><a class="link cerrar" href="./sesion_cerrada.jsp">Cerrar sesion</a></button>
                </div>

            </form>
    </main>

</body>
</html>
