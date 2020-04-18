<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="BAHV_AWOS_P2_4TSM2.Formularios.Registrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../css/Principal.css" rel="stylesheet" />
    <title>Registrar</title>
</head>
<body>
   <form id="form1" runat="server">
   <h1>Registrar Alimentos</h1>
          
        
    <table>
         <tr>
        <th><label></label></th><td><asp:TextBox ID="txtid" runat="server" Visible="false"></asp:TextBox></td>
         </tr>
         <tr>
        <th><label>Nombre</label></th><td><asp:TextBox ID="textnombre" runat="server"></asp:TextBox></td>
         </tr>
         <tr>
        <th><label>Marca</label></th><td><asp:TextBox ID="textproteinas" runat="server"></asp:TextBox></td>
         </tr>
         <tr>
        <th><label>Codigo</label></th><td><asp:TextBox ID="texthidratos" runat="server"></asp:TextBox></td>
         </tr>
         <tr>
        <th><label>Serie</label></th><td><asp:TextBox ID="textgrasas" runat="server"></asp:TextBox></td>
         </tr>
         <tr>
        <th><label>Precio</label></th><td><asp:TextBox ID="textvitaminas" runat="server"></asp:TextBox></td>
         </tr>
         <tr>
        <th><label>No productos</label></th><td><asp:TextBox ID="textminerales" runat="server"></asp:TextBox></td>
         </tr>
         <tr>
        <th><label>Area</label></th><td><asp:TextBox ID="textfibra" runat="server"></asp:TextBox></td>
         </tr>
         <tr>
        <th><label>Agua</label></th><td><asp:TextBox ID="textagua" runat="server"></asp:TextBox></td>
         </tr>
         <tr>
        <th><label>Foto</label></th><td><asp:TextBox ID="textfoto" runat="server"></asp:TextBox></td>
         </tr>
         <tr>
        <th colspan="2" style="text-align: center;">
            <asp:Button ID="Button2" runat="server" Class="btno" Text="Registrar" OnClick="Button2_Click" BackColor="#99FF66" BorderColor="#99FF33" BorderStyle="Dotted" BorderWidth="10px"  />
            <asp:Button ID="Button6" runat="server" Class="btno" Text="Modificar" OnClick="Button6_Click" BackColor="#99FF66" BorderColor="#99FF33" BorderStyle="Dotted" BorderWidth="10px" />
            <asp:Button ID="Button3" runat="server" Class="btno" Text="Eliminar" OnClick="Button3_Click"  BackColor="#99FF66" BorderColor="#99FF33" BorderStyle="Dotted" BorderWidth="10px"/>
        </th>
         </tr>
    </table>
            
        <div>
            <asp:Button ID="Button1" runat="server" Text="Conexion" Class="btno" OnClick="Button1_Click1"  Visible="false" />
            <asp:Button ID="Button8" runat="server" OnClick="Button8_Click"  Class="btne" Text="Ver lista" BackColor="#99FF66" BorderColor="#FF9933" BorderStyle="Dotted" BorderWidth="10px" />
            
            <asp:Button ID="Button10" runat="server"  Text="Regresar"  Class="btne" OnClick="Button10_Click" BackColor="#99FF66" BorderColor="#FF9933" BorderStyle="Dotted" BorderWidth="10px"/>
        </div>

        <div>           
        </div>

        <div>
           <asp:Button ID="Alta2" runat="server"  Text="Alta 2"  Class="btno" OnClick="Alta2_Click"  Visible="false"/>
        </div>
    </form>
</body>
</html>
