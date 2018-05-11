/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.modelos;

import java.sql.Date;

/**
 * Clase Entity de la tabla Alumno en Base de Datos Montreal
 * @author Lorena
 */
public class Alumno {

    private Usuario usuario;
    private String genero;
    private Date fecha_nacimiento;
    
    /**
     * Constructor por defecto, vacío. De la clase Alumno.
     */
    public Alumno(){
        
    }
    
    /**
     * Constructor con parametros de clase Alumno. 
     * @param username nombre de usuario
     * @param clave contraseña
     * @param nombre_usuario Nombre del Alumno
     * @param apellido_usuario Apellido del Alumno
     * @param email email del Alumno
     * @param genero genero del Alumno 
     * @param fecha_nacimiento fecha de nacimiento del Alumno
     */
    public Alumno(String username, String clave,String nombre_usuario,String apellido_usuario, String email, String genero, 
                 Date fecha_nacimiento){
         super();
         this.genero = genero;
         this.fecha_nacimiento = fecha_nacimiento;
    }
    
    /**
     * @return Devuelve un Objeto Usuario, que le pertenece al Alumno
     */
    public Usuario getUsuario() {
        return usuario;
    }

    /** 
     * @param usuario modifica un Objeto Usuario, dependiente de Alumno
     */
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    /**
     * @return devuelve genero de Alumno
     */
    public String getGenero() {
        return genero;
    }

    /**
     * @param genero modifica genero del Alumno
     */
    public void setGenero(String genero) {
        this.genero = genero;
    }

    /**
     * @return devuelve fecha de nacimiento del Alumno
     */
    public Date getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    /**
     * @param fecha_nacimiento modifica fecha de nacimiento del Alumno
     */
    public void setFecha_nacimiento(Date fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }
    
    
    
    
}
