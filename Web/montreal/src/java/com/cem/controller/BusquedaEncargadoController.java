/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cem.controller;

import com.cem.modelos.Usuario;
import com.cem.modelos.UsuarioRowMapper;
import com.cem.servicios.EncargadoCELServicio;
import com.cem.servicios.EncargadoCEMServicio;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
/**
 *
 * @author Portafolio
 */
public class BusquedaEncargadoController {
    
    public BusquedaEncargadoController(){
        
    }

    @RequestMapping(value="admin/busqUsuario.htm", method=RequestMethod.GET)
    public ModelAndView form(){
        return new ModelAndView("admin/busqUsuario","command",new Usuario());
    }
    
    
    @RequestMapping(value="admin/busqUsuario.htm", method=RequestMethod.POST)
    public ModelAndView form(Usuario user, ModelMap model){
        
        ModelAndView modelView = new ModelAndView();
        EncargadoCEMServicio serv1 = new EncargadoCEMServicio();
        EncargadoCELServicio serv2 = new EncargadoCELServicio();
        
        String alias = user.getUsername();
        
        if(user.getTipo_usuario()== 2){
            List<Usuario> listUsers = serv1.listarUsuariosPorAlias(alias);
//            mav = "admin/EncargadoActualizar";
//            model.addAllAttributes(listUsers);
            modelView.setViewName("admin/EncargadoActualizar");
            modelView.addObject(listUsers);
            return modelView;
        }else{
            if(user.getTipo_usuario()== 3){
                List<Usuario> listUsers = serv1.listarUsuariosPorAlias(alias);
                modelView.setViewName("admin/EncargadoActualizar");
                modelView.addObject(listUsers);
                return modelView;
                
//                mav = "admin/EncargadoActualizar";
//                model.addAllAttributes(listUsers);  
//                return new ModelAndView(mav);
            }else{
                modelView.setViewName("admin/EncargadoActualizar");
                model.addAttribute("username", alias);
                return modelView;
            }  
        }
//        UsuarioRowMapper wrapper = new UsuarioRowMapper();
//        wrapper.setUsers(new List<Usuario>(serv1.findByUserName(alias)));
//        mav.addObject("userListWrapper",wrapper);
//
//        model.setViewName("admin");
//        return model;
//            mav = "admin/EncargadoActualizar";
//            model.addAttribute("username", alias);            
    }
    
}
