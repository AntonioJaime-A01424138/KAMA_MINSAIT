package com.kama.KAMA_MINSAIT.model;

import java.io.Serializable;
import java.sql.Date;
import java.sql.Time;

public class PuntajesTotal implements Serializable {
    private int idPuntajesTotal;
    private int PP_SolProb;
    private int PP_Etica;
    private int PP_TrabPres;
    private Date Fecha_Final;
    private Date Fecha_Inicio;
    private Time Hora_Final;
    private Time Hora_Inicio;

    public PuntajesTotal() {
    }

    public PuntajesTotal(int PP_SolProb, int PP_Etica, int PP_TrabPres, Date fecha_Final, Date fecha_Inicio, Time hora_Final, Time hora_Inicio) {
        this.PP_SolProb = PP_SolProb;
        this.PP_Etica = PP_Etica;
        this.PP_TrabPres = PP_TrabPres;
        this.Fecha_Final = fecha_Final;
        this.Fecha_Inicio = fecha_Inicio;
        this.Hora_Final = hora_Final;
        this.Hora_Inicio = hora_Inicio;
    }

    public int getIdPuntajesTotal() {
        return idPuntajesTotal;
    }

    public void setIdPuntajesTotal(int idPuntajesTotal) {
        this.idPuntajesTotal = idPuntajesTotal;
    }

    public int getPP_SolProb() {
        return PP_SolProb;
    }

    public void setPP_SolProb(int PP_SolProb) {
        this.PP_SolProb = PP_SolProb;
    }

    public int getPP_Etica() {
        return PP_Etica;
    }

    public void setPP_Etica(int PP_Etica) {
        this.PP_Etica = PP_Etica;
    }

    public int getPP_TrabPres() {
        return PP_TrabPres;
    }

    public void setPP_TrabPres(int PP_TrabPres) {
        this.PP_TrabPres = PP_TrabPres;
    }

    public Date getFecha_Final() {
        return Fecha_Final;
    }

    public void setFecha_Final(Date fecha_Final) {
        Fecha_Final = fecha_Final;
    }

    public Date getFecha_Inicio() {
        return Fecha_Inicio;
    }

    public void setFecha_Inicio(Date fecha_Inicio) {
        Fecha_Inicio = fecha_Inicio;
    }

    public Time getHora_Final() {
        return Hora_Final;
    }

    public void setHora_Final(Time hora_Final) {
        Hora_Final = hora_Final;
    }

    public Time getHora_Inicio() {
        return Hora_Inicio;
    }

    public void setHora_Inicio(Time hora_Inicio) {
        Hora_Inicio = hora_Inicio;
    }

    @Override
    public String toString() {
        return "PuntajesTotal{" +
                "idPuntajesTotal=" + idPuntajesTotal +
                ", PP_SolProb=" + PP_SolProb +
                ", PP_Etica=" + PP_Etica +
                ", PP_TrabPres=" + PP_TrabPres +
                ", Fecha_Final=" + Fecha_Final +
                ", Fecha_Inicio=" + Fecha_Inicio +
                ", Hora_Final=" + Hora_Final +
                ", Hora_Inicio=" + Hora_Inicio +
                '}';
    }
}
