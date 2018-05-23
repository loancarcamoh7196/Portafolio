/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.controller;

import com.cem.modelos.Usuario;
import com.cem.servicios.UsuarioServicio;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Gondan
 */
public class LoginController {
    
    @RequestMapping(value="login.htm", method=RequestMethod.GET)
    public ModelAndView form(){
        return new ModelAndView("login","command",new Usuario());
    }
    
    @RequestMapping(value="login.htm", method=RequestMethod.POST)
    public String form(Usuario user, ModelMap model){
        
        String mav;
        
        UsuarioServicio sev = new UsuarioServicio();
        
        boolean val = sev.validarUsuario(user.getUsername(), user.getPassword());
        
        if(val != true){
            mav = "home";
            model.addAttribute("username", user.getUsername());
            model.addAttribute("password", user.getPassword());
        }else{
            mav = "index";
        }
        return mav;
    }
}
