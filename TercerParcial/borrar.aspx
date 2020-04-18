<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="borrar.aspx.cs" Inherits="BAHV_AWOS_P2_4TSM2.Tercer_Parcial.borrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link  href="hola.jpg"  rel="Shortcut icon"/>
    <link href="style.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Borrar Producto</title>
</head>
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
.lol{
    background:rgba(0, 0, 0, 0.65)
}
    </style>
<body>
    <center>
    <div class="home-box">
        <center>
            
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        </center>
    </div>
    </center>
</body>
</html>