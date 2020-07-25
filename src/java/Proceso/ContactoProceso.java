/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Proceso;

import Entidad.Contacto;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Javier Singh
 */
public class ContactoProceso {
    
    
    Connection conn;
    
    
    /*  Constructor de la clase   */
    public ContactoProceso(){
        
        try{
            /*  esto necesita estad dentro de un try catch es para buscar ese archivo, para conectarse a una base de datos MySQL   */
            Class.forName("org.mariadb.jdbc.Driver");
          
            /*  Es para igualar la variable conn, con los datos de la base de datos a la que nos estamos conectando, necesita 3 parametros: ruta, usuario y contraseña   */

<<<<<<< HEAD
            this.conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "lionel");
=======
            this.conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");
>>>>>>> 461e49a206ff2d61e32b50e4e26ff93f974a658b

            /*  para tirar el error generico de que no se conecto a la base de datos   */
        }catch(SQLException e){
            System.out.println("Error al conectar: " + e);
        }
        catch(ClassNotFoundException ex){
            System.out.println("Error al registrar el driver de MySQL: " + ex);
        }
    }
    
    
    public int GuardarContacto(Contacto contacto){
        
        /* Declarando variable con la que se va a ejecutar el resultado de esta clase */
        int resultado = 0;
        
        try{
            /* Se necesita hacer una instancia de la accion que se va a crear en ese momento   */
            /* Java tiene una clase ya predefinida para BDD, llamada Statement */
            /* De esta manera se crea una instancia a la accion en la base de datos. hay que importarla tambien */
            Statement smtm = conn.createStatement();
            
            /* Se define el query que se va a ejecutar en la base de datos */
            String query = "INSERT INTO contacto(id_usuario, asunto, consulta)";
                    /* cadena concatenada para poner los VALUES que se van a insertar */
                   query += "VALUES('"+contacto.getId_usuario()+"','"+contacto.getAsunto()+"','"+contacto.getConsulta()+"')";
                  
            /* Se ejecuta el query con la variable que se habia declarado. entre parentesis ira el query que definimos aneriomente */
            /* se le iguala a excecuteupdate, para hacer una insercion, actualizacion o borrado */
            resultado = smtm.executeUpdate(query);
            
            return resultado;
        }
        catch(Exception w){
            System.out.println("Error al insertar: " + w);
        }
        
        return 0;
    }
    
}
