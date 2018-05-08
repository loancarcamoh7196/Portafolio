
package com.cem.modelos;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conectar {
    
    public DriverManagerDataSource conectar(){
        DriverManagerDataSource dataSource=new DriverManagerDataSource();
        dataSource.setDriverClassName(oracle.jdbc.driver.OracleDriver.class.getName());
        dataSource.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
        dataSource.setUsername("cem");
        dataSource.setPassword("montreal");
        return dataSource;
    }
}
