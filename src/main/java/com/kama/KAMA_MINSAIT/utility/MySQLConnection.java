package com.kama.KAMA_MINSAIT.utility;

import com.mysql.cj.jdbc.Driver;
import java.sql.Connection;
import java.sql.DriverManager;

public class MySQLConnection {
    public static Connection getConnection(){

        String cadena="jdbc:mysql://kama-database.c0zepl1v9xct.us-east-1.rds.amazonaws.com:3306/KAMA";
        String user="admin";
        String password="D5b792ae8.020701";

        Connection conexion=null;
        try{
            DriverManager.registerDriver(new Driver()); //Que librería usará para conectarse? (que driver?)
            //Obteniendo conexion
            conexion=DriverManager.getConnection(cadena,user,password);
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
