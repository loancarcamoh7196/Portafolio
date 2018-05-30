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
public class AdministradorServicio {
    
    private JdbcTemplate jt;
    
    public AdministradorServicio(){
        Conectar cn = new Conectar();
        jt = new JdbcTemplate(cn.conectar());
    }
    
    /***
     * Metodo que permite insertar un registro de Usuario.
     * @param _username
     * @param _pass
     * @param _nombre
     * @param _apellido
     * @param _email
     * @return 
     */
    public String agregarUsuario(String _username, String _pass, String _nombre, String _apellido,String _email){
        jt.update("INSERT INTO usuario (id_usuario, username, clave, nombre_usuario,apellido_usuario,email_usuario,fk_id_tipo)"
                + " VALUES(USUARIOSEQ.NEXTVAL,?,?,?,?,?,1)", _username, _pass, _nombre, _apellido, _email)
                ;
        
        return "Operación realizada";
    }
    
    
}
