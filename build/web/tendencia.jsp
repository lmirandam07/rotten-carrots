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
    <link rel="stylesheet" href="./css/tendencia.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots</title>
</head>
<body>
        <%@include file="templates/header.html" %>
    <main class="main-container">
        <div class="escoger">
            <select name="categorias" id="categorias">
                <option value="Accion">Acción</option>
                <option value="Romance">Romance</option>
                <option value="Suspenso">Suspenso</option>
                <option value="Terror">Terror</option>
            </select>

        </div>
        <div class="puesto1">
            <p>1</p>
        </div>
        <div class="puesto2">
            <p>2</p>
        </div>
        <div class="puesto3">
            <p>3</p>
        </div>
        <div class="puesto4">
            <p>4</p>
        </div>
        <div class="tendencia1">
            <div class="titulo">
                <h2>Inception<h2>
            </div>
            <div class="imagen">
            </div>
            <div class="categoria">
                <p>Categoria</p>
            </div>
            <div class="puntaje">
                <div class="carrot">
                    <i class="fas fa-carrot"></i>
                </div>
                <div class="puntos">
                    <p>8995</p>
                </div>
            </div>
            <div class="trend">
                <i class="fas fa-fire-alt"></i>
            </div>
        </div>


        <div class="tendencia2">
            <div class="titulo">
                <h2>Fight Club<h2>
            </div>
            <div class="imagen">
                
            </div>
            <div class="categoria">
                <p>Categoria</p>
            </div>
            <div class="puntaje">
                <div class="carrot">
                    <i class="fas fa-carrot"></i>
                </div>
                <div class="puntos">
                    <p>7456</p>
                </div>
            </div>
            <div class="trend">
                <i class="fas fa-fire-alt"></i>
            </div>
        </div>



        <div class="tendencia3">
            <div class="titulo">
                <h2>After<h2>
            </div>
            <div class="imagen">
                
            </div>
            <div class="categoria">
                <p>Categoria</p>
            </div>
            <div class="puntaje">
                <div class="carrot">
                    <i class="fas fa-carrot"></i>
                </div>
                <div class="puntos">
                    <p>4200</p>
                </div>
            </div>
            <div class="trend">
                <i class="fas fa-fire-alt"></i>
            </div>
        </div>


        <div class="tendencia4">
            <div class="titulo">
                <h2>Black Swan<h2>
            </div>
            <div class="imagen">
            </div>
            <div class="categoria">
                <p>Categoria</p>
            </div>
            <div class="puntaje">
                <div class="carrot">
                    <i class="fas fa-carrot"></i>
                </div>
                <div class="puntos">
                    <p>2105</p>
                </div>
            </div>
            <div class="trend">
                <i class="fas fa-fire-alt"></i>
            </div>
        </div>


    </main>

</body>
</html>