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
    <%@include file="templates/header.html" %>
    <main class="main-container">
			<div class="prueba">
                    <h3 class="Discussions">Resultado de búsqueda:</h3>
                    <table class="titulosdetabla">
                        <tbody>
                            <tr>
                                <td class="td1"><div class="alineartexto"><h3>DISCUSIÓN</h3></div></td><!-- spoiler->titulo_spoiler -->
                                <td class="td2"><div class="alineartexto"><h3>INICIADO</h3></div></td><!-- usuario->nombre_usuario -->
                                <td class="td2"><div class="alineartexto"><h3>RATING</h3></div></td><!-- spoiler->rating -->
                                <td class="td2"><div class="alineartexto"><h3>CARROTS</h3></div></td><!-- spoiler->carrots -->
                                <td class="td3"><div class="alineartexto"><h3>RESPUESTA MÁS RECIENTE</h3></div></td><!-- comentario+usuario->nombre_usuario -->
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
