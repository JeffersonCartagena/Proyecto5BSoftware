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
public class Documentos {
    private int idDoc;
    private String TipoDoc;
    private String nombreDoc;

    public Documentos(int idDoc, String TipoDoc, String nombreDoc) {
        this.idDoc = idDoc;
        this.TipoDoc = TipoDoc;
        this.nombreDoc = nombreDoc;
    }

    public int getIdDoc() {
        return idDoc;
    }

    public void setIdDoc(int idDoc) {
        this.idDoc = idDoc;
    }

    public String getTipoDoc() {
        return TipoDoc;
    }

    public void setTipoDoc(String TipoDoc) {
        this.TipoDoc = TipoDoc;
    }

    public String getNombreDoc() {
        return nombreDoc;
    }

    public void setNombreDoc(String nombreDoc) {
        this.nombreDoc = nombreDoc;
    }

    @Override
    public String toString() {
        return "Documentos{" + "idDoc=" + idDoc + ", TipoDoc=" + TipoDoc + ", nombreDoc=" + nombreDoc + '}';
    }
    
    
}
