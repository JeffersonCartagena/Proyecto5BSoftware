/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.util.Date;

/**
 *
 * @author User
 */
public class Becas {
    private int idBacas;
     private String idEstudiantes;
      private String idDocentes;
       private String documento1;
        private String docuemento2;
         private String documento3;
          private String observaciones;
           private Date  fecha;

    public Becas(int idBacas, String idEstudiantes, String idDocentes, String documento1, String docuemento2, String documento3, String observaciones, Date fecha) {
        this.idBacas = idBacas;
        this.idEstudiantes = idEstudiantes;
        this.idDocentes = idDocentes;
        this.documento1 = documento1;
        this.docuemento2 = docuemento2;
        this.documento3 = documento3;
        this.observaciones = observaciones;
        this.fecha = fecha;
    }

    public int getIdBacas() {
        return idBacas;
    }

    public void setIdBacas(int idBacas) {
        this.idBacas = idBacas;
    }

    public String getIdEstudiantes() {
        return idEstudiantes;
    }

    public void setIdEstudiantes(String idEstudiantes) {
        this.idEstudiantes = idEstudiantes;
    }

    public String getIdDocentes() {
        return idDocentes;
    }

    public void setIdDocentes(String idDocentes) {
        this.idDocentes = idDocentes;
    }

    public String getDocumento1() {
        return documento1;
    }

    public void setDocumento1(String documento1) {
        this.documento1 = documento1;
    }

    public String getDocuemento2() {
        return docuemento2;
    }

    public void setDocuemento2(String docuemento2) {
        this.docuemento2 = docuemento2;
    }

    public String getDocumento3() {
        return documento3;
    }

    public void setDocumento3(String documento3) {
        this.documento3 = documento3;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    @Override
    public String toString() {
        return "Becas{" + "idBacas=" + idBacas + ", idEstudiantes=" + idEstudiantes + ", idDocentes=" + idDocentes + ", documento1=" + documento1 + ", docuemento2=" + docuemento2 + ", documento3=" + documento3 + ", observaciones=" + observaciones + ", fecha=" + fecha + '}';
    }
           
           
}
