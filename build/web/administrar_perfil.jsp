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
    <%@include file="templates/header.jsp" %>
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
