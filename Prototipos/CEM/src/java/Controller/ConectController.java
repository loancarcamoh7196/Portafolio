/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

/**
 *
 * @author Gondan
 */
public class ConectController {
    
    public ConectController(){
        
    }
    
    public DriverManagerDataSource conect(){
        DriverManagerDataSource dataSource=new DriverManagerDataSource();
        dataSource.setDriverClassName(oracle.jdbc.driver.OracleDriver.class.getName());
        dataSource.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
        dataSource.setUsername("cem");
        dataSource.setPassword("montreal");
        return dataSource;
    }
    
}
