<%-- 
    Document   : altaTenis
    Created on : 11/11/2019, 09:00:48 PM
    Author     : lagui
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            
              <link href="img1.jpg"  rel="Shortcut icon"/>
            
       <link href="tab.css" rel="stylesheet" type="text/css"/>
        <title>Registra</title>
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
                        <input type="Text" name="txtnombre"  placeholder="Ejemplo: AirMax" >
                        <input type="hidden"  name="txtid_tenis">
                    </th>
                </tr>
                <tr>
                    <th>
                        <label>Marca</label>
                    </th>
                    <th>
                        <input type="Text"  name="txtmarca" placeholder="Ejemplo: Jordan "
                               autofocus >
                    </th>
                </tr>
                <tr>
                    <th>
                        <label>Modelo</label>
                    </th>
                    <th>
                        <input type="Text"  name="txtmodelo" placeholder="Ejemplo: 2019" >
                    </th>
                </tr>
                
                <tr>
                    <th>
                        <label>Serie</label>
                    </th>
                    <th>
                        <input type="Text"  name="txtserie" placeholder="Ejemplo: 2519"
                               autofocus >
                    </th>
                </tr>
                <tr>
                    <th>
                        <label>Color</label>
                    </th>
                    <th>
                        <input type="Text" name="txtcolor" placeholder="Ejemplo: Off-white" >
                       
                    </th>
                </tr>
                <tr>
                    <th>
                        <label>Autor</label>
                    </th>
                    <th>
                        <input type="Text" name="txtautor" placeholder="Ejemplo: Deportivo"
                               autofocus >
                    </th>
                </tr>
                <tr>
                    <th>
                        <label>Año</label>
                    </th>
                    <th>
                        <input type="Text"  name="txtanio" placeholder="Ejemplo: Sintetica" >
                    </th>
                </tr>
                <tr>
                    <th>
                        <label>Foto</label>
                    </th>
                    <th>
                        <input type="Text" name="txtfoto" placeholder="Ejemplo: Rojo"
                               autofocus >
                    </th>
                </tr>
               
                
                
                
                <tr>
                
                    <td style="background: pink" colspan="2" >
                <center>
                        <input type="submit" value="Alta" name="btE">
                        <input type="submit" value="Eliminar" name="btE">
                        <input type="submit" value="Modificar" name="btE">
                        
                        </center>
                    </td>
                </tr>
           
        </table>

        </form>
    </body>
   
</html>