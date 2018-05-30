/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.controller;

import com.cem.modelos.Usuario;
import com.cem.servicios.UsuarioServicio;
import javax.servlet.http.HttpServletRequest;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Portafolio
 */
public class CEMAgregarController {
    @RequestMapping("admin/CEMAgregar.htm")
    public ModelAndView home(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("CEMAgregar");
        String nombre = request.getParameter("username");
        String pass = request.getParameter("nombre");
        mav.addObject("username", nombre);
        mav.addObject("nombre", pass);
        return mav;
    }
    
    @RequestMapping("admin/CEMAgregar.htm")
    public ModelAndView home(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("CEMAgregar");
        return mav;
    }
}
