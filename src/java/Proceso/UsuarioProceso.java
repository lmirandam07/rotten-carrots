/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Proceso;

import Entidad.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author luyim
 */
public class UsuarioProceso {
    Connection conn;
    
    public UsuarioProceso() {
        try {
            Class.forName("org.mariadb.jdbc.Driver");



            this.conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/rotten_carrots", "root", "1014");


        } catch(SQLException e) {
            System.out.println("Error al conectar: " + e);
        } catch(ClassNotFoundException ex) {
            System.out.println("Error al registrar el driver de MySQL:" + ex);
        }
    }
    
    public int GuardarUsuario(Usuario usuario) {
        int resultado = 0;
        
        try {
            Statement smtm = conn.createStatement();
            String query = "INSERT INTO usuario(nombre_usuario, email, contrasena, perfil_usuario)";
                   query += "VALUES('"+usuario.getNombre_usuario()+"','"+usuario.getEmail()+"',"
                           + "'"+usuario.getContrasena()+"', '"+usuario.getPerfil_usuario()+"');";
            resultado = smtm.executeUpdate(query);
            
            return resultado;
        } catch(Exception e) {
            System.out.println("Error al insertar: " + e);
        }
        
        return 0;
    }
}
