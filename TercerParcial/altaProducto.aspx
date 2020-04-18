<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="altaProducto.aspx.cs" Inherits="BAHV_AWOS_P2_4TSM2.Tercer_Parcial.altaAlimento" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link  href="hola.jpg"  rel="Shortcut icon"/>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <title>Productos</title>
</head>
    <style>
        .btno{
            width: 100%;

        }
        .btne{
            width: 100%;

        }
    </style>
<body>
        <form id="form1" runat="server">
        <div class="home-box"> 
            <center>
       <h1>Registrar Producto</h1>
    <table>
        <tr>
            <th></th><td><asp:TextBox ID="txtId" runat="server" Visible="false"></asp:TextBox></td>
        </tr>
        <tr>
            <th><label>Nombre</label></th><td><asp:TextBox ID="textn" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <th><label>Marca</label></th><td><asp:TextBox ID="textp" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <th><label>Codigo</label></th><td><asp:TextBox ID="texth" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <th><label>Serie</label></th><td><asp:TextBox ID="textg" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <th><label>Precio</label></th><td><asp:TextBox ID="textv" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <th><label>No productos</label></th><td><asp:TextBox ID="textm" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <th><label>Area</label></th><td><asp:TextBox ID="textf" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <th><label>Foto</label></th><td><asp:TextBox ID="textfoto" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <th colspan="2" style="text-align: center;">
            <asp:Button ID="Button2" runat="server" Class="btno" Text="Registrar" OnClick="Button2_Click" />
            <asp:Button ID="Button6" runat="server" Class="btno" Text="Modificar" OnClick="Button6_Click" />
            </th>
            </tr>
       </table>
            <asp:Button ID="Button1" runat="server" Text="Conexion" Class="btno" OnClick="Button1_Click1" Visible="false"/>
            <asp:Button ID="Button8" runat="server" Text="Ver lista de Productos" Class="btne" OnClick="Button8_Click" />
            
            <asp:Button ID="Button10" runat="server" Text="Regresar al inicio" Class="btne" OnClick="Button10_Click" />
        </center>
        </div>
        </form>
</body>
</html>