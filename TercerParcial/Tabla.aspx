<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tabla.aspx.cs" Inherits="BAHV_AWOS_P2_4TSM2.TercerParcial.Tabla" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <link  href="hola.jpg"  rel="Shortcut icon"/>
    
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="formulario.js"></script>
    <title>TABLA PRODUCTOS</title>
</head>
    <style>
        body{
  background-image: url(394862.jpg);
  background-size: 100vw 100vh;
  background-attachment: fixed;
  display: flex;
  min-height: 100vh;
}
        input{
  display: block;
  padding: 10px;
  width: 100%;
  margin: 30px 0;
  font-size: 20px;
}
input[type="button"]{
  background: linear-gradient(#FFDA63, #FFB940);
  border: 0;
  color: brown;
  opacity: 0.8;
  cursor: pointer;
  border-radius: 20px;
  margin-bottom: 0;
}
input[tyoe="button"]:hover{
  opacity: 1;
}
input[tyoe="button"]:active{
  transform: scale(0.95);
}
        table{
            background:rgba(0, 0, 0, 0.45);
            border:none;
            border-radius: 15px;
            color:white;
            font-size:30;
        }
        h1{
            color:white;
            background:rgba(0, 0, 0, 0.45);
        }
        a{
            text-decoration:none;
        }
    </style>
<body>
    <center>
    <form id="form1" runat="server">
        <div>
            
        <center>
        <h1>Acción realizada en C#</h1>&nbsp;
            <table id="productos" >
            <thead>
            <tr>
                 <th>Nombre</th>
                 <th>Marca</th>
                 <th>Codigo</th>
                 <th>Serie</th>
                 <th>Precio</th>
                 <th>Numero de productos</th>
                 <th>Área</th>
                 <th>Foto</th>
            </tr>
            </thead>
        </table>
            <a href="menu.aspx"> <input type="button" class="buttt" value="Volver" ></a>
        </center>
        </div>
    </form>
        </center>
</body>
</html>
