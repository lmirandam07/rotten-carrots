<%-- 
    Document   : contactoenviado
    Created on : 07/23/2020, 04:08:09 PM
    Author     : Javier Singh
--%>

<!DOCTYPE html>
<%@page import="Entidad.Contacto"%>
<%@page import="Proceso.ContactoProceso"%>
<%@page import="Entidad.Usuario"%>
<%@page import="Proceso.UsuarioProceso"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/template.css">
    <link rel="stylesheet" href="./css/contacto1.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
    <%@include file="templates/header.jsp" %>
    <main class="main-container">
        <%
            Class.forName("org.mariadb.jdbc.Driver");

            Connection con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");

            Statement stmt = con.createStatement();
            /*Se selecciona el id del usuario que realizó el contacto, esto lo hacemos haciendo un query tomando como condición
            que el usuario debe tener una sesión acitva, es decir, que su campo "activo" debe ser 1.*/
            ResultSet rs = stmt.executeQuery("SELECT id_usuario FROM usuario WHERE activo = 1;");
            /*Al solo tener un usuario activo en la base de datos, podemos utilizar el while para que solo se imprima el mensaje una vez
            y así, también, poder acceder a la información recopilada en en el query*/
            while(rs.next()){
            /*Asignamos la información recopilada en el query a una variable local*/
            int usuario = rs.getInt("id_usuario");
            /*Obtenemos la información del formulario que llenó el usuario para que esta se guarde en la base de datos.*/
            String asunto = request.getParameter("i_asunto");
            String consulta = request.getParameter("i_consulta");
            
            /*Creamos un nuevo objeto contacto utilizando el constructor de la entidad*/
            Contacto contacto = new Contacto();

            /*Asignamos los valores de nuestras variables a los atributos del nuevo objeto creado*/
            contacto.setId_usuario(usuario);
            contacto.setAsunto(asunto);
            contacto.setConsulta(consulta);
    
            /*Creamos un nuevo proceso de Contacto, con este guardaremos la información referente al contacto en la base de datos.*/
            ContactoProceso contactop = new ContactoProceso();
            
            /*Se guarda el contacto en la base de datos haciendo uso del proceso de GuardarContacto.*/
            contactop.GuardarContacto(contacto);
        %>
        <div class="mensaje">  
            <div class="fondo">
                <br>
                <h2>Contacto</h2>

                <div class="contacto">
                    <form method="POST" action="contacto.jsp">
                        <br>
                        <h3 class="asunto">Asunto</h3>
                        <br>
                        <input type="name" name="i_asunto" value="" placeholder="   Asunto" class="i_asunto">
                        <br><br>
                        <h3 class="consulta">Consulta</h3>
                        <textarea name="i_consulta" rows="8" cols="80" placeholder="


                                  Escriba aquí su consulta"></textarea>
                        <br>
                        <a href="./contacto.jsp"><button type="button" name="button" disabled class="cancelar">Cancelar</button></a>
                        <input type="submit" disabled class="enviar" value="Enviar" />
                    </form>
                </div>
           </div>
            <div class="modal">
                <h4 class="sub">MENSAJE ENVIADO CORRECTAMENTE</h4>
                <a href="./contacto.jsp"><button class="guardar" >Aceptar</button></a>
            </div>
        </div>
        
        <%}%>
    </main>
</body>
</html>