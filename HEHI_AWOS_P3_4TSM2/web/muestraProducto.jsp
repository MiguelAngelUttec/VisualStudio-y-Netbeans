<%-- 
    Document   : muestraTenis
    Created on : 11/11/2019, 09:01:08 PM
    Author     : lagui
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="Controlador.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="muestra.css" rel="stylesheet" type="text/css"/>
                
         <link  href="img/Logo.png"  rel="Shortcut icon"/>
        <title>Sneakers</title>
    </head>
   
    <body class="modi">
        <h1> Sneakers en Java </h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Marca</th>
                      <th>Modelo</th>
                        <th>Serie</th>
                          <th>Color</th>
                            <th>Autor</th>
                    <th>Año</th>
                    <th>Foto</th>
                </tr>
            </thead>
            <tbody>
                <%
                   Conexion db = new Conexion();
                   try{
                       PreparedStatement consulta = db.getConexion().prepareStatement("select * from producto");
                       ResultSet rs = consulta.executeQuery();
                       while(rs.next()){
                    %>
                
                
            <form method="post" action="ProductoServlet">
                <tr>
                   
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getString(3)%></td>
                    <td><%=rs.getString(4)%></td>
                    <td><%=rs.getString(5)%></td>
                    <td><%=rs.getString(6)%></td>
                  <td><%=rs.getString(7)%></td>
                  <td><%=rs.getString(8)%></td>                                                                         
                    <td> 
                        <img width="150" height="100" src="<%=rs.getString(9)%>"    
                    </td>
                    <td >
                    <input type="submit" class="btn" name="btE" value="Ver">
                    <input type="hidden"  name="txtid_producto" value=" <%= rs.getString(1)%>">
                </td>
                </tr>
               
                </form>
                
                <%
                    }
                    rs.close();
                    
                   }catch(SQLException e){
                  out.println("error" + e);
                     }

                   


                    %>
            </tbody>
        </table>
    <center>
                    <%--  <a href="altaTenis.jsp"> <input type="button" value="REGISTRAR OTRO"> </a> --%>
          <a href="https://localhost:44361/tercerparcial/java.aspx"> <input type="button" class="butt" value="Volver"> </a> 
    </center>
    </body>
</html>

