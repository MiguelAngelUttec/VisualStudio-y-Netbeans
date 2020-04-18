using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace BAHV_AWOS_P2_4TSM2.Formularios
{
    public class Conexion
    {

        static MySqlConnection con;
        public static MySqlConnection probarConexion()
        {

            String servidor = "localhost";
            String puerto = "3306";
            String usuario = "root";
            String password = "";
            String database = "producto";

            //cadena de conexion
            //String cadenaConexion = "server=" + servidor+";port=" + puerto
            //String cadenaConexion = "server=localhost;puerto=3306;user id=root;"
            String cadenaConexion = String.Format("server={0};" + "port={1};" + "user id={2};" + "password={3};" + "database={4}", servidor, puerto, usuario, password, database);
            con = new MySqlConnection(cadenaConexion);
            con.Open();
            if (con.State == System.Data.ConnectionState.Open)
            {
                return con;
            }
            else
            {
                return null;


            }
        }
        public static void cerrarConexion()
        {
            con.Close();
        }
    }
}//name