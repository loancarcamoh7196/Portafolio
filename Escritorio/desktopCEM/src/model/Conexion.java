/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author JoseFa
 */
public class Conexion {

    public void probarConexion() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "montreal", "montreal");
            if (con != null) {
                System.out.println("Connected");
            }
            // close the connection object  
            con.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void probarConsulta() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "montreal", "montreal");
            Statement stmt = con.createStatement();
            //query     
            ResultSet rs = stmt.executeQuery("select * from usuario");
            if (rs.getRow() == 0) {
                System.out.println("no hay datos");
            } else {
                System.out.println("Hya datos");
            }
            while (rs.next()) {
                System.out.println(rs.getString(2) + " " + rs.getString(3));
            }

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public boolean conectarUsuario(String a, String b) {
        Connection con = null;
        CallableStatement stmt = null;
        ResultSet rs = null;
        String query = "select * from usuario where username = ? and clave = ?";
        try {
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "montreal", "montreal");
            stmt = con.prepareCall(query);
            stmt.setString(1, a);
            stmt.setString(2, b);
            rs = stmt.executeQuery();
            while (rs.next()) {
                if (!a.equals(rs.getString(2)) || !b.equals(rs.getString(3))) {
                    System.out.println("Usuario o contrasena no validos");
                } else {
                    System.out.println("Inicio de sesion exitoso");
                    return true;
                }
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            try {
                rs.close();
            } catch (SQLException ex) {
                Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                stmt.close();
            } catch (SQLException ex) {
                Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            }
            try {
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        return false;
    }

    public boolean insertarPrograma(String a, String b, String c, int d, int e) {
        try {
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "montreal", "montreal");
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("INSERT INTO PROGRAMA_ESTUDIO_CEM VALUES (progCEMSeq.nextval, '" + a + "', '" + b + "', '" + c + "', '" + d + "', '" + e + "', 1, 17)");
            while (rs.next()) {
                System.out.println("Program Inserted");
                return true;
            }
            stmt.close();
            con.close();
        } catch (SQLException i) {
            System.out.println(i);
        }
        return false;
    }

    public ArrayList ListarProgramas() {
        try {
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "montreal", "montreal");
            Statement stmt = con.createStatement();
            String sql = "select * from PROGRAMA_ESTUDIO_CEM";
            ResultSet rst;
            rst = stmt.executeQuery(sql);

            ArrayList<Programas> listProgramas = new ArrayList<>();
            while (rst.next()) {
                Programas progr = new Programas(rst.getInt("id_programa"), rst.getString("nombre_programa"), rst.getString("descripcion"), rst.getString("duracion"), rst.getInt("cant_min_alumnos"), rst.getInt("cant_max_alumnos"), rst.getInt("fk_id_cod_cem"), rst.getInt("fk_id_estado"));
                System.out.println(progr.getNombre());
                listProgramas.add(progr);
            }
            return listProgramas;

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public ArrayList ListarProgramas2() {
        try {
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "montreal", "montreal");
            Statement stmt = con.createStatement();
            String sql = "SELECT p.nombre_programa, p.descripcion, p.duracion, p.cant_min_alumnos, p.cant_max_alumnos, e.estado\n" +
                         "from PROGRAMA_ESTUDIO_CEM p JOIN ESTADO e \n" +
                         "ON p.fk_id_estado = e.id_estado";
            ResultSet rst;
            rst = stmt.executeQuery(sql);

            ArrayList<ProgramaEstudio> listProgramas = new ArrayList<>();
            while (rst.next()) {
                ProgramaEstudio progr = new ProgramaEstudio(rst.getString("nombre_programa"), rst.getString("descripcion"), rst.getString("duracion"), rst.getInt("cant_min_alumnos"), rst.getInt("cant_max_alumnos"), rst.getString("estado"));
                //Programas progr = new Programas(rst.getInt("id_programa"), rst.getString("nombre_programa"), rst.getString("descripcion"), rst.getInt("fk_id_estado"));
                System.out.println(progr.getNombre() + " " + progr.getEstado());
                listProgramas.add(progr);
            }
            return listProgramas;

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
