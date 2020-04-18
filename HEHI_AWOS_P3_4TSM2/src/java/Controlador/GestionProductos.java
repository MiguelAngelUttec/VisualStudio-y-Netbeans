/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author lagui
 */
public class GestionProductos extends Conexion {
    
 String sql;
 public GestionProductos(){
                super();
            }    
  public ArrayList<Productos> listadonombre(){
    ArrayList<Productos> productos = new ArrayList();
    try{
        String sql= "select id_producto,nombre from producto order by nombre";
       PreparedStatement consulta  = getConexion().prepareStatement(sql);
        ResultSet rs = consulta.executeQuery();
        while(rs.next()){
        productos.add(new Productos(rs.getString(1),rs.getString("nombre")));
        /*
        clases con mayuscula 
        */
        }
        rs.close();
        getConexion().close();
    }catch(SQLException e){
        System.out.println("error" + e);
    }
    return productos;
    }
  public ArrayList<Productos> listadotodo(){
    ArrayList<Productos> productos = new ArrayList();
    try{
        String sql= "select * from producto ";
       PreparedStatement consulta  = getConexion().prepareStatement(sql);
        ResultSet rs = consulta.executeQuery();
        while(rs.next()){
        productos.add(new Productos(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9)));
        /*
        clases con mayuscula 
        */
        }
        rs.close();
        getConexion().close();
    }catch(SQLException e){
        System.out.println("error" + e);
    }
    return productos;
    }
   public ArrayList<Productos> listadoid(String id_producto){
    ArrayList<Productos> productos = new ArrayList();
    try{
        String sql= "select * from producto where id_producto=?";
       PreparedStatement consulta  = getConexion().prepareStatement(sql);
       consulta.setString(1, id_producto);
       ResultSet rs = consulta.executeQuery();
        if(rs.next()){
        productos.add(new Productos(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9)));
        /*
        clases con mayuscula 
        */
        }
        rs.close();
        getConexion().close();
    }catch(SQLException e){
        System.out.println("error" + e);
    }
    return productos;
    }
            public boolean altapro(Productos g){
    boolean b=false;
    sql="insert into producto value(null,?,?,?,?,?,?,?,?)";
    try{
        PreparedStatement alta = getConexion().prepareStatement(sql);
        alta.setString(1, g.getNombre());
        alta.setString(2, g.getMarca());
            alta.setString(3, g.getCodigo());
            alta.setString(4, g.getSerie());
            alta.setString(5, g.getPrecio());
            alta.setString(6, g.getNproductos());
            alta.setString(7, g.getArea());
            alta.setString(8, g.getFoto());
      
         /* alta.execute() para solo un delete 
          alta.executeQuery() para un select
          alta.executeUpdate es para un insert, update
          */
         alta.executeUpdate();
         b=true;
         getConexion().close();
    }catch(SQLException e){
        System.out.println("Error" + e);
    }
    return b;
}//altacanciones
            
                
public Productos mostrarproductos(String id_producto){
    Productos g = null;
    try{
        sql="select * from producto where id_producto=?";
        PreparedStatement consulta = 
            getConexion().prepareStatement(sql);
        consulta.setString(1, id_producto);
       ResultSet rs=consulta.executeQuery();
        if(rs.next()){
            g = new Productos();
             g.setId_producto(rs.getString(1));
               g.setNombre(rs.getString(2));
                    g.setMarca(rs.getString(3));
                    g.setCodigo(rs.getString(4));
                    g.setSerie(rs.getString(5));
                    g.setPrecio(rs.getString(6));
                    g.setNproductos(rs.getString(7));
                    g.setArea(rs.getString(8));
                    g.setFoto(rs.getString(9));
        }// if
        rs.close();
        getConexion().close();
    }catch(SQLException e){
        System.out.println("error" + e);
    }//catch
      return g;
}//mostrar
public boolean eliminarpro(String id_producto){
   boolean b=false;
   try{
       sql ="delete from producto where id_producto="+id_producto;
       Statement borrar = 
               getConexion().createStatement();
        borrar.executeUpdate(sql);
        b=true;
          }catch(SQLException e){
       System.out.println("error " +e);
   }
   try{
   getConexion().close();
   }catch(SQLException e){}
   return b;
}//eliminar


public boolean modificarpro(Productos g){
   boolean b=false;
   sql="update producto set nombre=?, "
           + " marca=?, "
           + " codigo=?, "
           + " serie=?, "
           + " precio=?, "
           + " nproductos=?, "
           + " area=?, "
           + " foto=? "
           + " where id_producto = ?";
   try{
       PreparedStatement alta = getConexion().prepareStatement(sql);
        alta.setString(1, g.getNombre());
            alta.setString(2, g.getMarca());
            alta.setString(3, g.getCodigo());
            alta.setString(4, g.getSerie());
            alta.setString(5, g.getPrecio());
            alta.setString(6, g.getNproductos());
            alta.setString(7, g.getArea());
            alta.setString(8, g.getFoto());
             alta.setString(9, g.getId_producto());
     /*  alta.execute() delete
         alta.executeQuery() select
       alta.executeUpdate insert, update
     */  
       
       alta.executeUpdate();
      b=true;
      getConexion().close();
      
   }catch(SQLException e){
       System.out.println("ERROR " + e);
   }
   
   
   
   return b;
}

       
     
       /*
       g.setTitulo("xxxx");
       g.setArtista("xxx");
       g.setUrl("xxx");
       g.setImg("xxxx");
     
       if (comi.altacanciones(g))
           System.out.println("alta");
       else 
           System.out.println("error al registrar");
            }
*/
   /*
       
       g = comi.mostrarCancion("3");
     
       if (g!=null)
           System.out.println("La cancion se llama " + g.getTitulo());
       else 
           System.out.println("no existe");
*/
   /*
       g = comi.mostrartodo();
     
       if (g!=null)
            System.out.println("La cancion se llama " + g.getTitulo() + ("  ") +g.getArtista());
       else 
           System.out.println("no existe");
       

   *(
   /*
       if (comi.eleminarCancion("10"))
           System.out.println("Borrado");
       else 
           System.out.println("no existe");
       */
}//GestionRepro
