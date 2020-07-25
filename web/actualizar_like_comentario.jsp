<%-- 
    Document   : actualizar_like_comentario
    Created on : 25-jul-2020, 13:51:50
    Author     : luyim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    try {
        int num_comment = Integer.parseInt(request.getParameter("num_comment"));
        Class.forName("org.mariadb.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");
        
        /* Actualizar zanahoria de comentario basado en el num de comentari ocuando el usuario le hace click */
        
        Statement stmt = conn.createStatement();
        int status = stmt.executeUpdate("UPDATE comentario SET carrots_comentario = carrots_comentario + 1 WHERE num_comentario = "+num_comment+";"); 
        if(status > 0) {
            out.println("Nice");
        } else {
            out.println("Sad");
        }
        stmt.close();
        conn.close();
    
    
    } catch(Exception e) {
        out.println(e);
    }
    
%>