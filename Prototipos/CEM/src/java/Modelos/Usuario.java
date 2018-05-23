/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

/**
 *
 * @author Renzo
 */
public class Usuario {
    
    private int id;
    private String username;
    private String password;
    private String nombre;
    private String apellido;
    private String email;
    private int tipo_usuario;
    
    /**
     * Constructor por defecto, vacío. De clase Usuario.
     */
    public Usuario() {
    }

    /**
     * Constructor con parametros, de clase Usuario, utilizado para proceso de LogIn.
     * @param id identificador unico de Usuario
     * @param username alias de Usuario.
     * @param password contraseña.
     */
    public Usuario(int id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    /**
     * Constructor con parametros, de la clase Usuario. Recordar que id es generado por la bd.
     * @param username alias de Usuario.
     * @param password constraseña.
     * @param nombre nombre de Usuario.
     * @param apellido apellido de Usuario.
     * @param email email de Usuario.
     * @param tipo_usuario  tipo de Usuario creado.
     */
    public Usuario( String username, String password, String nombre, String apellido,String email, int tipo_usuario ){
        this.username = username;
        this.password = password;
        this.nombre = nombre;
        this.apellido = apellido;
        this.email = email;
        this.tipo_usuario = tipo_usuario;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getTipo_usuario() {
        return tipo_usuario;
    }

    public void setTipo_usuario(int tipo_usuario) {
        this.tipo_usuario = tipo_usuario;
    }
    
}
