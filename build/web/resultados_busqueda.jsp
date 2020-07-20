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
    <link rel="stylesheet" href="./css/ResultadoDeBusqueda.css">
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
                <li class="sb-item"><a class="sb-links" href="./Contacto.jsp"><i class="far fa-envelope fa-2x"></i> <span class="sb-text">Contáctanos </span></a></li>
            </ul>
        </aside>


    </header>
    <main class="main-container">
			<div class="prueba">
                    <h3 class="Discussions">Resultado de búsqueda:</h3>
                    <br>
                    <br>
                    <br>
                    <br>

                    <table class="titulosdetabla">
                        <tbody>
                            <tr>
                                <td class="td1"><div class="alineartexto"><h3>DISCUSIÓN</h3></div></td>
                                <td class="td2"><div class="alineartexto"><h3>INICIADO</h3></div></td>
                                <td class="td2"><div class="alineartexto"><h3>RESPUESTAS</h3></div></td>
                                <td class="td2"><div class="alineartexto"><h3>VISTAS</h3></div></td>
                                <td class="td3"><div class="alineartexto"><h3>RESPUESTA MÁS RECIENTE</h3></div></td>
                            </tr>
                        </tbody>
                    </table>

						<table class="primtabla">
							<tbody>
								<tr>
                                    <td class="td1"><div class="act1"><p><a href="">¿Al final Cobb recupera a sus hijos?</a></p></div></td>
									<td class="td2"><div class="act2"><p>Blue Kirby</p></div></td>
                                    <td class="td2"><div class="act2"><p>25</p></div></td>
                                    <td class="td2"><div class="act2"><p>34520</p></div></td>
                                    <td class="td3"><div class="act3"><p>TarantinoJR</p></div></td>
								</tr>
                            </tbody>
                        </table>

                        <br>

                        <table class="primtabla">
							<tbody>
								<tr>
									<td class="td1"><div class="act1"><p><a href="">¿Le robaron un Oscar a Leonardo DiCaprio?</a></p></div></td>
									<td class="td2"><div class="act2"><p>DiCapriio</p></div></td>
                                    <td class="td2"><div class="act2"><p>89</p></div></td>
                                    <td class="td2"><div class="act2"><p>97206</p></div></td>
                                    <td class="td3"><div class="act3"><p>JavierSIN</p></div></td>
								</tr>
							</tbody>
                        </table>

                        <br>

                        <table class="primtabla">
							<tbody>
								<tr>
									<td class="td1"><div class="act1"><p><a href="">¿Cómo saber cuándo estamos en el mundo real?</a></p></div></td>
									<td class="td2"><div class="act2"><p>GreenMario</p></div></td>
                                    <td class="td2"><div class="act2"><p>17</p></div></td>
                                    <td class="td2"><div class="act2"><p>49347</p></div></td>
                                    <td class="td3"><div class="act3"><p>LeBronStan</p></div></td>
								</tr>
							</tbody>
                        </table>

                        <br>

                        <table class="primtabla">
							<tbody>
								<tr>
									<td class="td1"><div class="act1"><p><a href="">¿Cuáles son los diferentes tipos de sueños?</a></p></div></td>
									<td class="td2"><div class="act2"><p>Dundunsua</p></div></td>
                                    <td class="td2"><div class="act2"><p>18</p></div></td>
                                    <td class="td2"><div class="act2"><p>32458</p></div></td>
                                    <td class="td3"><div class="act3"><p>Ranguliao</p></div></td>
								</tr>
							</tbody>
                        </table>

                        <br>

                        <table class="primtabla">
							<tbody>
								<tr>
									<td class="td1"><div class="act1"><p><a href="">¿Cómo escapa el personaje de DiCaprio del hotel?</a></p></div></td>
									<td class="td2"><div class="act2"><p>AAPotter</p></div></td>
                                    <td class="td2"><div class="act2"><p>37</p></div></td>
                                    <td class="td2"><div class="act2"><p>68957</p></div></td>
                                    <td class="td3"><div class="act3"><p>Simp4Life</p></div></td>
								</tr>
							</tbody>
                        </table>

                        <br>


			</div>


    </main>

</body>
</html>
