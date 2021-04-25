package com.kama.KAMA_MINSAIT.model;

public class UsuarioMinsait {
    private int idUsuarioMinsait;
    private String nombre;
    private int telefono;
    private String correo;
    private String puesto;
    private String password;

    public UsuarioMinsait() {
    }

    public UsuarioMinsait(String nombre, int telefono, String correo, String puesto, String password) {
        this.nombre = nombre;
        this.telefono = telefono;
        this.correo = correo;
        this.puesto = puesto;
        this.password = password;
    }

    public int getIdUsuarioMinsait() {
        return idUsuarioMinsait;
    }

    public void setIdUsuarioMinsait(int idUsuarioMinsait) {
        this.idUsuarioMinsait = idUsuarioMinsait;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPuesto() {
        return puesto;
    }

    public void setPuesto(String puesto) {
        this.puesto = puesto;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Override
    public String toString() {
        return "UsuarioMinsait{" +
                "idUsuarioMinsait=" + idUsuarioMinsait +
                ", nombre='" + nombre + '\'' +
                ", telefono=" + telefono +
                ", correo='" + correo + '\'' +
                ", puesto='" + puesto + '\'' +
                ", password='" + password + '\'' +
                '}';
    }
}
