<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="BAHV_AWOS_P2_4TSM2.Formularios.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../css/Inicio.css" rel="stylesheet" />
    <title>Inicio</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="home-box">
            <h1 style="color: #000000; font-family: 'Comic Sans MS';">"Supermercado"</h1>
            <center>
                <br />
                <br />
                <br />
                <br />
           <asp:Button ID="Ingresar1" runat="server" Class="btnp" Text="Registrar producto" OnClick="Ingresar1_Click" BackColor="#FFA74F" BorderColor="#99FF33" BorderStyle="Dotted" BorderWidth="10px"  />
           <asp:Button ID="Ingresar2" runat="server" Class="btnp" Text="Ver lista de productos" OnClick="Ingresar2_Click" BackColor="#FFA74F" BorderColor="#99FF33" BorderStyle="Dotted" BorderWidth="10px" ForeColor="Black"  />
            </center>
        </div>
    </form>
</body>
</html>
