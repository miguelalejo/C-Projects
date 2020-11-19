<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlCtasporCobrar.ascx.cs" Inherits="Aldental.WebUserControlCtasporCobrar" %>
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
    <table style="width: 100%; color: #000000; font-weight: 600;" 
    bgcolor="White">
    <tr>
        <td align="center" colspan="4" 
            style="color: #996600; font-size: medium; font-weight: bold">
            CUENTAS POR COBRAR</td>
    </tr>
    <tr>
        <td bgcolor="#999966" colspan="4">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td style="width: 21px">
            &nbsp;</td>
        <td style="width: 21px">
            &nbsp;</td>
        <td style="width: 134px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td colspan="3">
            CLIENTE:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="34px" Width="160px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; C:Cancelado<br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            P: PEndiente</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td style="width: 21px">
            &nbsp;</td>
        <td style="width: 21px">
            &nbsp;</td>
        <td style="width: 134px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td align="center" colspan="3">
            Tipo de Doc.&nbsp; Documento&nbsp;&nbsp; Fecha&nbsp;&nbsp; Total&nbsp;&nbsp; Estado&nbsp;&nbsp;&nbsp; Pago&nbsp;&nbsp; Inicial&nbsp;&nbsp;&nbsp; Saldo/td&gt;
        </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td bgcolor="#666633" colspan="3" rowspan="6">
            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
                BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" 
                GridLines="None" Height="104px" ToolTip="n documento" Width="658px">
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
        <td style="width: 15px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td align="right" colspan="3">
            <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="MOSTRAR" 
                Width="84px" />
        </td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td style="width: 21px">
            &nbsp;</td>
        <td style="width: 21px">
            &nbsp;</td>
        <td style="width: 134px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td colspan="3">
            Cantidad a Pagar $:&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="124px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fecha de Pago:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server" Width="123px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td colspan="3">
            Responsable:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Nº de Documento&nbsp;&nbsp;
            <asp:TextBox ID="TextBox7" runat="server" Width="120px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="4">
            <hr style="background-color: #999966" />
        </td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td style="width: 21px">
            &nbsp;</td>
        <td style="width: 21px">
            &nbsp;</td>
        <td style="width: 134px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td align="center" colspan="3">
            &nbsp;&nbsp; Fecha&nbsp;&nbsp; Cantidad&nbsp;&nbsp; Responsable&nbsp;&nbsp; Documento/td&gt;
        </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td colspan="3" rowspan="7" bgcolor="#666633">
            <asp:GridView ID="GridView2" runat="server" BackColor="White" 
                BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" 
                GridLines="Horizontal" Height="162px" Width="693px">
                <FooterStyle BackColor="White" ForeColor="#333333" />
                <RowStyle BackColor="White" ForeColor="#333333" />
                <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td style="width: 21px">
            &nbsp;</td>
        <td style="width: 21px">
            &nbsp;</td>
        <td style="width: 134px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td align="center" colspan="3">
            <asp:Button ID="btnPagar" runat="server" Font-Bold="True" Text="PAGAR" />
            &nbsp;
            <asp:Button ID="BtnAnular" runat="server" Font-Bold="True" Text="ANULAR" />
        </td>
    </tr>
    <tr>
        <td style="width: 15px">
            &nbsp;</td>
        <td style="width: 21px">
            &nbsp;</td>
        <td style="width: 21px">
            &nbsp;</td>
        <td style="width: 134px">
            &nbsp;</td>
    </tr>
</table>
