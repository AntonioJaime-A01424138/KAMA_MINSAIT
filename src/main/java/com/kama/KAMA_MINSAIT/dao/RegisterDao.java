
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
        String curp_sql = "Select count(*) from Candidato where Curp = ?";

        try{
            Connection conexion = MySQLConnection.getConnection();
            PreparedStatement ps_curp = conexion.prepareStatement(curp_sql);

            ps_curp.setString(1,candidato.getCurp());

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
                    System.out.println("Ejecute esto");
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