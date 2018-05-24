/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.modelos;

/**
 * Clase Entity de la tabla EncargadoCEM en Base de Datos Montreal
 * @author Lorena
 */
public class EncargadoCEM {

    private Usuario usuario;
    private String centro_estudios;
    
    public EncargadoCEM(){
        
    }
    
    public EncargadoCEM(String username, String clave,String nombre_usuario,String apellido_usuario, String email, 
            String centro_estudios){
        super();
        this.centro_estudios = centro_estudios;
    }
    
     /**
     * @return the usuario
     */
    public Usuario getUsuario() {
        return usuario;
    }

    /**
     * @param usuario the usuario to set
     */
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    /**
     * @return the centro_estudios
     */
    public String getCentro_estudios() {
        return centro_estudios;
    }

    /**
     * @param centro_estudios the centro_estudios to set
     */
    public void setCentro_estudios(String centro_estudios) {
        this.centro_estudios = centro_estudios;
    }
}
