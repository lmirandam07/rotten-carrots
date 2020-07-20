<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/template.css">
		<link rel="stylesheet" href="./css/admin.css">
		<link href="https://fonts.googleapis.com/css2?family=Istok+Web:wght@700&family=Montserrat&family=Roboto&display=swap" rel="stylesheet">
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
        <div class="prueba">
                <h5 class="create">Crear Discusion</h5>
                 <a href="./agregar_discusion.jsp"><img class="plus" src="./img/plus.png" alt="plus"></a>
                <h3 class="Discussions">Mis discusiones:</h3>
                <h4 class="name">Nombre</h4>
                <h4 class="disch4">Discusión</h4>
                <h4 class="imgh4">Imagen</h4>
                <img class="del1"src="./img/delete.png" alt="">
                <img class="file1"src="./img/file.png" alt="">
                <table class="primtabla">
                        <tbody>
                                <tr>
                                        <td class="td1"><div class="act1"> <p>Jack Muere</p> </div></td>
                                        <td class="td2"><div class="act2"><p>Al final de Titanic todos nos desilucionamos con el destino final que tuvo el personaje interpretado por Leonardo DiCaprio...</p></div></td>
                                        <td class="td3"><div class="act3"> <img class="imagen1"src="./img/yungdicaprio.jpg" alt=""> </div></td>
                                </tr>
                        </tbody>
                </table>
                <br>
                <img class="del2"src="./img/delete.png" alt="">
                <img class="file2"src="./img/file.png" alt="">
                <table class="segtabla">
                        <tbody>
                                <tr>
                                        <td class="td1"><div class="act1"> <p>Bruce Willis era un fantasma</p></div></td>
                                        <td class="td2"><div class="act2"><p>De lo mas emocionante del cine en las últimas 3 décadas fué enterarnos que al final, Bruce Willis estaba muerto...</p></div></td>
                                        <td class="td3"><div class="act3"> <img class="imagen2"src="./img/willis.jpg" alt=""> </div></td>
                                </tr>
                        </tbody>
                </table>
                <br>
                <img class="del3"src="./img/delete.png" alt="">
                <img class="file3"src="./img/file.png" alt="">
                <table class="tertabla">
                        <tbody>
                                <tr>
                                        <td class="td1"><div class="act1"><p> Snape era bueno</p></div></td>
                                        <td class="td2"><div class="act2"><p>Después de la película del principe mestizo, la verdad sorpendió que las razones de Snape para hacer lo que hizo estaban justificadas...</p> </div></td>
                                        <td class="td3"><div class="act3"> <img class="imagen2"src="./img/goodboi.jpg" alt=""> </div></td>
                                </tr>
                        </tbody>
                </table>
                <img class="del4"src="./img/delete.png" alt="">
                <img class="file4"src="./img/file.png" alt="">
                <table class="cuartabla">
                        <tbody>
                                <tr>
                                        <td class="td1"><div class="act4"><p>Tyler Durden era una personalidad alterna</p></div></td>
                                        <td class="td2"><div class="act2"><p>Muy pocos se dieron cuenta de los mensajes que nos daban alrededor de la película para descubrir la verdad...</p> </div></td>
                                        <td class="td3"><div class="act3"> <img class="imagen3"src="./img/crazyboi.jpg" alt=""> </div></td>
                                </tr>
                        </tbody>
                </table>
        </div>
    </main>

</body>
</html>
