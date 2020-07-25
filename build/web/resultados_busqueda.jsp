<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>

<%-- Haciendo las importaciones  --%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
    <%--  Estableciendo en el head, las páginas css que van ligadas a esta   --%>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/template.css">
    <link rel="stylesheet" href="./css/ResultadoDeBusqueda.css">
		<link href="https://fonts.googleapis.com/css2?family=Istok+Web:wght@700&family=Montserrat&family=Roboto&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
    <%--  Incluyendo el archibo header.jsp, para que aparezca en la pagina el menu y la barra de busqueda   --%>
    <%@include file="templates/header.jsp" %>
    <%
        /* Obteniendo el parámetro de lo obtenido en el recuadro de texto de busqueda */
        String textobusqueda = request.getParameter("barrabuscar");
        

            /* estableciendo la coneccion con la base de datos  */
            Class.forName("org.mariadb.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");
            
            /* creando la instancia para este procedimiento */
            Statement stmt = conn.createStatement();
            
            /* se ejecuta la consulta para seleccionar la información de los spoilers sobre la película de la que se ha ingresado la busqueda */
            ResultSet result = stmt.executeQuery( "SELECT titulo_spoiler, descripcion_spoiler,id_spoiler FROM spoiler, pelicula WHERE spoiler.id_pelicula = pelicula.id_pelicula AND pelicula.nombre_peli = '"+textobusqueda+"';");


    %>
    <main class="main-container">
        <div class="prueba">

                <%-- Contenedor que muestra los encabezados de los recuadros que van en la página    --%>
                 <div class="discusiones">
                    <table class="encabezados">
                        <tr>
                           <td><h4>Nombre</h4></td>
                           <td><h4>Discusión</h4></td>
                        </tr>
                    </table>
                     
                    <%--  Ciclo que se encargará de mostrar en pantalla la, o las informaciones de los spoilers que coincidan con la película que se busca   --%> 
                    <%
                       while(result.next()){
                       /* Obteniendo los datos del spoiler actual */
                       String titulo = result.getString("titulo_spoiler");
                       String descripcion = result.getString("descripcion_spoiler");
                       
                       /* Obteniendo el id del spoiler, con el que, a traves del formulario acontinuacion,
                       se podrá redirigir al usuario a la pagina de spoiler.jsp, con los datos del spoiler que coincida con ese id */
                       int id_spoiler = result.getInt("id_spoiler");
                    %>
                     
                    <%--  Formulario donde se mostrará la información del spoiler actual encontrado en este punto del ciclo   --%>
                    <form action="spoiler.jsp" method="POST">
                        <%--  Tabla que mostrará la información   --%>
                        <table class="primtabla">
                               <tbody>
                                       <tr>
                                           <%--  recuadro que muestra el titulo del spoiler   --%>
                                               <td class="td1"><div class="act1"> <p><%=titulo%></p> </div></td>
                                               <%--  Recuadro que muestra la informacion del spoiler   --%>
                                               <td class="td2"><div class="act2"><p><%=descripcion%>.</p></div></td>
                                               <%--  Botón que muestra la imagen de ir al spoiler seleccionado en la pagina spoiler.jsp   --%>
                                               <td class="td4"><input class="btn-del" type="image"  src="https://cdn4.iconfinder.com/data/icons/ionicons/512/icon-ios7-arrow-forward-512.png">
                                               <%--  Parte del botón que enviará la información del idspoiler, para mostrar el spoiler correcto
                                               en la página de spoiler.jsp,al hacer click en el botón anterior.  --%>
                                               <input type="hidden"  value="<%=id_spoiler%>" name="id_spoiler" class="btn-del">
                                       </tr>
                               </tbody>
                        </table>
                    </form>
                    <%}%>



                </div>
        </div>
    </main>

</body>
</html>