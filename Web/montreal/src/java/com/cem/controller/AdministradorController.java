/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.controller;

import com.cem.modelos.Administrador;
import com.cem.modelos.Conectar;
import com.cem.modelos.Usuario;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Lorena
 */
public class AdministradorController {
    
    private JdbcTemplate jdbcTemplate;
    
     public AdministradorController(){
        Conectar con = new Conectar();
        this.jdbcTemplate = new JdbcTemplate(con.conectar());
    }
    
     /**
      *Método que permite cargar vista Home de Usuario Administrador
      * @return  Un Objeto ModelAndView
      */
    @RequestMapping("admin/home.htm")
    public ModelAndView home(){
        ModelAndView mav = new ModelAndView();
        
        mav.setViewName("admin/home");
        
        return mav;
    }
   
}
