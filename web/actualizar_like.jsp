<%-- 
    Document   : actualizar_like
    Created on : 25-jul-2020, 12:48:21
    Author     : luyim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    try {
        int id_spoiler = Integer.parseInt(request.getParameter("id_spoiler"));
        Class.forName("org.mariadb.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");
        Statement stmt = conn.createStatement();
        
        /* Actualizar zanahoria de spoiler basado en el id del spoiler al que se le dio like*/
        
        int status = stmt.executeUpdate("UPDATE spoiler SET carrots = carrots + 1 WHERE id_spoiler = "+id_spoiler+";"); 
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