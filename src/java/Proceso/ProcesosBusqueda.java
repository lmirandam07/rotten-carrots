/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Proceso;

import Entidad.Busqueda;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author chebe
 */
public class ProcesosBusqueda {
    
        /*  Variable de tipoo conexion, hay que importarla del jar, el import es el que esta arriba, llamado java.sq.Coneccion  */
    Connection conn;
    
    
    /*  Constructor de la clase   */
    public ProcesosBusqueda(){
        
        try{
            /*  esto necesita estad dentro de un try catch es para buscar ese archivo, para conectarse a una base de datos MySQL   */
            Class.forName("org.mariadb.jdbc.Driver");

            
            /*  Es para igualar la variable conn, con los datos de la base de datos a la que nos estamos conectando, necesita 3 parametros: ruta, usuario y contraseña   */
            this.conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "12345");
            
            /*  para tirar el error generico de que no se conecto a la base de datos   */
        }catch(SQLException e){
            System.out.println("Error al conectar: " + e);
        }
        catch(ClassNotFoundException ex){
            System.out.println("Error al registrar el driver de MySQL: " + ex);
        }
    }
    
    
    
        public List<Busqueda> ConsultarDatos(){
        
        /* declarando algo para retornar */
        /* este es un conjunto de varios objetos de datosformulario */
        List<Busqueda> busquedas = new ArrayList<Busqueda>();
        

        
        try{
            /* Se necesita hacer una instancia de la accion que se va a crear en ese momento   */
            /* Java tiene una clase ya predefinida para BDD, llamada Statement */
            /* De esta manera se crea una instancia a la accion en la base de datos. hay que importarla tambien */
            Statement stmt = conn.createStatement();
            
                   /* Se define el query que se va a ejecutar en la base de datos */
                   String query = "SELECT titulo_spoiler, descripcion_spoiler"
                                + " FROM spoiler"
                                + " WHERE spoiler.id_pelicula = pelicula.id_pelicula"
                                + " AND pelicula.nombre_peli = "+ textobusqueda +";";
                   
                   /* todo lo que se ejecute como una consulta, se va a guardar en ResultSet*/
                   /* se le iguala a excecutequery, para sacar datos */
                   /* hay que importarlo */
                   /* lo del resultset, se insertara en el listado declarado apenas comienza esta clase */
                   /* esto se hace recorriendo el resultset con una estructura de recorrido, como for, while, dowhile, etc */
                   ResultSet result = stmt.executeQuery(query);
                   
                   /* mientras el resultset tenga para moverse a la siguiente posicion */
                   while(result.next()){
                       /* se crea un nuevo objeto de la clase DatoFormulario */
                       /* este es un solo objeto de datos formulario */
                       Busqueda busqueda = new Busqueda();
                       
                       /*Metodos para asignar los valores que se quieran enviar a la base de datos*/
                       /*para obtener lo que viene de la base de datos, le pones el getstring, o del tipo de dato que sea, y entr los parentesis va el nombre de la columna a la cual se esta insertando en al base de datos*/
                       busqueda.setTitulospoiler(result.getString("titulospoiler"));
                       busqueda.setDescripcionspoiler(result.getString("descripcionspoiler"));
                       
                       
                       /*para añadirlos a mi campo de datos formulario*/
                       /*aqui se le esta diciendo, al listado de DatosFormulario, añadele un DatoFormulario*/
                       busquedas.add(busqueda);
                   }
                   
                   /* se cierra todo lo que se abrio en esta clase, luego de que el while terminara su recorrido */
                   result.close();
                   stmt.close();
                   conn.close();
                   
                   /* retornar la lista obtenida */
                   return busquedas;
        }
        catch(Exception e){
            System.out.println("ERROR"+e.getMessage().toString());
        }
        
        /* retornando la lista que se declaro al principio */
        return busquedas;
    }

    
}
