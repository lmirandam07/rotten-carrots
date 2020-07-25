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
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author leo-h
 */
public class ComentarioProceso { 
    Connection conn;
    
   public ComentarioProceso(){
        try{
            Class.forName("org.mariadb.jdbc.Driver");

<<<<<<< HEAD
            this.conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");
=======

            this.conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");
>>>>>>> 111b6201994fad5a95c2639738ff03fd9e60b778


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
    
    public List<Comentario> ConsultarDatos(){
        List<Comentario> comentarios = new ArrayList<Comentario>();
      
        try{
            Statement stmt = conn.createStatement();
            String query = "SELECT * FROM comentario";
            ResultSet result = stmt.executeQuery(query);
            while(result.next()){
                Comentario comentario = new Comentario();
                
                comentario.setNum_comentario(result.getInt("num_comentario"));
                comentario.setId_usuario(result.getInt("id_usuario"));
                comentario.setId_spoiler(result.getInt("id_spoiler"));
                comentario.setCuerpo_comentario(result.getString("cuerpo_comentario"));
                comentario.setCarrots_comentario(result.getInt("carrots_comentario"));
                comentario.setCreated_at(result.getString("created_at"));
                
                
                
                comentarios.add(comentario);
            }
            result.close();
            stmt.close();
            conn.close();
            
            return comentarios;
        }
        catch(Exception e){
            System.out.println("ERROR"+e.getMessage().toString());
        }
        return comentarios;
    }
}
    
    
    
 

