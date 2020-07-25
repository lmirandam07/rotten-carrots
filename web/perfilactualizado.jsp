<%-- 
    Document   : perfilactualizado
    Created on : 07/23/2020, 11:37:39 PM
    Author     : Javier Singh
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
    <!--Divisi�n utilizada para que la p�gina se vea opaca en el fondo mientras se nos muestra un mensaje de confirmaci�n para dar feedback al usuario sobre las acciones realizadas.-->
    <div class="fondo">

        <%
            /*Se obtienen los valores de los inputs de la p�gina de administrar perfil, para realizar la actualizaci�n en la base de datos*/
            String pusuario = request.getParameter("usuario");
            String pcontrasena = request.getParameter("contrasena");
            String pemail = request.getParameter("email");
            String purl = request.getParameter("url");
            
            Class.forName("org.mariadb.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");

            Statement stmt = con.createStatement();
            /*Se realiza la actualizaci�n de los datos del usuario. Para realizar esto, se determina que los cambios solo se realizan a aquel usuario que tenga una sesi�n activa en el sistema.*/
            stmt.executeQuery("UPDATE usuario SET nombre_usuario = '"+pusuario+"', email = '"+pemail+"', contrasena = '"+pcontrasena+"', perfil_usuario = '"+purl+"' WHERE activo = 1;");
        %>
        <h2 class="titulo">Administrar Perfil</h2>

        <form method="POST" action="./perfilactualizado.jsp">
            <div class= cajaPadreAP>
                <div class="cont1">
                    <h3>Usuario</h3>
                    <input type="text" name= "usuario" id="usuario" class="textbox"  placeholder="<%=pusuario%>">
                    <button name="lapiz" type="button" class="btn-post" ><i class="fas fa-pencil-alt fa-2x"></i></button>
                </div>

                <div class="cont2">
                    <h3>Contrase�a</h3>
                    <input type="text" name ="contrase�a" id= "contrase�a"class="textbox" placeholder="<%=pcontrasena%>">
                    <button name="lapiz" type="button" class="btn-post" ><i class="fas fa-pencil-alt fa-2x"></i></button>
                </div>

                <div class="cont3">
                    <h3>Correo electr�nico</h3>
                    <input type="email" name ="email" id= "correo"class="textbox" placeholder="<%=pemail%>">
                    <button name="lapiz" type="button" class="btn-post" ><i class="fas fa-pencil-alt fa-2x"></i></button>
                </div>

                <div class="cont4">
                    <h3>Url de foto de perfil</h3>
                    <input type="url" name ="url" id= "url"class="textbox" placeholder="<%=purl%>">
                    <button name="lapiz" type="button" class="btn-post" ><i class="fas fa-pencil-alt fa-2x"></i></button>
                </div>
                <div class="ContenedorBotonesAP">
                    <input disabled type="submit" class="guardar" value="Guardar" />
                    <button disabled><a class="link" href="./foro.jsp">Cancelar</a></button>
                    <button disabled class="cerrar"><a class="link cerrar" href="./index.jsp">Cerrar sesi�n</a></button>
                </div>

            </div>
        </form>
     </div>
    <!--Mensaje con el que se ofrece una retroalimentaci�n al usuario sobre los campos que fueron actualizados. 
        Luego de este mensaje, se redirecciona la usuario a la p�gina de foro. -->
    <div class="modal">
                <h4 class="sub">Se ha actualizado el perfil correctamente</h4>
                <a href="./foro.jsp"><button class="guardar" >Aceptar</button></a>
    </div>
    </main>

</body>
</html>
