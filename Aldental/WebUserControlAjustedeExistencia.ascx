<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlAjustedeExistencia.ascx.cs" Inherits="Aldental.WebUserControlAjustedeExistencia" %>
<style type="text/css">
* {
	margin: 0px 2px 1px 0px;
	padding: 0px;
	}

img {
	border-style: none;
	border-color: inherit;
	border-width: medium;
	height: 505px;
}

            .style8
            {
                height: 19px;
                width: 818px;
            }
            </style>
<table style="width: 101%; color: #000000; font-weight: 600; height: 181px;">
        <tr>
            <td align="center" colspan="5" 
                style="font-size: medium; color: #006666; font-weight: 900;">
                AJUSTE DE EXISTENCIAS</td>
        </tr>
        <tr>
            <td bgcolor="#669999" colspan="5" 
                style="height: 16px; background-color: #669999;">
            </td>
        </tr>
        <tr>
            <td style="width: 211px">
                &nbsp;</td>
            <td rowspan="7" style="width: 300px">
                <asp:Image ID="Image2" runat="server" Height="144px" 
                    ImageUrl="~/images/empresa.jpeg" Width="158px" />
            </td>
            <td style="width: 522px">
                Código:</td>
            <td style="width: 524px">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="122px">
                </asp:DropDownList>
            </td>
            <td align="center" rowspan="7" style="width: 381px">
                <asp:Image ID="Image1" runat="server" Height="164px" 
                    ImageUrl="~/images/emp.jpeg" Width="143px" />
                &nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 211px">
                &nbsp;</td>
            <td style="width: 522px">
                Nombre</td>
            <td style="width: 524px">
                <asp:TextBox ID="TextBox1" runat="server" Enabled="False" Width="207px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 211px">
                &nbsp;</td>
            <td style="width: 522px">
                Fecha de Ajuste:</td>
            <td style="width: 524px">
                <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 211px; height: 1px">
            </td>
            <td class="style8" colspan="2" style="height: 1px">
                <hr style="background-color: #006666; height: 6px;" />
            </td>
        </tr>
        <tr>
            <td style="width: 211px">
                &nbsp;</td>
            <td style="width: 522px">
                Existencia:&nbsp;&nbsp;
            </td>
            <td style="width: 524px">
                <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 211px">
                &nbsp;</td>
            <td style="width: 522px">
                Existencia Física:</td>
            <td style="width: 524px">
                <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 211px">
                &nbsp;</td>
            <td style="width: 522px">
                &nbsp;</td>
            <td style="width: 524px">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/Symbol_-_Check_48.png" ToolTip="AJUSTAR" Height="23px" 
                    Width="38px" />
                &nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/images/button_cancel-32.png" ToolTip="CERRAR" Height="18px" 
                    Width="25px" />
            </td>
        </tr>
    </table>
