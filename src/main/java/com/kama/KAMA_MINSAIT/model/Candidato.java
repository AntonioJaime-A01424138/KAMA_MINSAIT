package com.kama.KAMA_MINSAIT.model;

import java.io.Serializable;

public class Candidato implements Serializable {
    private int idCandidato;
    private String nombre;
    private String telefono;
    private String correo;
    private String curp;
    private int estatus;
    private String password;
    private String formacion;
    private String area;

    public Candidato() {
    }

    public Candidato(String nombre, String telefono, String correo, String curp, int estatus, String password, String formacion, String area) {
        this.nombre = nombre;
        this.telefono = telefono;
        this.correo = correo;
        this.curp = curp;
        this.estatus = estatus;
        this.password = password;
        this.formacion = formacion;
        this.area = area;
    }

    public int getIdCandidato() {
        return idCandidato;
    }

    public void setIdCandidato(int idCandidato) {
        this.idCandidato = idCandidato;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    public int getEstatus() {
        return estatus;
    }

    public void setEstatus(int estatus) {
        this.estatus = estatus;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "Candidato{" +
                "idCandidato=" + idCandidato +
                ", nombre='" + nombre + '\'' +
                ", telefono=" + telefono +
                ", correo='" + correo + '\'' +
                ", curp='" + curp + '\'' +
                ", estatus=" + estatus + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public String getFormacion() {
        return formacion;
    }

    public void setFormacion(String formacion) {
        this.formacion = formacion;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }
}
