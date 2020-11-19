<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlFacturaVent.ascx.cs" Inherits="Aldental.WebUserControlFacturaVent" %>
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
    <table style="width: 100%; font-weight: bold;" align="center" 
    bgcolor="White">
        <tr align="center" 
            style="color: #003366; font-size: medium; font-weight: bolder">
            <td class="style7" style="height: 34px;">
                </td>
            <td colspan="7" style="height: 34px">
                <b style="font-size: large">FACTURA DE VENTA</b></td>
            <td style="height: 34px">
                </td>
        </tr>
        <tr>
            <td class="style7" style="height: 8px;" bgcolor="#003366" colspan="9">
                </td>
        </tr>
        <tr>
            <td class="style7" style="height: 6px">
                &nbsp;</td>
            <td colspan="6" style="height: 6px">
                &nbsp;</td>
            <td style="height: 6px; width: 94px">
                &nbsp;</td>
            <td style="height: 6px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" style="height: 6px">
            </td>
            <td colspan="6" style="height: 6px">
                <b style="color: #000000">DESCRIPCIÓN</b></td>
            <td style="height: 6px; width: 94px">
            </td>
            <td style="height: 6px">
            </td>
        </tr>
        <tr>
            <td colspan="9">
                <hr style="color: #996633" />
            </td>
        </tr>
        <tr>
            <td colspan="5">
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                Factura No.</td>
            <td style="width: 94px">
                <asp:TextBox ID="txtNoFact" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 112px">
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 94px; color: #000066; font-weight: bold;">
                Códigos</td>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 112px">
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 19px">
                </td>
            <td style="width: 112px; height: 19px;">
                <asp:TextBox ID="txtNomC" runat="server"></asp:TextBox>
            </td>
            <td style="width: 29px; height: 19px;">
                </td>
            <td style="width: 94px; height: 19px;">
                Cliente:</td>
            <td style="width: 109px; height: 19px;">
                <asp:TextBox ID="txtCodC" runat="server"></asp:TextBox>
            </td>
            <td style="width: 29px; height: 19px;">
                </td>
            <td style="width: 5px; height: 19px;">
                Fecha:</td>
            <td style="width: 94px; height: 19px;">
            </td>
            <td style="height: 19px">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 112px">
                <asp:TextBox ID="txtDirecC" runat="server"></asp:TextBox>
            </td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 94px">
                Empleado:</td>
            <td style="width: 109px">
                <asp:TextBox ID="txtCodEmp" runat="server"></asp:TextBox>
            </td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 112px">
                <asp:TextBox ID="txtCiC" runat="server" ontextchanged="txtCiC_TextChanged"></asp:TextBox>
            </td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 94px">
                Estado Fact:</td>
            <td style="width: 109px">
                <asp:TextBox ID="txtCodEstFact" runat="server"></asp:TextBox>
            </td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                F.Pago</td>
            <td style="width: 94px">
                <asp:DropDownList ID="DropDownFpago" runat="server" Height="17px" Width="88px">
                    <asp:ListItem>Contado</asp:ListItem>
                    <asp:ListItem>Cheque</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 28px">
                </td>
            <td style="width: 112px; height: 28px;">
                <asp:TextBox ID="txtFonC" runat="server"></asp:TextBox>
            </td>
            <td style="width: 29px; height: 28px;">
                </td>
            <td style="width: 94px; height: 28px;">
                Credito Fact:</td>
            <td style="width: 109px; height: 28px;">
                <asp:TextBox ID="txtCredFact" runat="server"></asp:TextBox>
            </td>
            <td style="width: 29px; height: 28px;">
                </td>
            <td style="width: 5px; height: 28px;">
                &nbsp;</td>
            <td style="width: 94px; height: 28px;">
                &nbsp;</td>
            <td style="height: 28px">
                </td>
        </tr>
        <tr>
            <td class="style7" style="height: 16px; ">
            </td>
            <td style="width: 112px; height: 16px">
                <asp:TextBox ID="txtCelularC" runat="server"></asp:TextBox>
            </td>
            <td class="style7" style="width: 29px; height: 16px">
            </td>
            <td style="width: 94px; height: 16px">
            </td>
            <td style="width: 109px; height: 16px">
            </td>
            <td style="height: 16px; width: 29px">
                &nbsp;</td>
            <td style="height: 16px; width: 5px">
            </td>
            <td style="height: 16px; width: 94px">
            </td>
            <td style="height: 16px">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 112px">
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style7" style="height: 19px; ">
            </td>
            <td style="width: 112px; height: 19px">
                <asp:DropDownList ID="DropDownCodProd" runat="server">
                </asp:DropDownList>
            </td>
            <td class="style7" style="width: 29px; height: 19px">
            </td>
            <td style="width: 94px; height: 19px">
                Cantidad:</td>
            <td style="width: 109px; height: 19px">
                <asp:TextBox ID="txtCantidad" runat="server"></asp:TextBox>
            </td>
            <td style="height: 19px; width: 29px">
                &nbsp;</td>
            <td style="height: 19px; width: 5px">
            </td>
            <td style="height: 19px; width: 94px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                                            </td>
            <td style="height: 19px">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 112px">
                <asp:DropDownList ID="DropDownProd" runat="server">
                </asp:DropDownList>
            </td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 94px">
                Precio:</td>
            <td style="width: 109px">
                <asp:TextBox ID="txtPrecio" runat="server"></asp:TextBox>
            </td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 112px">
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="9">
                <hr style="color: #996633" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 112px">
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
            </td>
            <td style="width: 94px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="7" rowspan="10" bgcolor="#666633">
                <asp:GridView ID="GridViewFacturaP" runat="server" BackColor="#DEBA84" 
                    BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    CellSpacing="2" Height="156px" Width="677px">
                    <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                    <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                    <Columns>
                        <asp:BoundField HeaderText="Codigo Producto" />
                        <asp:BoundField HeaderText="Producto" />
                        <asp:BoundField HeaderText="Descripción" />
                    </Columns>
                    <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
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
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 112px">
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td style="width: 109px">
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="4" rowspan="6">
                <asp:TextBox ID="TextBox14" runat="server" Height="98px" TextMode="MultiLine" 
                    Width="358px"></asp:TextBox>
            </td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                Subtotal:</td>
            <td style="width: 94px">
                <asp:TextBox ID="txtSubTotal" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                IVA:</td>
            <td style="width: 94px">
                <asp:TextBox ID="txtIva" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                TOTAL:</td>
            <td style="width: 94px">
                <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 29px">
                &nbsp;</td>
            <td style="width: 5px">
                &nbsp;</td>
            <td style="width: 94px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="width: 112px">
                &nbsp;</td>
            <td style="width: 5px">
                &nbsp;</td>
            <td style="width: 94px">
                <table style="width: 200%;">
                    <tr>
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
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
    