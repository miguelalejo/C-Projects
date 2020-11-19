<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlResultados.ascx.cs" Inherits="Aldental.WebUserControlResultados" %>
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
<table style="width: 100%; color: #000000; font-weight: 400;" bgcolor="White">
    <tr>
        <td style="color: #003366; font-size: large; font-weight: bolder;" colspan="8">
            <asp:Image ID="Image1" runat="server" Height="44px" 
                ImageUrl="~/images/Document_Folder_black_48.png" Width="52px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            RESULTADOS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" Height="44px" 
                ImageUrl="~/images/Document_Folder_blue_48.png" Width="52px" />
        </td>
    </tr>
    <tr>
        <td bgcolor="#003366" colspan="8" style="height: 13px">
            </td>
    </tr>
    <tr>
        <td colspan="8">
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="8" style="color: #003366; font-weight: 500;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fecha Inicial&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Fecha Final</td>
    </tr>
    <tr>
        <td align="center" colspan="7">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox19" runat="server" BorderColor="#006699"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox20" runat="server" BorderColor="#006699"></asp:TextBox>
                                            </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="width: 165px">
            &nbsp;</td>
        <td style="width: 44px">
            &nbsp;</td>
        <td style="width: 187px">
            &nbsp;</td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
            &nbsp;</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="color: #FFFFFF; font-weight: bold">
            &nbsp;</td>
        <td bgcolor="#006699" colspan="3" style="color: #FFFFFF; font-weight: bold">
            &nbsp;&nbsp;&nbsp; Resultados Económicos</td>
        <td style="width: 118px">
            &nbsp;</td>
        <td bgcolor="#006699" colspan="3" style="color: #FFFFFF; font-weight: bold">
                Estado General de Cuentas</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="width: 165px">
            &nbsp;</td>
        <td style="width: 44px">
            &nbsp;</td>
        <td style="width: 187px">
            &nbsp;</td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
            &nbsp;</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td style="width: 165px">
                Total Ventas:</td>
        <td style="width: 44px">
                &nbsp;</td>
        <td style="width: 187px">
            <asp:TextBox ID="TextBox1" runat="server" BorderColor="#003366"></asp:TextBox>
        </td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
                Total Valores:</td>
        <td style="width: 37px">
                &nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox6" runat="server" BorderColor="#003366"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td style="width: 165px">
                Total Facturación:</td>
        <td style="width: 44px">
                &nbsp;</td>
        <td style="width: 187px">
            <asp:TextBox ID="TextBox3" runat="server" BorderColor="#003366"></asp:TextBox>
        </td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
                Total Deudores:</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox7" runat="server" BorderColor="#003366"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td style="width: 165px">
                Total Gastos:</td>
        <td style="width: 44px">
                &nbsp;</td>
        <td style="width: 187px">
            <asp:TextBox ID="TextBox4" runat="server" BorderColor="#003366"></asp:TextBox>
        </td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
                Total Acreedores:</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox8" runat="server" BorderColor="#003366"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td style="width: 165px">
                Resultado del período</td>
        <td style="width: 44px">
                &nbsp;</td>
        <td style="width: 187px">
            <asp:TextBox ID="TextBox5" runat="server" BorderColor="#003366"></asp:TextBox>
        </td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
                Estado a la fecha final</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox9" runat="server" BorderColor="#003366"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="width: 165px">
            &nbsp;</td>
        <td style="width: 44px">
            &nbsp;</td>
        <td style="width: 187px">
            &nbsp;</td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
            &nbsp;</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="width: 165px">
            &nbsp;</td>
        <td style="width: 44px">
            &nbsp;</td>
        <td style="width: 187px">
            &nbsp;</td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
            &nbsp;</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="color: #FFFFFF; font-weight: bold;">
            &nbsp;</td>
        <td style="color: #FFFFFF; font-weight: bold;" bgcolor="#006699" colspan="3">
                Estado a la fecha final</td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="color: #FFFFFF; font-weight: bold;" bgcolor="#006699" colspan="3">
            Estado financiero al<asp:ListBox ID="ListBox1" runat="server" Height="24px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
                <asp:ListItem>11</asp:ListItem>
                <asp:ListItem>12</asp:ListItem>
                <asp:ListItem>13</asp:ListItem>
                <asp:ListItem>14</asp:ListItem>
            </asp:ListBox>
            días</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="width: 165px">
            &nbsp;</td>
        <td style="width: 44px">
            &nbsp;</td>
        <td style="width: 187px">
            &nbsp;</td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
            &nbsp;</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="width: 165px">
            &nbsp;</td>
        <td style="width: 44px">
            &nbsp;</td>
        <td style="width: 187px">
            Varios&nbsp;&nbsp;&nbsp;&nbsp; Totales</td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
            &nbsp;</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="width: 165px">
                Total Ingresos:</td>
        <td style="width: 44px">
            &nbsp;</td>
        <td style="width: 187px">
            <asp:TextBox ID="TextBox10" runat="server" Width="71px" BorderColor="#003366"></asp:TextBox>
            <asp:TextBox ID="TextBox11" runat="server" Width="85px" BorderColor="#003366"></asp:TextBox>
        </td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
                Valores disponibles:</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox15" runat="server" BorderColor="#003366"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="height: 22px;">
            &nbsp;</td>
        <td style="width: 165px; height: 22px;">
                Total Egresos:</td>
        <td style="width: 44px; height: 22px;">
            &nbsp;</td>
        <td style="width: 187px; height: 22px;">
            <asp:TextBox ID="TextBox12" runat="server" Width="72px" BorderColor="#003366"></asp:TextBox>
            <asp:TextBox ID="TextBox13" runat="server" Width="81px" BorderColor="#003366"></asp:TextBox>
        </td>
        <td style="width: 118px; height: 22px;">
            </td>
        <td style="width: 183px; height: 22px;">
                Valores disponibles:</td>
        <td style="width: 37px; height: 22px;">
            &nbsp;</td>
        <td style="height: 22px">
            <asp:TextBox ID="TextBox16" runat="server" BorderColor="#003366"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="width: 165px">
                Resultado del Período</td>
        <td style="width: 44px">
            &nbsp;</td>
        <td style="width: 187px">
            <asp:TextBox ID="TextBox14" runat="server" BorderColor="#003366"></asp:TextBox>
        </td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
                Cuentas a pagar:</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox17" runat="server" BorderColor="#003366"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="width: 165px">
            &nbsp;</td>
        <td style="width: 44px">
            &nbsp;</td>
        <td style="width: 187px">
            &nbsp;</td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
                Estado al:Fecha</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            <asp:TextBox ID="TextBox18" runat="server" BorderColor="#003366"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="width: 165px">
            &nbsp;</td>
        <td style="width: 44px">
            &nbsp;</td>
        <td style="width: 187px">
            &nbsp;</td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
            &nbsp;</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="width: 165px">
            &nbsp;</td>
        <td style="width: 44px">
            &nbsp;</td>
        <td style="width: 187px">
            &nbsp;</td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
            &nbsp;</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="center" colspan="8">
            <asp:Button ID="btnEjecutar" runat="server" Text="Ejecutar Consulta" 
                Width="157px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnCerrar" runat="server" Text="Cerrar" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="width: 165px">
            &nbsp;</td>
        <td style="width: 44px">
            &nbsp;</td>
        <td style="width: 187px">
            &nbsp;</td>
        <td style="width: 118px">
            &nbsp;</td>
        <td style="width: 183px">
            &nbsp;</td>
        <td style="width: 37px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
