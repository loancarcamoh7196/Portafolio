
package com.cem.controller;

import com.cem.modelos.Conectar;
import com.cem.modelos.Usuario;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class HomeController {
    
    private JdbcTemplate jdbcTemplate;
    
    public HomeController(){
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar());
    }
    
    @RequestMapping("home.htm")
    public ModelAndView home(){
        ModelAndView mav=new ModelAndView();
        
        List<Usuario> userList = usersMap();
        mav.addObject("userList",userList);
        
        mav.setViewName("home");
        return mav;
    }
    
    private List<Usuario> usersMap(){
        //Datos a utilizar
        List<Usuario> userList = new ArrayList<Usuario>();
        int id;
        String username;
        String password;
        
        //SQL (Indicar datos es necesario)
        String sql="select id_usuario, username, clave from usuario where id_usuario=1";
        
        //Mapeo
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for(int i=0; i < rows.size(); i++){
            Usuario user = new Usuario();
            id = Integer.parseInt(rows.get(i).get("id").toString());
            user.setId(id);
            username = rows.get(i).get("username").toString();
            user.setUsername(username);
            password = rows.get(i).get("password").toString();
            user.setPassword(password);
            userList.add(user);
        }
        
        //Enviar Lista
        return userList;
    }
    
    
}
