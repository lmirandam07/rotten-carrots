<%-- 
    Document   : newjsp
    Created on : 20-jul-2020, 15:39:56
    Author     : luyim
--%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Entidad.Comentario"%>
<%@page import="Proceso.ComentarioProceso"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/template.css">
    <link rel="stylesheet" href="./css/comentarios.css">
    <script src="https://kit.fontawesome.com/e9fad0131d.js" crossorigin="anonymous"></script>
	<title>Rotten Carrots - Comentarios Spoiler</title>
</head>
<body>
    <%@include file="templates/header.jsp" %>
    <div class="container my-5">
    <%
        Boolean guardado = (Boolean)session.getAttribute("guardado");
        int c = (Integer)session.getAttribute("ejecucion");
        session.setAttribute("ejecucion", c + 1);
        if(guardado){
    %>
    <%
        int usuario=1;
        int spoiler=1;
        String cuerpo_comentario = request.getParameter("cuerpo_comentario");
        
        Comentario comentario = new Comentario();
        
        
        comentario.setId_usuario(usuario);
        comentario.setId_spoiler(spoiler);
        comentario.setCuerpo_comentario(cuerpo_comentario);
        
 
       
          
       
    %>
        <ul>
            
            <%%>
        </ul>

    <%
        
        ComentarioProceso pcomentario = new ComentarioProceso();
        int isSaved = pcomentario.GuardarComentario(comentario);
        if(isSaved > 0){

        }else{

        }
        
        }
     else{
    %>

    <%}%>
</div>
    <main class="main-container">
        <section class="comments-wrapper">
            <div class="comments-container">
                <div class="comment"> <!--Comment-->
                    <div class= "comment-content">
                        <div class="comment-header">
                            <h4 class="comment-user">@SuicideSquadHater</h4>
                            <div class="comment-tag">
                                <h4 class="tag">categoría</h4>
                            </div>
                        </div>

                        <div class="comment-mensaje">
                            <p class="mensaje">
                                No concuerdo caballero, me parece que la historia fue llevada a cabo de la mejor forma y Jared hace un papel fenomenal en esa película, retratando a la perfección un personaje tan complejo como el Joker y el plot twist al final fue la cereza del pastel ante tal obra de arte. Saludos
                            </p>
                        </div>

                        <div class="comment-footer">
                            <div class="comment-carrots">
                                <button class="btn-carrots"><small class="carrots"><i class="fas fa-carrot"></i> 0</small></button>
                            </div>
                        </div>
                        <hr>
                    </div>
                    
                </div>
                
            
            </div> <!--FIN DEL FONDO-->
        </section>
        
    </main>

</body>
</html>
