/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.time.LocalDate;

/**
 *
 * @author User
 */
public class Estudiantes {
    private int idEstudiante;
    private String nombre;
    private String apellido;
    private LocalDate fechaNacimiento;
    private String lugarNacimiento;
    private String telefono;
    private String carrera;
    private String institucion;
    private boolean poseeDiscapacidad;

    public Estudiantes(int idEstudiante, String nombre, String apellido, LocalDate fechaNacimiento, String lugarNacimiento, String telefono, String carrera, String institucion, boolean poseeDiscapacidad) {
        this.idEstudiante = idEstudiante;
        this.nombre = nombre;
        this.apellido = apellido;
        this.fechaNacimiento = fechaNacimiento;
        this.lugarNacimiento = lugarNacimiento;
        this.telefono = telefono;
        this.carrera = carrera;
        this.institucion = institucion;
        this.poseeDiscapacidad = poseeDiscapacidad;
    }

    public int getIdEstudiante() {
        return idEstudiante;
    }

    public void setIdEstudiante(int idEstudiante) {
        this.idEstudiante = idEstudiante;
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

    public LocalDate getFechaNacimiento() {
        return fechaNacimiento;
    }

    public void setFechaNacimiento(LocalDate fechaNacimiento) {
        this.fechaNacimiento = fechaNacimiento;
    }

    public String getLugarNacimiento() {
        return lugarNacimiento;
    }

    public void setLugarNacimiento(String lugarNacimiento) {
        this.lugarNacimiento = lugarNacimiento;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public String getInstitucion() {
        return institucion;
    }

    public void setInstitucion(String institucion) {
        this.institucion = institucion;
    }

    public boolean isPoseeDiscapacidad() {
        return poseeDiscapacidad;
    }

    public void setPoseeDiscapacidad(boolean poseeDiscapacidad) {
        this.poseeDiscapacidad = poseeDiscapacidad;
    }

    @Override
    public String toString() {
        return "Estudiantes{" + "idEstudiante=" + idEstudiante + ", nombre=" + nombre + ", apellido=" + apellido + ", fechaNacimiento=" + fechaNacimiento + ", lugarNacimiento=" + lugarNacimiento + ", telefono=" + telefono + ", carrera=" + carrera + ", institucion=" + institucion + ", poseeDiscapacidad=" + poseeDiscapacidad + '}';
    }
    
    
}
