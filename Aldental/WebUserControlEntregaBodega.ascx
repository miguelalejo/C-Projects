<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlEntregaBodega.ascx.cs" Inherits="Aldental.WebUserControlEntregaBodega" %>
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

span {
	display: none;
	font-weight: 700;
}

</style>
    <table style="width: 100%; color: #000000;" bgcolor="White">
    <tr>
        <td align="center" colspan="7" 
            style="color: #000000; font-size: large; font-weight: bold;">
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                Aldental S.A.</td>
    </tr>
    <tr>
        <td align="center" colspan="7" style="color: #000000">
            Ruc: #####</td>
    </tr>
    <tr>
        <td colspan="2" style="width: 151px">
            &nbsp;</td>
        <td style="width: 89px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
        <td style="width: 116px">
            &nbsp;</td>
        <td colspan="2">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="7" 
            style="background-color: #D2B48C; color: #000000; font-size: small; font-weight: bold;" 
            align="center">
            INGRESOS A BODEGA</td>
    </tr>
    <tr>
        <td colspan="2" style="width: 151px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nº</td>
        <td style="width: 89px">
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
        <td rowspan="4" style="width: 12px; ">
            &nbsp;</td>
        <td style="width: 116px">
            &nbsp;</td>
        <td style="width: 110px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="width: 151px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fecha:</td>
        <td style="width: 89px">
            <asp:TextBox ID="TextBox2" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
        <td style="width: 116px">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CheckBoxLocal" runat="server" Text="Local" />
        </td>
        <td style="width: 110px">
            <asp:CheckBox ID="CheckBoxDev" runat="server" Text="Devolución" />
        </td>
        <td>
            <asp:CheckBox ID="CheckBoxInv" runat="server" Text="Inventario" />
        </td>
    </tr>
    <tr>
        <td colspan="2" style="width: 151px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Código Proveedor:</td>
        <td style="width: 89px">
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>175236</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="width: 116px">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:CheckBox ID="CheckBoxImport" runat="server" Text="Importación" />
        </td>
        <td style="width: 110px">
            <asp:CheckBox ID="CheckBoxTrasl" runat="server" Text="Traslado" />
        </td>
        <td>
            <asp:CheckBox ID="CheckBoxOtros" runat="server" Text="Otros" />
        </td>
    </tr>
    <tr>
        <td colspan="2" style="width: 151px; ">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Factura Nº:</td>
        <td style="width: 89px">
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
        <td colspan="3">
                                            </td>
    </tr>
    <tr style="color: #999966">
        <td colspan="7" style="background-color: #D2B48C; height: 9px;">
            <br />
        </td>
    </tr>
    <tr>
        <td colspan="3">
        </td>
        <td style="width: 12px">
            </td>
        <td colspan="3">
        </td>
    </tr>
    <tr>
        <td colspan="3">
            &nbsp;&nbsp;&nbsp;&nbsp; Nombre del Proveedor:&nbsp;&nbsp;&nbsp;             <asp:TextBox ID="txtNomProve" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
        <td style="width: 12px">
            &nbsp;</td>
        <td colspan="3">
            Orden de Compra Nº
            <asp:TextBox ID="TextBox4" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="width: 151px">
            &nbsp;</td>
        <td style="width: 89px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
        <td style="width: 116px">
            &nbsp;</td>
        <td style="width: 110px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="width: 151px">
            &nbsp;</td>
        <td style="width: 89px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
        <td style="width: 116px">
            &nbsp;</td>
        <td style="width: 110px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
        <td style="width: 151px">
            codigo Articulo</td>
        <td style="width: 89px">
            Cantidad</td>
        <td style="width: 12px">
            &nbsp;</td>
        <td style="width: 116px">
            Descripción</td>
        <td style="width: 110px">
            Precio Unitario&nbsp; $</td>
        <td style="width: 120px">
            Precio Total $</td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
        <td style="width: 151px">
            &nbsp;</td>
        <td style="width: 89px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
        <td style="width: 116px">
            &nbsp;</td>
        <td style="width: 110px">
            &nbsp;</td>
        <td style="width: 120px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
        <td bgcolor="Tan" colspan="6" rowspan="14">
            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
                BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
                GridLines="None" Height="210px" Width="716px">
                <FooterStyle BackColor="Tan" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                    HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 8px">
        </td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 8px">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="width: 151px">
            &nbsp;</td>
        <td style="width: 89px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
        <td style="width: 116px">
            &nbsp;</td>
        <td style="width: 110px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="width: 151px">
            Entregado por:</td>
        <td style="width: 89px">
            <asp:TextBox ID="TextBox5" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
        <td style="width: 12px">
            &nbsp;</td>
        <td style="width: 116px">
            &nbsp;</td>
        <td style="width: 110px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="width: 151px">
            Recibido por:</td>
        <td style="width: 89px">
            <asp:TextBox ID="TextBox6" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
        <td style="width: 12px">
            &nbsp;</td>
        <td style="width: 116px">
            &nbsp;</td>
        <td style="width: 110px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="width: 151px">
            Contabilidad:</td>
        <td style="width: 89px">
            <asp:TextBox ID="TextBox7" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
        <td style="width: 12px">
            &nbsp;</td>
        <td style="width: 116px">
            &nbsp;</td>
        <td style="width: 110px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
