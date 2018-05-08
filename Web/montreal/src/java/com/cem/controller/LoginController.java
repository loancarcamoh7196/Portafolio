
package com.cem.controller;

import com.cem.modelos.Conectar;
import com.cem.modelos.Usuario;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
    
    private JdbcTemplate jdbcTemplate;
    
    @RequestMapping(value="login.htm",method=RequestMethod.GET)
    public ModelAndView login(){
        //Carga Pagina con ormulario vacio
        //se puede dar paraetros al formulario
        return new ModelAndView("login","command", new Usuario());
    }
    
    @RequestMapping(value="form.htm", method=RequestMethod.POST)
    public String form(Usuario user, ModelMap model){
        Conectar con=new Conectar();
        this.jdbcTemplate=new JdbcTemplate(con.conectar());
        
        Usuario us = getUser(user.getUsername());
        
        if(us.getUsername().isEmpty()){
            return "home";
        }
        
        model.addAttribute("nombre",us.getUsername());
        model.addAttribute("pass",us.getPassword());
        
        return "index";
    }
    
    public Usuario getUser(String usname){
        Usuario user = new Usuario();
        List<Usuario> userList = new ArrayList<Usuario>();
        int id;
        String username;
        String password;
        
        //SQL (Indicar datos es necesario)
        String sql="select id, username, password from users where username='usname'";
        
        List<Map<String, Object>> rows = jdbcTemplate.queryForList(sql);
        for(int i=0; i < rows.size(); i++){
            id = Integer.parseInt(rows.get(i).get("id").toString());
            user.setId(id);
            username = rows.get(i).get("username").toString();
            user.setUsername(username);
            password = rows.get(i).get("password").toString();
            user.setPassword(password);
            userList.add(user);
        }
        
        user = userList.get(0);
        
        return user;
    }
}
