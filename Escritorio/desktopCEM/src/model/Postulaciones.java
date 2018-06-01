/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author DEV02
 */
public class Postulaciones {
    private int id_curso;
    private int id_programa;
    private int id_estado;
    private int id_cel;

    public Postulaciones() {
    }

    public Postulaciones(int id_curso, int id_programa, int id_estado, int id_cel) {
        this.id_curso = id_curso;
        this.id_programa = id_programa;
        this.id_estado = id_estado;
        this.id_cel = id_cel;
    }

    
    
    public int getId_curso() {
        return id_curso;
    }

    public void setId_curso(int id_curso) {
        this.id_curso = id_curso;
    }

    public int getId_programa() {
        return id_programa;
    }

    public void setId_programa(int id_programa) {
        this.id_programa = id_programa;
    }

    public int getId_estado() {
        return id_estado;
    }

    public void setId_estado(int id_estado) {
        this.id_estado = id_estado;
    }

    public int getId_cel() {
        return id_cel;
    }

    public void setId_cel(int id_cel) {
        this.id_cel = id_cel;
    }

    
    
}
