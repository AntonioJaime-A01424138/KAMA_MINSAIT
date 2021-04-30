
package com.kama.KAMA_MINSAIT.dao;
import com.kama.KAMA_MINSAIT.model.Candidato;
import com.kama.KAMA_MINSAIT.utility.MySQLConnection;

import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

public class RegisterDao implements IRegisterDao{


    @Override
    public boolean createApplicant(Candidato candidato, String password) {
        System.out.println("entra create");

        String ins_sql = "Insert into Candidato(Nombre,Telefono,Correo,CURP,Estatus,Password) " +
                "values(?,?,?,?,?,SHA2(?,224))";
        String curp_sql = "Select count(*) from Candidato where CURP = ? or Correo =?";
        String id_sql = "Select idCandidato from Candidato where CURP = ? or Correo =?";


        try{
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement ps_curp = conexion.prepareStatement(curp_sql);

            ps_curp.setString(1,candidato.getCurp());
            ps_curp.setString(2, candidato.getCorreo());

            ResultSet rs_curp = ps_curp.executeQuery();

            if(rs_curp.next()){
                System.out.println(rs_curp.getInt(1));
                System.out.println("Coso antes de get int");
                if( rs_curp.getInt(1) >= 1){
                    System.out.println("Coso get int");
                    return false;
                }else{

                    PreparedStatement ps = conexion.prepareStatement(ins_sql);
                    System.out.println("Entre en esto");
                    ps.setString(1, candidato.getNombre());
                    ps.setString(2,candidato.getTelefono());
                    ps.setString(3,candidato.getCorreo());
                    ps.setString(4, candidato.getCurp());
                    ps.setInt(5,0);
                    System.out.println(candidato.getNombre() + " " + candidato.getTelefono() +" "+ candidato.getCorreo()+ " "+candidato.getCurp() + " "+candidato.getPassword());
                    ps.setString(6, candidato.getPassword());
                    System.out.println();

                    ps.executeUpdate();

                    //Para sacar el id
                    PreparedStatement ps_id = conexion.prepareStatement(id_sql);
                    ps_id.setString(1,candidato.getCurp());
                    ps_id.setString(2,candidato.getCorreo());

                    ResultSet rs_id = ps_id.executeQuery();

                    if(rs_id.next()){

                        System.out.println(rs_id.getInt(1));

                        //Puntajes
                        String puntaje_sql = "INSERT INTO PuntajesTotal (Candidato_idCandidato) VALUES (?)";
                        PreparedStatement ps_puntaje = conexion.prepareStatement(puntaje_sql);
                        ps_puntaje.setInt(1,rs_id.getInt(1));

                        ps_puntaje.executeUpdate();

                        //Formacion
                        String form_sql = "insert into FormacionAcademica (Formacion, Candidato_idCandidato) values (?,?)";
                        PreparedStatement ps_form = conexion.prepareStatement(form_sql);
                        ps_form.setString(1,candidato.getFormacion());
                        ps_form.setInt(2,rs_id.getInt(1));

                        ps_form.executeUpdate();
                        System.out.println("form");

                        //Area
                        String area_sql = "insert into AreasInteres (Candidato_idCandidato, AreaInteres) values (?,?)";
                        PreparedStatement ps_area = conexion.prepareStatement(area_sql);
                        ps_area.setInt(1,rs_id.getInt(1));
                        ps_area.setString(2,candidato.getArea());

                        ps_area.executeUpdate();
                        System.out.println("area");
                    }

                    return true;
                }
            }else{

                System.out.println("Repetido");
                return false;
            }

        }catch (Exception ex) {
            System.out.println(ex.getClass().getCanonicalName() + "-" + ex.getMessage());
            return false;
        }
    }
}