<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlMovimientosInventario.ascx.cs" Inherits="Aldental.WebUserControlTipo" %>
<style type="text/css">
* {
	margin: 0px 2px 1px 0px;
	padding: 0px;
	}

body {
	padding: 80px 0px 0px;
	background:  #003366 repeat-x;
	color: #695d47;
	font-family: verdana, arial, sans-serif;
	font-size: 12px;
	text-align: center;
}

img {
	border-style: none;
	border-color: inherit;
	border-width: medium;
	height: 505px;
}

</style>
    <table style="width: 100%; color: #000000; font-weight: 600;" 
    bgcolor="White">
    <tr>
        <td align="center" colspan="4" 
            style="color: #003300; font-size: medium; font-weight: bold">
            MOVIMIENTOS AL INVENTARIO</td>
        <td align="center" style="color: #003300; font-size: medium; font-weight: bold">
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#666633" colspan="5">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 336px">
            &nbsp;</td>
        <td style="width: 121px">
            &nbsp;</td>
        <td style="width: 378px">
            &nbsp;</td>
        <td style="width: 313px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" rowspan="5" style="width: 336px">
            <asp:Image ID="Image2" runat="server" Height="98px" 
                ImageUrl="~/images/factura1.jpg" Width="109px" />
        </td>
        <td style="width: 121px">
            Código:</td>
        <td style="width: 378px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td align="center" rowspan="5" style="width: 313px">
            <asp:Image ID="Image1" runat="server" Height="115px" 
                ImageUrl="~/images/Conta.jpeg" Width="151px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 121px">
            Descripción:</td>
        <td style="width: 378px">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 121px">
            Entrada/Salida</td>
        <td style="width: 378px">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 121px">
            Cliente/Proveedor</td>
        <td style="width: 378px">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 121px">
            &nbsp;</td>
        <td style="width: 378px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 336px">
            &nbsp;</td>
        <td align="center" colspan="2">
            &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="26px" 
                ImageUrl="~/images/Saveas.ico" ToolTip="GUARDAR" Width="36px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="31px" 
                ImageUrl="~/images/borrar.jpeg" ToolTip="BORRAR" Width="35px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" Height="27px" 
                ImageUrl="~/images/delete.ico" ToolTip="ELIMINAR" Width="35px" />
        </td>
        <td style="width: 313px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
