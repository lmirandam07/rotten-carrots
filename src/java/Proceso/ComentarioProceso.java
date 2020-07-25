/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Proceso;

import Entidad.Comentario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author leo-h
 */
public class ComentarioProceso { 
    Connection conn;
    
   public ComentarioProceso(){
        try{
            Class.forName("org.mariadb.jdbc.Driver");

            this.conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");

        }catch(SQLException e){
             System.out.println("Error al conectar: " + e);
        }
        catch(ClassNotFoundException ex){
             System.out.println("Error al registrar el driver de MySQL: " + ex);
        }
    
    }
    
    public int GuardarComentario(Comentario comentario){
        
        int resultado = 0;
        try{
            Statement smtm = conn.createStatement();
            String query = "INSERT INTO comentario(cuerpo_comentario, id_usuario, id_spoiler )";
                   query += "VALUES('"+comentario.getCuerpo_comentario()+"','"+comentario.getId_usuario()+"','"+comentario.getId_spoiler()+"')";
           
            resultado = smtm.executeUpdate(query);
            
            return resultado;
        }
        catch(Exception w){
            System.out.println("Error al insertar: " + w);
        }
        return 0;
    }
    

}
    
    
    
 

