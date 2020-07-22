/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidad;

/**
 *
 * @author leo-h
 */
public class Comentario {

    /**
     * @return the num_comentario
     */
    public int getNum_comentario() {
        return num_comentario;
    }

    /**
     * @param num_comentario the num_comentario to set
     */
    public void setNum_comentario(int num_comentario) {
        this.num_comentario = num_comentario;
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
     * @return the cuerpo_comentario
     */
    public String getCuerpo_comentario() {
        return cuerpo_comentario;
    }

    /**
     * @param cuerpo_comentario the cuerpo_comentario to set
     */
    public void setCuerpo_comentario(String cuerpo_comentario) {
        this.cuerpo_comentario = cuerpo_comentario;
    }

    /**
     * @return the carrots_comentario
     */
    public int getCarrots_comentario() {
        return carrots_comentario;
    }

    /**
     * @param carrots_comentario the carrots_comentario to set
     */
    public void setCarrots_comentario(int carrots_comentario) {
        this.carrots_comentario = carrots_comentario;
    }

    /**
     * @return the created_at
     */
    public String getCreated_at() {
        return created_at;
    }

    /**
     * @param created_at the created_at to set
     */
    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }
    private int num_comentario;
    private int id_usuario;
    private int id_spoiler;
    private String cuerpo_comentario;
    private int carrots_comentario;
    private String created_at;
    
}
