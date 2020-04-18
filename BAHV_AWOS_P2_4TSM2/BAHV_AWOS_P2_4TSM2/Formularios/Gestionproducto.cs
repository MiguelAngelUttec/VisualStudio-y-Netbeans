using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Data;
using System.Web.Script.Serialization;

namespace BAHV_AWOS_P2_4TSM2.Formularios
{
    public class Gestionproducto
    {


        public static String borrarProducto(String id_producto)
        {

            String sql = String.Format("delete from producto where id_producto={0}", id_producto);
            Console.Write(sql);
            return sql;
        }
        public static String borra(String id_producto)
        {
            String sql = String.Format("delete from producto where id_producto={0}", id_producto);
            MySqlCommand cmd = new MySqlCommand(sql, Conexion.probarConexion());
            cmd.ExecuteNonQuery();
            Conexion.cerrarConexion();

            return sql;
        }
        public static string altaProducto(Producto g)
        {
            string c = "error";
            try
            {
                String sql = string.Format("insert into producto values(null,'{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')", g.id_producto, g.nombre, g.marca, g.codigo, g.serie, g.precio, g.nproductos, g.area, g.foto); //los numeros no llevan comilla simples
                MySqlCommand cmd = new MySqlCommand(sql, Conexion.probarConexion());
                cmd.ExecuteNonQuery();//sentencias que no sean consultas insert update delete
                c = "Producto  Registrado";
                Conexion.cerrarConexion();
            }
            catch (System.Data.SqlClient.SqlException exsql)
            {
                c = exsql.ToString();
            }
            catch (Exception e)
            {
                Console.Write(e);
            }
            return c;
        }//alta 1  
        public static string modificate(Producto g)
        {
            string c = "error al modificar";
            
            try
            {
                string sql = string.Format("update producto set nombre='{1}',marca='{2}',codigo='{3}',serie='{4}',precio='{5}',nproductos='{6}',area='{7}',foto='{8}' where id_producto={0})", g.id_producto, g.nombre, g.marca, g.codigo, g.serie, g.precio, g.nproductos, g.area, g.foto);
                MySqlCommand cmd = new MySqlCommand(sql, Conexion.probarConexion());
                cmd.ExecuteNonQuery();
                c = "Producto modificado";
                Conexion.cerrarConexion();
            }
            catch (System.Data.SqlClient.SqlException exsql)
            {
                c = exsql.ToString();
            }
            catch (Exception e)
            {
                Console.Write(e);
            }

            return c;
        }//modificar
        public static string modProducto(Producto g)
        {
            string c = "error al modificar";
            string sql = string.Format("update producto set nombre='{1}',marca='{2}',codigo='{3}',serie='{4}',precio='{5}',nproductos='{6}',area='{7}',foto='{8}' where id_producto={0}", g.id_producto, g.nombre, g.marca, g.codigo, g.serie, g.precio, g.nproductos, g.area, g.foto); //los numeros no llevan comilla simples
            MySqlCommand cmd = new MySqlCommand(sql, Conexion.probarConexion());
            cmd.ExecuteNonQuery();
            c = "Producto modificado";
            Conexion.cerrarConexion();
            return c;
        }//modificar


        public static DataTable consulta()
        {
            DataTable dt;
            MySqlDataAdapter da;
            string sql = "select * from producto";
            MySqlCommand cmd = new MySqlCommand(sql, Conexion.probarConexion());

            dt = new DataTable();
            da = new MySqlDataAdapter(cmd);
            da.Fill(dt);
            Conexion.cerrarConexion();
            return dt;
        }//consulta

        public static List<Producto> consulta2()
        {
            List<Producto> producto = new List<Producto>();
            String sql = "select * from producto";
            MySqlCommand cmd = new MySqlCommand(sql, Conexion.probarConexion());
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
                producto.Add(new Producto
                {

                    id_producto = reader.GetString(0),
                    nombre = reader.GetString(1),
                    marca = reader.GetString(2),
                    codigo = reader.GetString(3),
                    serie = reader.GetString(4),
                    precio = reader.GetString(5),
                    nproductos = reader.GetString(6),
                    area = reader.GetString(7),
                    foto = reader.GetString(8)
                });
            Conexion.cerrarConexion();
            return producto;
        }//consulta 2
         

        public static Producto busca2(string id_producto)
        {
            Producto producto;
            String sql = String.Format("Select * from producto where id_producto={0}", id_producto);
            MySqlCommand cmd = new MySqlCommand(sql, Conexion.probarConexion());
            MySqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
                producto = new Producto
                {

                    id_producto = reader.GetString(0),
                    nombre = reader.GetString(1),
                    marca = reader.GetString(2),
                    codigo = reader.GetString(3),
                    serie = reader.GetString(4),
                    precio = reader.GetString(5),
                    nproductos = reader.GetString(6),
                    area = reader.GetString(7),
                    foto = reader.GetString(8)
                };
            else
                producto = null;
            Conexion.cerrarConexion();
            return producto;
        }//buscador sin lista

        public static String eliminar(String id_producto)
        {
            string c = "error";
            try
            {
                String sql;
                sql = string.Format("delete from producto where id_producto =" + id_producto);
                MySqlCommand cmd = new MySqlCommand(sql, Conexion.probarConexion());
                cmd.ExecuteNonQuery();//sentencias que no sean consultas insert update delete
                c = "Producto eliminado";
                Conexion.cerrarConexion();
            }
            catch (System.Data.SqlClient.SqlException exsql)
            {
                c = exsql.ToString();
            }
            catch (Exception e)
            {
                Console.Write(e);
            }
            return c;
        }
        private List<Producto> SetListaCliente(DataTable dt)
        {

            List<Producto> Producto = new List<Producto>();
            foreach (DataRow r in dt.Rows)
            {
                Producto lineaGato = new Producto
                {
                    id_producto = r[0].ToString(),
                    nombre = r[1].ToString(),
                    marca = r[2].ToString(),
                    codigo = r[3].ToString(),
                    serie = r[4].ToString(),
                    precio = r[5].ToString(),
                    nproductos = r[6].ToString(),
                    area = r[7].ToString(),
                    foto = r[8].ToString()
                };
                Producto.Add(lineaGato);

            }
            return Producto;
        }//setlistacliente

        public string GetCliente()
        {
            string resultado = string.Empty;
            DataTable dt = new DataTable();
            dt = consulta();
            List<Producto> producto = new List<Producto>();
            if (dt.Rows.Count == 0)
            {
                return resultado;

            }
            else
            {
                producto = SetListaCliente(dt);
                resultado = new JavaScriptSerializer().Serialize(producto);
            }
            return resultado;
        }

    }
}//namespace