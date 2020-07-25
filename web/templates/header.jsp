<%-- 
    Document   : header
    Created on : 22-jul-2020, 15:16:13
    Author     : luyim
--%>
<%-- Haciendo las importaciones  --%>
<%@page import="Entidad.Usuario"%>
<%@page import="Proceso.UsuarioProceso"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<header class="wrapper">
    
        <nav class="navbar">
            <%
                    /* estableciendo la coneccion con la base de datos  */
                    Class.forName("org.mariadb.jdbc.Driver");
                    Connection con1 = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");
      
                    /* creando la instancia para este procedimiento */

                    Statement stmt1 = con1.createStatement();
                    
                    /* se ejecuta la consulta para seleccionar el usuario que esté activo en ese momento */
                    ResultSet rs1 = stmt1.executeQuery("SELECT nombre_usuario FROM usuario WHERE activo = 1;");
                    
                    /* ciclo repetitivo mientras todavia haya un siguiente campo, de los obtenidos en la tabla de la bdd */
                    while(rs1.next()){
                        /* Obteniendo el nombre del usuario para agregarlo al icono del usuario que esta online */
                        String usuario = rs1.getString("nombre_usuario");
            %>
            
            <%-- Formulario que redirigirá a la página de resultados_busqueda.jsp  --%>
            <form class="searchbar-container" action="resultados_busqueda.jsp" method="POST">
                <%-- barra de busqueda  --%>
                <div class="searchbar">
                    <%-- Input de texto, que lo que se ingrese ahí, será lo que se utilice para comparar, y mostrar datos en la página de  resultados_busqueda  --%>
                    <input type="text" name="barrabuscar" class="search-input" placeholder="Ingrese la pelicula a buscar" id="search">
                    <%-- Botón que al presionarlo, redririgirá a resultados_busqueda  --%>
                     <button class="search-btn" name="id_spoiler" type="submit"><i class="fas fa-search"></i></button> 
                </div>
            </form>
                     
            <%-- Contenedor de la informacion del perfil del usuario en linea  --%>         
            <div class="profile-container">
                <div class="profile">
                    <%-- Al hacer click en el contenedor, redirigirá a la página de administrar_perfil.jsp  --%>
                    <a href="./administrar_perfil.jsp" class="user-img"><i class="far fa-user fa-2x"></i> </a>
                    <%-- Recuadro de texto, que mostrará el nombre del usuario que está conectado (activo) en ese momento  --%>
                    <small id="user-name"><%=usuario%></small>
                </div>
            </div>
            <%}%>
        </nav>
        
        <%-- Barra lateral de opciones de menú  --%>
        <aside class="sidebar">
            <%-- contenedor donde se muestra el logo de la página  --%>
            <div class="sb-logo">
                <img class="logo" src="./img/logo.jpg" alt="">
            </div>
            
            <%-- Lista donde se mostrará las diferentes opciones que tiene el menú lateral  --%>
            <ul class="sb-items">
                <li class="sb-item"><a class="sb-links" href="./foro.jsp"><i class="fas fa-newspaper fa-2x"></i> <span class="sb-text">Foro </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./admin.jsp"><i class="far fa-plus-square fa-2x"></i> <span class="sb-text">Discusion </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./tendencia.jsp"><i class="fas fa-fire-alt fa-2x"></i> <span class="sb-text">Tendencias </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./nosotros.jsp"><i class="far fa-address-card fa-2x"></i> <span class="sb-text">Nosotros </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./contacto.jsp"><i class="far fa-envelope fa-2x"></i> <span class="sb-text">Contactanos </span></a></li>
            </ul>
        </aside>
    </header>
