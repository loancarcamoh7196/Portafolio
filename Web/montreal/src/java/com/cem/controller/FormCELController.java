/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.controller;

import com.cem.modelos.Conectar;
import com.cem.modelos.Usuario;
import com.cem.servicios.EncargadoCELServicio;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Portafolio
 */
@Controller
public class FormCELController {
    private JdbcTemplate jdbcTemplate;
    
    public FormCELController(){
       
    }
    
    
    /**
    * Método que permite cargar vista Home de Usuario Administrador
    * @return  Un Objeto ModelAndView
    */
    @RequestMapping(value="admin/formCEL.htm", method=RequestMethod.GET)
    public ModelAndView form(){
        return new ModelAndView("admin/formCEL","command",new Usuario());
    }
    
    @RequestMapping(value="admin/formCEL.htm", method=RequestMethod.POST)
    public String form(Usuario user, ModelMap model){
       String mav;
        
        EncargadoCELServicio sev = new EncargadoCELServicio();
        String alias = user.getUsername();
        String pass = user.getPassword(); 
        String nombre = user.getNombre();
        String apellido = user.getApellido();
        String mail = user.getEmail();
        
       String result = sev.agregarUsuario(alias, pass, nombre, apellido, mail);
       
            mav = "admin/CELAgregar";
            model.addAttribute("username", alias);
            model.addAttribute("nombre",nombre);
            model.addAttribute("apellido",apellido);
            model.addAttribute("email",mail);
                  
        return mav;
    }

}
