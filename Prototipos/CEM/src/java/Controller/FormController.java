/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Modelos.Usuario;
import Servicio.Servicio;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Renzo
 */
public class FormController {
    
    @RequestMapping(value="form.htm", method=RequestMethod.GET)
    public ModelAndView form(){
        return new ModelAndView("form","command",new Usuario());
    }
    
    @RequestMapping(value="form.htm", method=RequestMethod.POST)
    public String form(Usuario user, ModelMap model){
        
        String mav;
        
        Servicio sev = new Servicio();
        
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
    
    /*
    @RequestMapping(value="form.htm", method=RequestMethod.POST)
    public String form(Usuario user, ModelMap model){
        
        model.addAttribute("username",user.getUsername());
        model.addAttribute("password",user.getPassword());
        return "home";
    }
    */
}
