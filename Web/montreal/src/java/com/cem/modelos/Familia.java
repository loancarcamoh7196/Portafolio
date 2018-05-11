/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.modelos;

/**
 * Clase Entity de la tabla Familia Anfitriona en Base de Datos Montreal
 * @author Lorena
 */
public class Familia {

    private Usuario usuario;
    private int numero_integrantes;
    private String centro_cel;
    
    /**
     * Constructor por defecto, vacío. De la Clase Familia.
     */
    public Familia(){
        
    }
    
    /**
     * Constructor con parametros de la clase Familia.
     * @param username alias de usuario.
     * @param password constraseña.
     * @param nombre nombre del representante de la Familia.
     * @param apellido apellido del representante de la Familia.
     * @param email email del representante de la Familia.
     * @param tipo_usuario tipo de usuario.
     * @param numero_integrantes numero de los integrantes de la Familia.
     * @param centro_cel  centros de estudios CEL a cual estan asociados.
     */
    public Familia(String username, String password, String nombre, String apellido,String email, int tipo_usuario, 
            int numero_integrantes, String centro_cel){
        super();
        this.numero_integrantes = numero_integrantes;
        this.centro_cel = centro_cel;
    }
    
    /**
     * @return retorna objeto Usuario, dependiete Familia
     */
    public Usuario getUsuario() {
        return usuario;
    }

    /**
     * @param usuario objeto Usuario, permite modificarlo.
     */
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    /**
     * @return retorna numero de integrantes de Familia
     */
    public int getNumero_integrantes() {
        return numero_integrantes;
    }

    /**
     * @param numero_integrantes modifica el numero de integrantes de Familia.
     */
    public void setNumero_integrantes(int numero_integrantes) {
        this.numero_integrantes = numero_integrantes;
    }

    /**
     * @return devuelve el centro cel asociado a la Familia
     */
    public String getCentro_cel() {
        return centro_cel;
    }

    /**
     * @param centro_cel modifica el centro cel asociado a Familia.
     */
    public void setCentro_cel(String centro_cel) {
        this.centro_cel = centro_cel;
    }

    
}
