<%-- 
    Document   : header
    Created on : 22-jul-2020, 15:16:13
    Author     : luyim
--%>
<%@page import="Entidad.Usuario"%>
<%@page import="Proceso.UsuarioProceso"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<header class="wrapper">
    
        <nav class="navbar">
            <%
                    
                    Class.forName("org.mariadb.jdbc.Driver");
                    Connection con1 = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");

<<<<<<< HEAD
=======
                    Connection con1 = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");
>>>>>>> f41272bcc0ea1b30618b532a5b61f5744ebc8beb
                    Statement stmt1 = con1.createStatement();
                    ResultSet rs1 = stmt1.executeQuery("SELECT nombre_usuario FROM usuario WHERE activo = 1;");
                    while(rs1.next()){
                        String usuario = rs1.getString("nombre_usuario");
            %>
            <form class="searchbar-container" action="resultados_busqueda.jsp" method="POST">
                <div class="searchbar">
                    <input type="text" name="barrabuscar" class="search-input" placeholder="Ingrese la pelicula a buscar" id="search">
                     <button class="search-btn" name="id_spoiler" type="submit"><i class="fas fa-search"></i></button> 

                </div>
            </form>

            <div class="profile-container">
                <div class="profile">                    
                    <a href="./administrar_perfil.jsp" class="user-img"><i class="far fa-user fa-2x"></i> </a>
                    <small id="user-name"><%=usuario%></small>
                </div>
            </div>
            <%}%>
        </nav>

        <aside class="sidebar">
            <div class="sb-logo">
                <img class="logo" src="./img/logo.jpg" alt="">
            </div>
            <ul class="sb-items">
                <li class="sb-item"><a class="sb-links" href="./foro.jsp"><i class="fas fa-newspaper fa-2x"></i> <span class="sb-text">Foro </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./admin.jsp"><i class="far fa-plus-square fa-2x"></i> <span class="sb-text">Discusion </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./tendencia.jsp"><i class="fas fa-fire-alt fa-2x"></i> <span class="sb-text">Tendencias </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./nosotros.jsp"><i class="far fa-address-card fa-2x"></i> <span class="sb-text">Nosotros </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./contacto.jsp"><i class="far fa-envelope fa-2x"></i> <span class="sb-text">Contactanos </span></a></li>
            </ul>
        </aside>
    </header>
