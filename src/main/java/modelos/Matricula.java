/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelos;

import java.util.*;

/**
 *
 * @author Luis
 */
public class Matricula {
    int codigo;
    Date fecha;
    String nroDoc;
    int codigoAlumno;
    double total;
    String estado;

    public Matricula() {
    }

    public Matricula(int codigo, Date fecha, String nroDoc, int codigoAlumno, double total, String estado) {
        this.codigo = codigo;
        this.fecha = fecha;
        this.nroDoc = nroDoc;
        this.codigoAlumno = codigoAlumno;
        this.total = total;
        this.estado = estado;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getNroDoc() {
        return nroDoc;
    }

    public void setNroDoc(String nroDoc) {
        this.nroDoc = nroDoc;
    }

    public int getCodigoAlumno() {
        return codigoAlumno;
    }

    public void setCodigoAlumno(int codigoAlumno) {
        this.codigoAlumno = codigoAlumno;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
    
    
    
    
}
