/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.modelos;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Lorena
 */
public class UsuarioRowMapper implements RowMapper<Usuario> {

    @Override
    public Usuario mapRow(ResultSet rs, int rowNum) throws SQLException {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
        return new Usuario(rs.getString("username"), rs.getString("clave"),rs.getString("nombre_usuario"),
                            rs.getString("apellido_usuario"),rs.getString("email_usuario"),rs.getInt("FK_ID_TIPO"));
    }
    
}
