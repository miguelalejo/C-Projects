<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlKardex.ascx.cs" Inherits="Aldental.WebUserControlKardex" %>
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

</style>
    <table style="color: #000000; font-weight: 600; width: 769px;" 
    bgcolor="White">
    <tr>
        <td align="center" colspan="5" 
            style="font-weight: bold; font-size: large; color: #003366">
            KARDEX DEL PRODUCTO</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#669999" colspan="6">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            Reporte:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="181px">
                <asp:ListItem>Movimientos de Productos</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td align="left" rowspan="5">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="96px" 
                Width="163px">
                <asp:ListItem>Período</asp:ListItem>
                <asp:ListItem>Capas Disponibles</asp:ListItem>
                <asp:ListItem>Salidas</asp:ListItem>
                <asp:ListItem>Entradas</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td align="center">
            <asp:TextBox ID="TextBox2" runat="server" Width="95px"></asp:TextBox>
            &nbsp;al&nbsp;&nbsp;
            <asp:TextBox ID="TextBox3" runat="server" Width="89px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            Código:</td>
        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td>
            Movinientos:
            <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            Existencia:&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            Divisas:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Enabled="False"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr bgcolor="#000D26">
        <td bgcolor="#669999" colspan="6">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td colspan="4">
            Fecha&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Folio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Entrada&nbsp;&nbsp;&nbsp;&nbsp; Disponible&nbsp;&nbsp;&nbsp; Salida&nbsp;&nbsp;&nbsp;&nbsp; Costo&nbsp;&nbsp;&nbsp;&nbsp; 
            Mov.Costo&nbsp;&nbsp;&nbsp;&nbsp; Existencia&nbsp;&nbsp;&nbsp; Valor Inven.</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td bgcolor="#669999" colspan="4" rowspan="9">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                GridLines="None" Height="127px" Width="734px">
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#E3EAEB" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#7C6F57" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td colspan="4">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Totales&nbsp;&nbsp;&nbsp; $ 0.00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $ 0.00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; $ 0.00&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
