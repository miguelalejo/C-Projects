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
    <table style="color: #000000; font-weight: 600; width: 769px;" 
    align="center" bgcolor="White">
    <tr>
        <td align="center" colspan="5" 
            style="font-weight: bold; font-size: large; color: #003366">
            EGRESOS/SALIDAS</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td bgcolor="#006699" colspan="6">
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            </td>
        <td>
            </td>
        <td>
            </td>
        <td style="width: 156px">
            </td>
        <td>
            &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnProdNuevo" runat="server" Text="Producto Nuevo" 
                Font-Bold="True" Width="140px" Height="24px" />
        </td>
        <td>
            </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            Remito:</td>
        <td>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
        <td style="width: 156px">
            Persona Recibe:&nbsp;</td>
        <td align="center">
            &nbsp;<asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 20px">
        </td>
        <td style="height: 20px">
            Cliente:</td>
        <td style="height: 20px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="181px">
            </asp:DropDownList>
        </td>
        <td style="height: 20px; width: 156px">
            Fecha de Entrega:</td>
        <td style="height: 20px">
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
        </td>
        <td style="height: 20px">
        </td>
    </tr>
    <tr>
        <td style="height: 26px">
            </td>
        <td colspan="2" style="height: 26px">
            <asp:TextBox ID="TextBox7" runat="server" Enabled="False" Height="19px" 
                Width="120px"></asp:TextBox>
            <asp:TextBox ID="TextBox9" runat="server" Enabled="False" Height="19px" 
                Width="116px"></asp:TextBox>
            <asp:TextBox ID="TextBox8" runat="server" Enabled="False" Height="19px" 
                Width="118px"></asp:TextBox>
        </td>
        <td style="width: 156px; height: 26px;">
            Hora de Entrega:</td>
        <td style="height: 26px">
            &nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
        </td>
        <td style="height: 26px">
            </td>
    </tr>
    <tr>
        <td style="height: 25px">
            </td>
        <td align="center" colspan="2" style="height: 25px">
            &nbsp;</td>
        <td style="width: 156px; height: 25px;">
            &nbsp;</td>
        <td style="height: 25px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton1" runat="server" Height="22px" 
                ImageUrl="~/images/window_new-32.png" ToolTip="Nuevo" />
            &nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" 
                ImageUrl="~/images/modificar.ico" 
                ToolTip="Modificar" />
        </td>
        <td style="height: 25px">
            </td>
    </tr>
    <tr bgcolor="#000D26">
        <td bgcolor="#006699" colspan="6" align="center" 
            style="color: #FFFFFF; font-size: medium; font-weight: 600">
            MOVIMIENTOS</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td style="width: 156px">
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
            Producto:</td>
        <td colspan="3">
            <asp:DropDownList ID="DropDownList3" runat="server" Height="28px" Width="142px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cantidad:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
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
        <td style="width: 156px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 19px">
        </td>
        <td colspan="4" rowspan="7" bgcolor="#006699">
            <asp:GridView ID="GridView2" runat="server" BackColor="White" 
                BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" 
                ForeColor="Black" GridLines="Vertical" Height="143px" Width="731px">
                <FooterStyle BackColor="#CCCC99" />
                <RowStyle BackColor="#F7F7DE" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </td>
        <td style="height: 19px">
        </td>
    </tr>
    <tr>
        <td style="height: 19px">
            &nbsp;</td>
        <td style="height: 19px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 19px">
            &nbsp;</td>
        <td style="height: 19px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 19px">
            &nbsp;</td>
        <td style="height: 19px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 19px">
            &nbsp;</td>
        <td style="height: 19px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 19px">
            &nbsp;</td>
        <td style="height: 19px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 19px">
            &nbsp;</td>
        <td style="height: 19px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 19px">
            &nbsp;</td>
        <td style="height: 19px">
            &nbsp;</td>
        <td style="height: 19px">
            &nbsp;</td>
        <td style="height: 19px; width: 156px">
            &nbsp;</td>
        <td style="height: 19px">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnVer" runat="server" Font-Bold="True" Height="22px" 
                Text="MOSTRAR" Width="90px" />
        </td>
        <td style="height: 19px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 19px">
        </td>
        <td style="height: 19px">
            Descripcion:</td>
        <td style="height: 19px">
            <asp:TextBox ID="TextBox13" runat="server" Height="81px" TextMode="Password" 
                Width="307px"></asp:TextBox>
        </td>
        <td style="height: 19px; width: 156px">
        </td>
        <td style="height: 19px" align="center">
            <asp:Image ID="Image1" runat="server" Height="75px" 
                ImageUrl="~/images/empresa.jpeg" Width="128px" />
        </td>
        <td style="height: 19px">
        </td>
    </tr>
    <tr>
        <td style="height: 19px">
            &nbsp;</td>
        <td style="height: 19px">
            Bultos:</td>
        <td style="height: 19px">
            <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
        </td>
        <td style="height: 19px; width: 156px">
            No fue entregado por:</td>
        <td style="height: 19px">
            <asp:DropDownList ID="DropDownList4" runat="server" Height="19px" Width="123px">
            </asp:DropDownList>
        </td>
        <td style="height: 19px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 19px">
            &nbsp;</td>
        <td style="height: 19px">
            &nbsp;</td>
        <td style="height: 19px">
            &nbsp;</td>
        <td style="height: 19px; width: 156px">
            &nbsp;</td>
        <td style="height: 19px">
            &nbsp;</td>
        <td style="height: 19px">
            &nbsp;</td>
    </tr>
</table>
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlEgresos.ascx.cs" Inherits="Aldental.WebUserControlEgresos" %>
