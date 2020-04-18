<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="java.aspx.cs" Inherits="BAHV_AWOS_P2_4TSM2.Tercer_Parcial.java" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link  href="hola.jpg"  rel="Shortcut icon"/>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <title>Menu</title>
</head>
<body>
    <form id="form1" runat="server">
      <div class="home-box">
        <center><h1>Productos</h1></center>
        <center>
            <br/>
        <asp:Button ID="Button2" Class="btnp" runat="server" Text="Volver al inicio" OnClick="Button2_Click" BorderStyle="Dotted" />
        <asp:Button ID="Button1" Class="btnp" runat="server" Text="Borrar alimento" OnClick="Button1_Click" BorderStyle="Dotted" />
        </center>
        </div>
    </form>
</body>
</html>
