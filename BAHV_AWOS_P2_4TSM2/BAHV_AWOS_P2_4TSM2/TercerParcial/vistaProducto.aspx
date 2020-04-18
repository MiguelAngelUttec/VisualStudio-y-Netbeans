<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="vistaProducto.aspx.cs" Inherits="BAHV_AWOS_P2_4TSM2.Tercer_Parcial.vistaAlimento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
   <link  href="hola.jpg"  rel="Shortcut icon"/>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <title>Listado de alimentos</title>
     <style>
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

a{
color:white;
text-decoration:none;
}
h2{
    color:white;
}
    </style>
</head>
<body>
    <center>
        <div style="background:rgba(0, 0, 0, 0.67)">
     <h1>Observando alimentos con C#</h1>&nbsp;
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </div>
</body>
        <a href="menu.aspx"> <input type="button" class="buttt" value="Volver"></a>
     </center>
</html>