/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.modelos;

/**
 * Clase Entity de la tabla Administrador en Base de Datos Montreal
 * @author Lorena
 */
public class Administrador {
    
    private Usuario usuario;
    
    /**
     * Constructor por defecto de clase Administrador, vacío.
     */
    public Administrador(){
        
    }
    
    /**
     * Constructor por parametros de clase Administrador.
     * @param username alias de Usuario
     * @param clave contraseña
     * @param nombre_usuario Nombre del Administrador
     * @param apellido_usuario Apellido de Administrador
     * @param email Email de administrador
     */
    public Administrador(String username, String clave,String nombre_usuario,String apellido_usuario, String email ){
        super();
    }
  

    /**
     * @return devuelve objeto de tipo Usuario, dependiente de Administrador
     */
    public Usuario getUsuario() {
        return usuario;
    }

    /**
     * @param usuario modifica objeto tipo Usuario, dependiente de Administrador
     */
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }
    
}
