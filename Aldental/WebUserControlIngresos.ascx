<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlIngresos.ascx.cs" Inherits="Aldental.WebUserControlIngresos" %>
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
        <td colspan="5" align="center" 
            style="font-weight: bold; font-size: large; color: #000080">
            INGRESOS</td>
    </tr>
    <tr>
        <td bgcolor="#003366" colspan="5">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            Fecha de pedido:
        </td>
        <td style="width: 395px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnProdNuevo" runat="server" Text="Producto Nuevo" 
                Font-Bold="True" Width="140px" />
        </td>
        <td style="width: 147px" rowspan="5">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/odon.jpeg" 
                Height="106px" Width="143px" />
        </td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            Numero de pedido:</td>
        <td style="width: 395px">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            Fecha de ingreso:
        </td>
        <td style="width: 395px">
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        </td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            Remito Número:</td>
        <td style="width: 395px">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        </td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            Proveedor</td>
        <td style="width: 395px">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="194px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:ImageButton ID="ImageBtnNuevo" runat="server" Height="21px" 
                ImageUrl="~/images/window_new-32.png" Width="32px" ToolTip="Nuevo" />
            &nbsp; &nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="18px" 
                ImageUrl="~/images/modificar.ico" Width="33px" ToolTip="Modificar" />
        </td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
        </td>
        <td style="width: 144px">
        </td>
        <td style="width: 395px">
        </td>
        <td style="width: 147px">
            &nbsp;</td>
        <td style="width: 12px">
        </td>
    </tr>
    <tr>
        <td style="background-color: #003366; color: #FFFFFF; font-size: small; font-weight: bold;" 
            align="center" colspan="5">
            MOVIMIENTOS</td>
    </tr>
    <tr>
        <td style="width: 24px; height: 8px;">
            </td>
        <td style="width: 144px; height: 8px;">
            </td>
        <td style="height: 8px;" colspan="2">
        </td>
        <td style="width: 12px; height: 8px;">
            </td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            Producto:</td>
        <td colspan="2">
            &nbsp;
            <asp:DropDownList ID="DropDownList2" runat="server" Height="27px" Width="179px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cantidad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
        </td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            &nbsp;</td>
        <td style="width: 395px">
            &nbsp;</td>
        <td style="width: 147px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td bgcolor="#006699" colspan="3" rowspan="11">
            <asp:GridView ID="GridView1" runat="server" BackColor="White" 
                BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                Height="133px" Width="652px">
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <RowStyle ForeColor="#000066" />
                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
        </td>
        <td style="width: 144px">
        </td>
        <td style="width: 395px">
        </td>
        <td style="width: 147px">
            &nbsp;</td>
        <td style="width: 12px">
        </td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            Descripción:</td>
        <td style="width: 395px" rowspan="4">
            <asp:TextBox ID="TextBox7" runat="server" Height="54px" TextMode="MultiLine" 
                Width="391px" BorderColor="#336699"></asp:TextBox>
        </td>
        <td style="width: 147px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            &nbsp;</td>
        <td style="width: 147px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            &nbsp;</td>
        <td style="width: 147px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            &nbsp;</td>
        <td style="width: 147px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            &nbsp;</td>
        <td style="width: 395px">
            &nbsp;</td>
        <td style="width: 147px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            Revisado por:</td>
        <td style="width: 395px">
            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
        </td>
        <td style="width: 147px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            Cantidad de bultos</td>
        <td style="width: 395px">
            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
        </td>
        <td style="width: 147px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 24px">
            &nbsp;</td>
        <td style="width: 144px">
            &nbsp;</td>
        <td style="width: 395px">
            &nbsp;</td>
        <td style="width: 147px">
            &nbsp;</td>
        <td style="width: 12px">
            &nbsp;</td>
    </tr>
</table>
