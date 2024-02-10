/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author User
 */
public class Usuarios {
    private int idUsuarios;
    private String User;
    private String Contrasenia;

    public Usuarios(int idUsuarios, String User, String Contrasenia) {
        this.idUsuarios = idUsuarios;
        this.User = User;
        this.Contrasenia = Contrasenia;
    }

    public int getIdUsuarios() {
        return idUsuarios;
    }

    public void setIdUsuarios(int idUsuarios) {
        this.idUsuarios = idUsuarios;
    }

    public String getUser() {
        return User;
    }

    public void setUser(String User) {
        this.User = User;
    }

    public String getContrasenia() {
        return Contrasenia;
    }

    public void setContrasenia(String Contrasenia) {
        this.Contrasenia = Contrasenia;
    }

    @Override
    public String toString() {
        return "Usuarios{" + "idUsuarios=" + idUsuarios + ", User=" + User + ", Contrasenia=" + Contrasenia + '}';
    }
    
    
}
