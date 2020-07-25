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
	<!--Contenedor general del formulario para iniciar sesión en el sistema-->
        <div class="container">
		<h2>Rotten Carrots</h2>
                <!--Con este form hacemos que sea necesario ingresar tanto el email como la contraseña para ingresar en el sistema.-->
                <!--También nos es útil para luego validar los datos ingresados en la base de datos.-->
		<form class="iniciar" action="./sesion_iniciada.jsp">
                        <!--Input para ingresar el correo electrónico con el que vamos a iniciar sesión-->
			<input type="email" name ="email" id= "email"class="email" placeholder="Correo Electronico" autofocus required>
			<br>
                        <!--Input para ingresar la contraseña con el que vamos a iniciar sesión-->
			<input type="password" name="contra" id="contra" class="contra" placeholder="Contraseña" required>
			<br>
                        <!--Botón que controla el form, con este redireccionamos el sitio a la página de validación de los datos para el inicio de sesión-->
			<button class="inciarSesion">Iniciar Sesión</button>
			<br>
                        <!--Link utilizado para redireccionar a la página de registro en caso de que el usuario no esté registrado en el sistema-->
			<p>¿No tienes una cuenta? <a href="registrarse.jsp">  Regístrate aquí</a></p>
                </form>
	</div>
</body>
</html>
