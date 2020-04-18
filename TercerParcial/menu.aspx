<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menu.aspx.cs" Inherits="BAHV_AWOS_P2_4TSM2.Tercer_Parcial.cshar" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link  href="hola.jpg"  rel="Shortcut icon"/>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <title>Supermercado</title>
</head>
    <style>
        
    </style>
<body>
    <form id="form1" runat="server">
        
        <center><h1>Productos</h1></center>
            <br/>
            <asp:Button ID="Button1" Class="btnz" runat="server" Text="Registrar" OnClick="Button1_Click"  />
            <asp:Button ID="Button2" Class="btnz" runat="server" Text="Visualizar" OnClick="Button2_Click" />
            <asp:Button ID="Button3" Class="btnz" runat="server" Text="Ver y modificar" OnClick="Button3_Click" />
            <asp:Button ID="Button4" Class="btnz" runat="server" Text="Borrar" OnClick="Button4_Click" />
    
        <center>
    </form>
</body>
</html>
