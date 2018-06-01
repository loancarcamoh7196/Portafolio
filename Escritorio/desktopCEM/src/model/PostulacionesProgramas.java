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
public class PostulacionesProgramas {
    private int IDPostulacion;
    private String nomProg;
    private String nomCEL;
    private String estado;

    public PostulacionesProgramas() {
        
    }

    public PostulacionesProgramas(int idCEL, String nomProg, String nomCEL, String estado) {
        this.IDPostulacion = idCEL;
        this.nomProg = nomProg;
        this.nomCEL = nomCEL;
        this.estado = estado;
    }

    public int getIdCEL() {
        return IDPostulacion;
    }

    public void setIdCEL(int idCEL) {
        this.IDPostulacion = idCEL;
    }



    public String getNomProg() {
        return nomProg;
    }

    public void setNomProg(String nomProg) {
        this.nomProg = nomProg;
    }

    public String getNomCEL() {
        return nomCEL;
    }

    public void setNomCEL(String nomCEL) {
        this.nomCEL = nomCEL;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
    
}
