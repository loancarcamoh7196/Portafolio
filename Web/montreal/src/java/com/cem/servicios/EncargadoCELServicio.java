/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.servicios;

import com.cem.modelos.Conectar;
import com.cem.modelos.Usuario;
import com.cem.modelos.UsuarioRowMapper;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Lorena
 */
public class EncargadoCELServicio {
    
    private JdbcTemplate jt;
    
    public EncargadoCELServicio(){
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
                + " VALUES(USUARIOSEQ.NEXTVAL,?,?,?,?,?,3)", _username, _pass, _nombre, _apellido, _email)
                ;
        
        return "Operación realizada";
    }
    
//    /***
//     * Metodo que muestra todos los registros de Usuario
//     * @return 
//     */
//    public List<Usuario> buscarTodos(){
//        return jt.query("SELECT * FROM usuario WHERE fk_id_tipo=3 ", new UsuarioRowMapper());
//       
//    }
//    
//    public List<Usuario> findByUserName(String _username){
//        
//        String var = "'%"+_username+"%'";
//        
//        return jt.query("SELECT * FROM usuario WHERE fk_id_tipo=3 AND username LIKE ? ", 
//                        new Object[] { var }, new UsuarioRowMapper());
//
//    }
//    
//    
//    public void actualizarUsuarioPorNombre(String _username, int _tipo_usuario){
//        //jt.update();
//    }
    
    /***
     * Metodo Custumer que permite obtener una lista de los usuarios(Encargado CEM) disponibles.
     * @return 
     */
    public List<Usuario> listarUsuariosTodos(){
        List<Usuario> usuarios = new ArrayList<Usuario>();
        Usuario usuario = null;
        
        int id;
        String alias, nombre,apellido,email,pass;  
        
        //SQL (Indicar datos es necesario)
        String sql="SELECT id_usuario, username,nombre_usuario,apellido_usuario,email_usuario,clave "
                 + "FROM usuario"
                 + "WHERE fk_id_tipo=2 ";
        
        //Mapeo
        List<Map<String, Object>> rows = jt.queryForList(sql);
        for(int i=0; i < rows.size(); i++){
            usuario = new Usuario();
            /*Primero parseamoas los resultados de la consulta*/
            id = Integer.parseInt(rows.get(i).get("id_usuario").toString());
            alias = rows.get(i).get("username").toString();
            nombre = rows.get(i).get("nombre_usuario").toString();
            apellido = rows.get(i).get("apellido_usuario").toString();
            email = rows.get(i).get("email_usuario").toString();
            pass = rows.get(i).get("clave").toString();
            
            /*Insertamos datos recuperados a un Obejto Usuario*/
            usuario.setId(id);
            usuario.setUsername(alias);
            usuario.setNombre(nombre);
            usuario.setApellido(apellido);
            usuario.setEmail(email);
            usuario.setTipo_usuario(2);
            usuario.setPassword(pass);
            usuarios.add(usuario);
        }
        
        return usuarios;
    }
    /***
     * 
     * @param _username
     * @return 
     */
    public List<Usuario> listarUsuariosPorAlias(String _username){
        List<Usuario> usuarios = new ArrayList<Usuario>();
        Usuario usuario = null;
        
        int id;
        String alias, nombre,apellido,email,pass;  
        
        //SQL (Indicar datos es necesario)
        String sql="SELECT id_usuario, username,nombre_usuario,apellido_usuario,email_usuario,clave "
                 + "FROM usuario "
                 + " WHERE fk_id_tipo=2 AND username LIKE '%"+ _username+"%'";
        
        //Mapeo
        List<Map<String, Object>> rows = jt.queryForList(sql);
        for(int i=0; i < rows.size(); i++){
            usuario = new Usuario();
            /*Primero parseamoas los resultados de la consulta*/
            id = Integer.parseInt(rows.get(i).get("id_usuario").toString());
            alias = rows.get(i).get("username").toString();
            nombre = rows.get(i).get("nombre_usuario").toString();
            apellido = rows.get(i).get("apellido_usuario").toString();
            email = rows.get(i).get("email_usuario").toString();
            pass = rows.get(i).get("clave").toString();
            
            /*Insertamos datos recuperados a un Obejto Usuario*/
            usuario.setId(id);
            usuario.setUsername(alias);
            usuario.setNombre(nombre);
            usuario.setApellido(apellido);
            usuario.setEmail(email);
            usuario.setTipo_usuario(2);
            usuario.setPassword(pass);
            usuarios.add(usuario);
        }
        
        return usuarios;
    }
}
