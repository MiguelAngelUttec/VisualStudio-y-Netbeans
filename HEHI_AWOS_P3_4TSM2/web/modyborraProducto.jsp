<%-- 
    Document   : modyborratenis
    Created on : 11/11/2019, 09:01:16 PM
    Author     : lagui
--%>

<%@page import="Controlador.Productos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%!
   private String id_producto;
    private String nombre;
    private String marca;
    private String codigo;
    private String serie;
    private String precio;
    private String nproductos;
    private String area;
    private String foto;
   Productos productos;
%>
<%
    if (request.getAttribute("producto") != null) {
        productos = (Productos) request.getAttribute("tenis"
                + ""
                + ""
                + ""
                + "");
        nombre = productos.getNombre();
      id_producto = productos.getId_producto();
      marca = productos.getMarca();
      codigo = productos.getCodigo();
      serie = productos.getSerie();
      precio = productos.getPrecio();
      nproductos = productos.getNproductos();
      area= productos.getArea();
      foto = productos.getFoto();

    } else {
       nombre = "";
      id_producto = "";
      marca = "";
      codigo = "";
      serie = "";
      precio = "";
      nproductos = "";
      area = "";
      foto = "";
    }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
              
         <link  href="img/Logo.png"  rel="Shortcut icon"/>
              <title>Modifica Sneakers</title>
       <link href="tab.css" rel="stylesheet" type="text/css"/>
    </head>
    <body class="prro">
        <form action="TenisServlet" method="post" >
            
         <h1>El mundo de los tenis</h1>
  
        <table border="0">
           
               
                <tr>
                    <th>
                        <label>Nombre</label>
                    </th>
                    <th>
                        <input type="Text"  value="<%=nombre%>" name="txtnombre"  placeholder="Ejemplo: AirMax" >
                        <input type="hidden"  value="<%=id_producto%>" name="txtid_tenis">
                    </th>
                </tr>
                <tr>
                    <th>
                        <label>Marca</label>
                    </th>
                    <th>
                        <input type="Text"    value="<%=marca%>" name="txtmarca" placeholder="Ejemplo: Jordan "
                               autofocus >
                    </th>
                </tr>
                <tr>
                    <th>
                        <label>Modelo</label>
                    </th>
                    <th>
                        <input type="Text"  value="<%=codigo%>"  name="txtmodelo" placeholder="Ejemplo: 2019" >
                    </th>
                </tr>
                
                <tr>
                    <th>
                        <label>Serie</label>
                    </th>
                    <th>
                        <input type="Text"  name="txtserie"  value="<%=serie%>" placeholder="Ejemplo: 2519"
                               autofocus >
                    </th>
                </tr>
                <tr>
                    <th>
                        <label>Color</label>
                    </th>
                    <th>
                        <input type="Text" name="txtcolor"  value="<%=precio%>" placeholder="Ejemplo: Off-white" >
                       
                    </th>
                </tr>
                <tr>
                    <th>
                        <label>Autor</label>
                    </th>
                    <th>
                        <input type="Text" name="txtautor"  value="<%=nproductos%>" placeholder="Ejemplo: Deportivo"
                               autofocus >
                    </th>
                </tr>
                <tr>
                    <th>
                        <label>Año</label>
                    </th>
                    <th>
                        <input type="Text"  name="txtanio"   value="<%=area%>" placeholder="Ejemplo: Sintetica" >
                    </th>
                </tr>
                <tr>
                    <th>
                        <label>Foto</label>
                    </th>
                    <th>
                        <input type="Text" name="txtfoto"  value="<%=foto%>" placeholder="Ejemplo: Rojo"
                               autofocus >
                    </th>
                </tr>               
                
                <tr>
                
                    <td colspan="2" >
                        <center>
                            <input type="submit" class="btne"value="Modificar" name="btE">
                        </center>
                    </td>
                </tr>
           
        </table>
                               <center>
                                   <a href="muestraTenis.jsp"> <input type="button" class="butt" value="Volver"> </a> 
 </center>
        </form>
    </body>
    
</html>

