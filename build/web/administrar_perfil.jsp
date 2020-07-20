<%-- 
    Document   : administrar_perfil
    Created on : 20-jul-2020, 15:38:43
    Author     : luyim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <header class="wrapper">
        <nav class="navbar">
            <div class="searchbar-container">
                <div class="searchbar">
                    <input type="text" class="search-input" placeholder="Ingrese la película a buscar" id="search">
                    <a class="search-btn" href="./resultados_busqueda.jsp" id="search-btn">
                        <i class="fas fa-search"></i>
                    </a>
                </div>
            </div>

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
                <li class="sb-item"><a class="sb-links" href="./admin.jsp"><i class="far fa-plus-square fa-2x"></i> <span class="sb-text">Discusión </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./tendencia.jsp"><i class="fas fa-fire-alt fa-2x"></i> <span class="sb-text">Tendencias </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./nosotros.jsp"><i class="far fa-address-card fa-2x"></i> <span class="sb-text">Nosotros </span></a></li>
                <li class="sb-item"><a class="sb-links" href="./contacto.jsp"><i class="far fa-envelope fa-2x"></i> <span class="sb-text">Contáctanos </span></a></li>
            </ul>
        </aside>


    </header>
    <main class="main-container">


        <div class= cajaPadreAP>

            <h2>Administrar Perfil</h2>

            <div class= ContenedorImagenAP>
                <br>

                <img src="https://icongr.am/fontawesome/user-circle.svg?size=250&color=FF9F1c" alt="Usuario" class="centrar">
                <a href="#">Cambiar Foto de Perfil</a>
            </div>

            <div class= ContenedorCamposAP>
                <br>


                <div class="forma">
                    <input type="Usuario" name= "usuario" id="usuario" class="textbox" placeholder="Usuario">
                    <img src="https://icongr.am/clarity/edit.svg?size=20&color=FF9F1C" alt="lapicito">
                    <br>

                    <input type="contraseña" name ="contraseña" id= "contraseña"class="textbox" placeholder="Contraseña">
                    <img src="https://icongr.am/clarity/edit.svg?size=20&color=FF9F1C" alt="lapicito">
                    <br>

                    <input type="email" name ="email" id= "correo"class="textbox" placeholder="Correo Electrónico">
                    <img src="https://icongr.am/clarity/edit.svg?size=20&color=FF9F1C" alt="lapicito">
                    <br>
                </div>
            </div>

            <div class="ContenedorBotonesAP">
                <button><a class="link" href="./foro.jsp">Guardar</a></button>
                <button><a class="link" href="./foro.jsp">Cancelar</a></button>
                <button class="cerrar"><a class="link cerrar" href="./index.jsp">Cerrar sesión</a></button>
            </div>

        </div>

    </main>

</body>
</html>
