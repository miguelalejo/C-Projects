<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlAsientoContable.ascx.cs" Inherits="Aldental.WebUserControlAsientoContable" %>
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

            .style9
            {
                height: 19px;
                width: 147px;
            }
            .style8
            {
                height: 19px;
                width: 818px;
            }
            .style11
            {
                width: 818px;
            }
            .style10
            {
                width: 147px;
            }
            
img {
	border-style: none;
	border-color: inherit;
	border-width: medium;
	height: 505px;
}

</style>
    <table class="style9" style="color: #000000; font-weight: 600" width="100%" 
    bgcolor="White">
    <tr>
        <td align="center" colspan="7" 
                style="color: #003366; font-size: medium; font-weight: bold">
            ASIENTOS CONTABLES</td>
    </tr>
    <tr>
        <td class="style8" colspan="7" style="background-color: #C0C0C0">
        </td>
    </tr>
    <tr>
        <td class="style11" style="width: 19px">
            &nbsp;</td>
        <td class="style11" style="width: 44px">
            &nbsp;</td>
        <td class="style10">
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
        <td class="style11" rowspan="3" style="width: 19px">
            &nbsp;
        </td>
        <td class="style11" rowspan="4" style="width: 44px">
            <asp:Image ID="Image2" runat="server" Height="76px" 
                    ImageUrl="~/images/con3.jpeg" Width="85px" />
        </td>
        <td class="style10">
            Concepto:</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" Width="103px">
            </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Código:&nbsp; <asp:TextBox ID="TextBox1" 
                    runat="server"></asp:TextBox>
        </td>
        <td align="center" colspan="2" rowspan="4">
            &nbsp;
            <asp:Image ID="Image1" runat="server" Height="84px" 
                    ImageUrl="~/images/con2.jpeg" Width="123px" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            Fecha:</td>
        <td>
            <asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>28/Feb/20093</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style10">
            Descrpción</td>
        <td rowspan="2">
            <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="150px"></asp:TextBox>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" style="width: 19px">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" style="width: 19px">
            &nbsp;</td>
        <td class="style11" style="width: 44px">
            &nbsp;</td>
        <td class="style10">
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
        <td class="style11" style="width: 19px">
            &nbsp;</td>
        <td class="style11" style="width: 44px">
            &nbsp;</td>
        <td align="center" class="style10" colspan="4">
            &nbsp;&nbsp;&nbsp;&nbsp; Código&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Descripción&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Debe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Haber&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Detalle</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" style="width: 19px">
            &nbsp;</td>
        <td class="style11" colspan="5" rowspan="6" style="background-color: #C0C0C0">
            <asp:GridView ID="GridView1" runat="server" Height="85px" Width="612px">
            </asp:GridView>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" style="width: 19px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" style="width: 19px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" style="width: 19px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" style="width: 19px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style11" style="width: 19px">
        </td>
        <td>
        </td>
    </tr>
    <tr>
        <td class="style11" style="width: 19px">
            &nbsp;</td>
        <td class="style11" style="width: 44px">
            &nbsp;</td>
        <td class="style10">
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
        <td class="style11" style="width: 19px">
            &nbsp;</td>
        <td class="style11" style="width: 44px">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td align="center">
            <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/images/add-32.png" ToolTip="Nuevo" Height="25px" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/images/modificar.ico" ToolTip="Modificar" Height="27px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton3" runat="server" 
                    ImageUrl="~/images/Saveas.ico" ToolTip="Guardar" Height="25px" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:ImageButton ID="ImageButton4" runat="server" 
                    ImageUrl="~/images/delete.ico" ToolTip="Eliminar" Height="25px" />
        </td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
