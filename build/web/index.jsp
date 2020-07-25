<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/index.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
	<div class="container">
		<h2>Rotten Carrots</h2>
		<form class="iniciar" action="./sesion_iniciada.jsp">
			<input type="email" name ="email" id= "email"class="email" placeholder="Correo Electronico" autofocus required>
			<br>
			<input type="password" name="contra" id="contra" class="contra" placeholder="Contraseña" required>
			<br>
			<button class="inciarSesion">Iniciar Sesión</button>
			<br>
			<p>¿No tienes una cuenta? <a href="registrarse.jsp">  Regístrate aquí</a></p>
                </form>
	</div>
</body>
</html>
