/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.controller;

import com.cem.modelos.Conectar;
import com.cem.modelos.Usuario;
import com.cem.servicios.EncargadoCEMServicio;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Portafolio
 */
public class FormCEMController {
    
     /**
      *Método que permite cargar vista Home de Usuario Administrador
      * @return  Un Objeto ModelAndView
      */
    @RequestMapping(value="admin/formCEM.htm", method=RequestMethod.GET)
    public ModelAndView form(){
        return new ModelAndView("admin/formCEM","command",new Usuario());
    }
    
    @RequestMapping(value="admin/formCEM.htm", method=RequestMethod.POST)
    public String form(Usuario user, ModelMap model){
        
        String mav;
        
        EncargadoCEMServicio sev = new EncargadoCEMServicio();
        String alias = user.getUsername();
        String pass = user.getPassword(); 
        String nombre = user.getNombre();
        String apellido = user.getApellido();
        String mail = user.getEmail();
        
       String result = sev.agregarUsuario(alias, pass, nombre, apellido, mail);
       
            mav = "admin/CEMAgregar";
            model.addAttribute("username", alias);
            model.addAttribute("nombre",nombre);
            model.addAttribute("apellido",apellido);
            model.addAttribute("email",mail);
                  
        return mav;
    }
}
