<%-- 
    Document   : header
    Created on : 22-jul-2020, 15:16:13
    Author     : luyim
--%>
<header class="wrapper">
        <nav class="navbar">
            <form class="searchbar-container" action="resultados_busqueda.jsp" method="POST">
                <div class="searchbar">
                    <input type="text" name="barrabuscar" class="search-input" placeholder="Ingrese la pelicula a buscar" id="search">
                     <button class="search-btn" name="id_spoiler" type="submit"><small class="comments"><i class="fas fa-search"></i></small></button> 
                </div>
            </form>

            <div class="profile-container">
                <div class="profile">
                    <a href="./administrar_perfil.jsp" class="user-img"><i class="far fa-user fa-2x"></i> </a>
                    <small class="user-name" id="user-name">Usuario</small>
                </div>
            </div>

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
