/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.modelos;

/**
 * Clase Entity de la tabla EncargadoCEL en Base de Datos Montreal
 * @author Lorena
 */
public class EncargadoCEL {

    private Usuario usuario;
    private String centro_estudios;
    
    /**
     * Constructor por defecto vacío. De la clase Encargado CEL.
     */
    public EncargadoCEL(){
        
    }
    
    
    /**
     * Constructor por parametros de la clase Encargado CEL
     * @param username alias de Usuario.
     * @param clave contraseña.
     * @param nombre_usuario nombre de Encargado CEL.
     * @param apellido_usuario apellido Encargado CEL.
     * @param email email de Encargado CEL.
     * @param centro_estudios centro de estudios CEL que representa.
     */
    public EncargadoCEL(String username, String clave,String nombre_usuario,String apellido_usuario, String email, String centro_estudios){
        super();
        this.centro_estudios = centro_estudios;
    }
    
    /**
     * @return retorna objeto Usuario, asociado a Encargado CEL.
     */
    public Usuario getUsuario() {
        return usuario;
    }

    /**
     * @param usuario modifica objeto Usuario, asociado a Encargado CEL. 
     */
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    /**
     * @return devuelve el centro de estudios CEL asociado a Encargado CEL.
     */
    public String getCentro_estudios() {
        return centro_estudios;
    }

    /**
     * @param centro_estudios modifica centro de estudios CEL asociado a Encargado CEL.
     */
    public void setCentro_estudios(String centro_estudios) {
        this.centro_estudios = centro_estudios;
    }
    
}
