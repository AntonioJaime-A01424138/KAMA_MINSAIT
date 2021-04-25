package com.kama.KAMA_MINSAIT.dao;
import com.kama.KAMA_MINSAIT.model.Candidato;
import com.kama.KAMA_MINSAIT.model.UsuarioMinsait;
import com.kama.KAMA_MINSAIT.utility.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao implements ILoginDao{

    @Override
    public String getUserType(String email) {
        String sqlCandidato = "SELECT COUNT(idCandidato) as conteo FROM Candidato WHERE Correo = ?";
        String sqlUsuarioMinsait = "SELECT COUNT(idUsuariominsait) as conteo FROM Usuariominsait WHERE Correo = ?";

        try{
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement psMinsait = conexion.prepareStatement(sqlUsuarioMinsait);
            psMinsait.setString(1, email);

            ResultSet rsMinsait = psMinsait.executeQuery();

            if(rsMinsait.next()){
                switch (rsMinsait.getInt("conteo")){
                    case 1:
                        return "UsuarioMinsait";

                    case 0:
                        PreparedStatement psCandidato = conexion.prepareStatement(sqlCandidato);
                        psCandidato.setString(1, email);

                        ResultSet rsCandidato = psCandidato.executeQuery();

                        if(rsCandidato.next()){
                            switch (rsCandidato.getInt("conteo")){
                                case 1:
                                    return "Candidato";
                                default:
                                    return "";
                            }
                        }


                    default:
                        return "";
                }
            }
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        return "";
    }

    @Override
    public Candidato verificaCandidato(String email, String password) {
        String sql = "SELECT idCandidato, Nombre, Telefono, Correo, CURP, Estatus, Password FROM Candidato WHERE Correo = ? AND Password = SHA2(?,224)";
        Candidato candidato = null;
        try{
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement preparedStatement = conexion.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                candidato = new Candidato();
                candidato.setIdCandidato(resultSet.getInt("idCandidato"));
                candidato.setNombre(resultSet.getString("Nombre"));
                candidato.setTelefono(resultSet.getString("Telefono"));
                candidato.setCorreo(resultSet.getString("Correo"));
                candidato.setCurp(resultSet.getString("CURP"));
                candidato.setEstatus(resultSet.getInt("Estatus"));
                candidato.setPassword(resultSet.getString("Password"));

            }
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        return candidato;
    }

    @Override
    public UsuarioMinsait verificaUsuarioMinsait(String email, String password) {
        String sql = "SELECT idUsuariominsait, Nombre, Telefono, Puesto, Password, Correo FROM Usuariominsait WHERE Correo = ? AND Password = SHA2(?,224)";
        UsuarioMinsait usuarioMinsait = null;
        try{
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement preparedStatement = conexion.prepareStatement(sql);
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

            ResultSet resultSet = preparedStatement.executeQuery();
            if(resultSet.next()){
                usuarioMinsait = new UsuarioMinsait();
                usuarioMinsait.setIdUsuarioMinsait(resultSet.getInt("idUsuariominsait"));
                usuarioMinsait.setNombre(resultSet.getString("Nombre"));
                usuarioMinsait.setTelefono(resultSet.getInt("Telefono"));
                usuarioMinsait.setCorreo(resultSet.getString("Puesto"));
                usuarioMinsait.setPassword(resultSet.getString("Password"));
                usuarioMinsait.setCorreo(resultSet.getString("Correo"));
            }
        }catch(Exception ex){
            System.out.println(ex.getMessage());
        }
        return usuarioMinsait;
    }
}
