/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Renzo
 */
@Controller
public class HomeController {
    
    @RequestMapping("home.htm")
    public ModelAndView home(HttpServletRequest request){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("home");
        String nombre = request.getParameter("username");
        String pass = request.getParameter("password");
        mav.addObject("username", nombre);
        mav.addObject("password", pass);
        return mav;
    }
    
    @RequestMapping("home.htm")
    public ModelAndView home(){
        ModelAndView mav = new ModelAndView();
        mav.setViewName("home");
        return mav;
    }
}
