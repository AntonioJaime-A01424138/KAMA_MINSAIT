package com.kama.KAMA_MINSAIT.utility;

import com.mysql.cj.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLConnection {
    public static Connection getConnection(){

        String cadena="jdbc:mysql://localhost:3306/KAMA?user=root";

        Connection conexion=null;
        try{
            DriverManager.registerDriver(new Driver()); //Que librería usará para conectarse? (que driver?)
            //Obteniendo conexion
            conexion=DriverManager.getConnection(cadena);
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
        return conexion;
    }

    public static void main(String[] args) {
        try{
            Connection conexion = MySQLConnection.getConnection();
            if(conexion !=null){
                System.out.println("Se conectó");
            }
            else{
                System.out.println("No se conectó");
            }
        }catch (Exception ex){
            System.out.println(ex.getMessage());
        }
    }
}
