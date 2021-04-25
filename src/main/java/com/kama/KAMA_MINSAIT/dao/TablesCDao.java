package com.kama.KAMA_MINSAIT.dao;

import com.kama.KAMA_MINSAIT.model.Candidato;
import com.kama.KAMA_MINSAIT.model.PuntajesTotal;
import com.kama.KAMA_MINSAIT.utility.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class TablesCDao implements ITablesCDao {
    @Override
    public List<Candidato> obtenerLista() {
        List<Candidato> listaCandidatos = new ArrayList<>();
        String candidatoquery = "Select * FROM Candidato";

        try {
            Connection connection = MySQLConnection.getConnection();
            PreparedStatement cuentaPS = connection.prepareStatement(candidatoquery);
            ResultSet cuentaRS = cuentaPS.executeQuery();
            while (cuentaRS.next()) {

                Candidato ElCandidato = new Candidato();
                ElCandidato.setIdCandidato(cuentaRS.getInt("idCandidato"));
                ElCandidato.setNombre(cuentaRS.getString("Nombre"));
                ElCandidato.setTelefono(cuentaRS.getString("Telefono"));
                ElCandidato.setCorreo(cuentaRS.getString("Correo"));
                ElCandidato.setCurp(cuentaRS.getString("CURP"));
                ElCandidato.setEstatus(cuentaRS.getInt("Estatus"));
                listaCandidatos.add(ElCandidato);
            }
            connection.close();
            return listaCandidatos;

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return null;
    }

    @Override
    public Candidato obtenerCandidato(int idCandidato) {
        Candidato ElCandidato = null;
        String candidatoquery = "Select * FROM Candidato WHERE idCandidato = ?";

        try {
            Connection connection = MySQLConnection.getConnection();
            PreparedStatement cuentaPS = connection.prepareStatement(candidatoquery);
            cuentaPS.setInt(1,idCandidato);
            ResultSet cuentaRS = cuentaPS.executeQuery();
            if (cuentaRS.next()) {
                ElCandidato = new Candidato();
                ElCandidato.setIdCandidato(cuentaRS.getInt("idCandidato"));
                ElCandidato.setNombre(cuentaRS.getString("Nombre"));
                ElCandidato.setTelefono(cuentaRS.getString("Telefono"));
                ElCandidato.setCorreo(cuentaRS.getString("Correo"));
                ElCandidato.setCurp(cuentaRS.getString("CURP"));
                ElCandidato.setEstatus(cuentaRS.getInt("Estatus"));
            }
            connection.close();

        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
        return ElCandidato;
    }

    @Override
    public PuntajesTotal obtenerPuntajeCandidato(int idCandidato) {
        PuntajesTotal puntaje = null;
        String puntajequery = "SELECT * FROM PuntajesTotal WHERE Candidato_idCandidato = ?";

        try{
            Connection connection = MySQLConnection.getConnection();
            PreparedStatement puntosPS= connection. prepareStatement(puntajequery);
            puntosPS.setInt(1,idCandidato);
            ResultSet puntosRS= puntosPS.executeQuery();
            if (puntosRS.next()){
                puntaje = new PuntajesTotal();
                puntaje.setIdPuntajesTotal(puntosRS.getInt("idPuntajesTotal"));
                puntaje.setPP_SolProb(puntosRS.getInt("PP_SolProb"));
                puntaje.setPP_Etica(puntosRS.getInt("PP_Etica"));
                puntaje.setPP_TrabPres(puntosRS.getInt("PP_TrabPres"));
                puntaje.setFecha_Final(puntosRS.getDate("Fecha_Final"));
                puntaje.setFecha_Inicio(puntosRS.getDate("Fecha_Inicio"));
                puntaje.setHora_Inicio(puntosRS.getTime("Hora_Inicio"));
                puntaje.setHora_Final(puntosRS.getTime("Hora_Final"));
            }

        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }

        return puntaje;
    }
}
