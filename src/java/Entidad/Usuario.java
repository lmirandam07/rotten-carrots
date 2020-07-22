/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

public class Usuario {
    private int nombre_usuario;
    private String email;
    private String contrasena;
    private String perfil_usuario;
    
    /**
     * @return the nombre_usuario
     */
    public int getNombre_usuario() {
        return nombre_usuario;
    }

    /**
     * @param nombre_usuario the nombre_usuario to set
     */
    public void setNombre_usuario(int nombre_usuario) {
        this.nombre_usuario = nombre_usuario;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the contrasena
     */
    public String getContrasena() {
        return contrasena;
    }

    /**
     * @param contrasena the contrasena to set
     */
    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    /**
     * @return the perfil_usuario
     */
    public String getPerfil_usuario() {
        return perfil_usuario;
    }

    /**
     * @param perfil_usuario the perfil_usuario to set
     */
    public void setPerfil_usuario(String perfil_usuario) {
        this.perfil_usuario = perfil_usuario;
    }
    
}
