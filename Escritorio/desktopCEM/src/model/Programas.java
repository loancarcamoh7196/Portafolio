/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author JoseFa
 */
public class Programas {

    private int id;
    private String nombre;
    private String descripcion;
    private String duracion;
    private int cantMin;
    private int cantMax;
    private int id_cem;
    private int id_estado;

    public Programas() {
    }

    public Programas(int id, String nombre, String descripcion, int id_estado) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.id_estado = id_estado;
    }

    public Programas(int id, String nombre, String descripcion, String duracion, int cantMin, int cantMax, int id_cem, int id_estado) {
        this.id = id;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.duracion = duracion;
        this.cantMin = cantMin;
        this.cantMax = cantMax;
        this.id_cem = id_cem;
        this.id_estado = id_estado;
    }
    
    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the descripcion
     */
    public String getDescripcion() {
        return descripcion;
    }

    /**
     * @param descripcion the descripcion to set
     */
    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    /**
     * @return the duracion
     */
    public String getDuracion() {
        return duracion;
    }

    /**
     * @param duracion the duracion to set
     */
    public void setDuracion(String duracion) {
        this.duracion = duracion;
    }

    /**
     * @return the cantMin
     */
    public int getCantMin() {
        return cantMin;
    }

    /**
     * @param cantMin the cantMin to set
     */
    public void setCantMin(int cantMin) {
        this.cantMin = cantMin;
    }

    /**
     * @return the cantMax
     */
    public int getCantMax() {
        return cantMax;
    }

    /**
     * @param cantMax the cantMax to set
     */
    public void setCantMax(int cantMax) {
        this.cantMax = cantMax;
    }

    /**
     * @return the id_cem
     */
    public int getId_cem() {
        return id_cem;
    }

    /**
     * @param id_cem the id_cem to set
     */
    public void setId_cem(int id_cem) {
        this.id_cem = id_cem;
    }

    /**
     * @return the id_estado
     */
    public int getId_estado() {
        return id_estado;
    }

    /**
     * @param id_estado the id_estado to set
     */
    public void setId_estado(int id_estado) {
        this.id_estado = id_estado;
    }
}
