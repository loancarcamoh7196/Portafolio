/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.controller;

import com.cem.modelos.Conectar;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Portafolio
 */
public class ResumenEjecAlumnoController {
    private JdbcTemplate jdbcTemplate;
    
     public ResumenEjecAlumnoController(){
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
     /**
      *Método que permite cargar vista Home de Usuario Administrador
      * @return  Un Objeto ModelAndView
      */
    @RequestMapping("admin/resumenEjecAlumno.htm")
    public ModelAndView home(){
        ModelAndView mav = new ModelAndView();
        
        mav.setViewName("admin/resumenEjecAlumno");
        
        return mav;
    }
}
