/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.servicios;

import com.cem.modelos.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Lorena
 */
public class AlumnoServicio {
    
    private JdbcTemplate jt;
    
    public AlumnoServicio(){
        Conectar cn = new Conectar();
        jt = new JdbcTemplate(cn.conectar());
    }
    
    /***
     * Metodo que permite insetar un registro en la tabla Usuario, de tipo Alumno.
     * @param _username
     * @param _pass
     * @param _nombre
     * @param _apellido
     * @param _email
     * @return 
     */
    public String agregarUsuario(String _username, String _pass, String _nombre, String _apellido,String _email){
        jt.update("INSERT INTO usuario (id_usuario, username, clave, nombre_usuario,apellido_usuario,email_usuario,fk_id_tipo)"
                + " VALUES(USUARIOSEQ.NEXTVAL,?,?,?,?,?,4)", _username, _pass, _nombre, _apellido, _email)
                ;
        
        return "Operación realizada";
    }
    
}
