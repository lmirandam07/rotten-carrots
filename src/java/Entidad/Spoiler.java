/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

/**
 *
 * @author Alexander
 */
public class Spoiler {

    /**
     * @return the id_spoiler
     */
    public int getId_spoiler() {
        return id_spoiler;
    }

    /**
     * @param id_spoiler the id_spoiler to set
     */
    public void setId_spoiler(int id_spoiler) {
        this.id_spoiler = id_spoiler;
    }

    /**
     * @return the id_usuario
     */
    public int getId_usuario() {
        return id_usuario;
    }

    /**
     * @param id_usuario the id_usuario to set
     */
    public void setId_usuario(int id_usuario) {
        this.id_usuario = id_usuario;
    }

    /**
     * @return the id_pelicula
     */
    public int getId_pelicula() {
        return id_pelicula;
    }

    /**
     * @param id_pelicula the id_pelicula to set
     */
    public void setId_pelicula(int id_pelicula) {
        this.id_pelicula = id_pelicula;
    }

    /**
     * @return the titulo_spoiler
     */
    public String getTitulo_spoiler() {
        return titulo_spoiler;
    }

    /**
     * @param titulo_spoiler the titulo_spoiler to set
     */
    public void setTitulo_spoiler(String titulo_spoiler) {
        this.titulo_spoiler = titulo_spoiler;
    }

    /**
     * @return the descripcion_spoiler
     */
    public String getDescripcion_spoiler() {
        return descripcion_spoiler;
    }

    /**
     * @param descripcion_spoiler the descripcion_spoiler to set
     */
    public void setDescripcion_spoiler(String descripcion_spoiler) {
        this.descripcion_spoiler = descripcion_spoiler;
    }
    private int id_spoiler;
    private int id_usuario;
    private int id_pelicula;
    private String titulo_spoiler;
    private String descripcion_spoiler;
    
}
