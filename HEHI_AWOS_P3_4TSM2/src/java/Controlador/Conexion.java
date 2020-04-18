package Controlador;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
     private final String URL = "jdbc:mysql://localhost:3306/"; // Ubicación de la BD.
    private final String BD = "producto"; // Nombre de la BD.
    private final String USER = "root"; //Aqui es si te pide contraseña en el servidor
    private final String PASSWORD = ""; //Aqui es si te pide contraseña en el servidor 
    
    private Connection cone = null; //Objeto Conectio
    
    public Conexion(){ //
        
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cone = DriverManager.getConnection(URL + BD, USER, PASSWORD); //da la URL + NOM_BASE ETC...
            if (cone != null) {
                System.out.println("¡Conexión Exitosa!");
            }
        } catch (ClassNotFoundException | SQLException e ) {
            System.out.println("ERROR REVISA SI ESTA BIEN LA CONTRASEÑA O LA BASE" + e);
        } //Catch
        
        
    } //cOSTRUCTOR

        public Connection getConexion(){
        return cone;
    }
    
    public static void main(String[] args) {
       Conexion db = new Conexion();
    }
    
} //class
