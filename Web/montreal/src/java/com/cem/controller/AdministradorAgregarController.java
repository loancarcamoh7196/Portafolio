/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Lorena
 */
public class AdministradorAgregarController {

    @RequestMapping("admin/AdminAgregar.htm")
    public ModelAndView home(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("AdminAgregar");
        String nombre = request.getParameter("username");
        String pass = request.getParameter("nombre");
        mav.addObject("username", nombre);
        mav.addObject("nombre", pass);
        return mav;
    }
    
    @RequestMapping("admin/AdminAgregar.htm")
    public ModelAndView home(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("AdminAgregar");
        return mav;
    }
}
