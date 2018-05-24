/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.servicios;

import com.cem.modelos.Conectar;
import com.cem.modelos.Usuario;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Gondan
 */
public class UsuarioServicio {
            private JdbcTemplate jt;
    
    public UsuarioServicio(){
        Conectar cn = new Conectar();
        jt = new JdbcTemplate(cn.conectar());
    }
    
    public boolean validarUsuario(String uName, String uPass){
        boolean val = false;

        Usuario usuario = encontrarUsuario(uName, uPass);
        if(usuario == null){
            val = true;
        }

        return val;
    }
    
    public List<Usuario> listarUsuarios(){
        List<Usuario> usuarios = new ArrayList<Usuario>();
        Usuario usuairo = null;
        
        int id;
        String username;
        String password;
        
        //SQL (Indicar datos es necesario)
        String sql="select id_usuario, username, clave from usuario";
        
        //Mapeo
        List<Map<String, Object>> rows = jt.queryForList(sql);
        for(int i=0; i < rows.size(); i++){
            usuairo = new Usuario();
            id = Integer.parseInt(rows.get(i).get("id_usuario").toString());
            usuairo.setId(id);
            username = rows.get(i).get("username").toString();
            usuairo.setUsername(username);
            password = rows.get(i).get("clave").toString();
            usuairo.setPassword(password);
            usuarios.add(usuairo);
        }
        
        return usuarios;
    }
    
    public Usuario encontrarUsuario(String uName, String uPass){
        Usuario usuario = null;
        String username = "";
        String password = "";
        
        List<Usuario> usuarios = listarUsuarios();

        for(int i = 0; i < usuarios.size(); i++){
            username = usuarios.get(i).getUsername();
            password = usuarios.get(i).getPassword();

            if(uName.equals(username)){
                if(uPass.equals(password)){
                    usuario = new Usuario();
                    usuario.setNombre(uName);
                    usuario.setPassword(uPass);
                }
            }
        }
        
        return usuario;
    }
}
