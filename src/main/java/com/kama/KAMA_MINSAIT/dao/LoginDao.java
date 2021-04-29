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

                String id_sql = "Select idCandidato from Candidato where Curp = ? or Correo =?";
                //Para sacar el id
                PreparedStatement ps_id = conexion.prepareStatement(id_sql);
                ps_id.setString(1,candidato.getCurp());
                ps_id.setString(2,candidato.getCorreo());

                ResultSet rs_id = ps_id.executeQuery();

                if(rs_id.next()){

                    //Area de interes
                    String area_sql = "Select AreaInteres from areasinteres where Candidato_idCandidato = ?";
                    PreparedStatement ps_area = conexion.prepareStatement(area_sql);
                    ps_area.setInt(1,rs_id.getInt(1));
                    ResultSet rs_area = ps_area.executeQuery();
                    if(rs_area.next()){
                        candidato.setArea(rs_area.getString(1));
                    }

                    //Formacion

                    String form_sql = "Select Formacion from formacionacademica where Candidato_idCandidato = ?";
                    PreparedStatement ps_form = conexion.prepareStatement(form_sql);
                    ps_form.setInt(1,rs_id.getInt(1));
                    ResultSet rs_form = ps_form.executeQuery();
                    if(rs_form.next()){
                        candidato.setFormacion(rs_form.getString(1));
                    }
                }

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
