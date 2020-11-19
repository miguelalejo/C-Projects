<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlOdenCompra.ascx.cs" Inherits="Aldental.WebUserControlOdenCompra" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dxm" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dxnb" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dxpc" %>
<style type="text/css">

* {
	margin: 0px 2px 1px 0px;
	padding: 0px;
	}

span {
	display: none;
	font-weight: 700;
}

img {
	border-style: none;
	border-color: inherit;
	border-width: medium;
        margin-bottom: 1px;
    }

.dxgvControl_BlackGlass,
.dxgvDisabled_BlackGlass
{
	border: solid 1px #4E4F51;
	font: 12px Tahoma;
	background-color: #eef2f5;
	color: Black;
	cursor: default;
}

.dxgvControl_BlackGlass
{
	border: solid 1px #4E4F51;
	font: 12px Tahoma;
	background-color: #eef2f5;
	color: Black;
	cursor: default;
}

.dxgvTable_BlackGlass
{
	background-color: transparent;
	border: 0;
	border-collapse: separate !important;
	overflow:hidden;
	font: 9pt Tahoma;
	color: Black;
}

.dxgvTable_BlackGlass
{
	background-color: transparent;
	border: 0;
	border-collapse: separate !important;
	overflow:hidden;
	font: 9pt Tahoma;
	color: Black;
}
.dxgvTable_BlackGlass .dxgvHeader_BlackGlass
{
    padding-left: 6px;
    padding-right: 6px;
}

.dxgvTable_BlackGlass .dxgvHeader_BlackGlass
{
    padding-left: 6px;
    padding-right: 6px;
}

.dxgvHeader_BlackGlass, .dxgvHeader_BlackGlass table 
{
	color: White;
	font: 9pt Tahoma;
}

.dxgvHeader_BlackGlass {
	cursor:pointer;
	white-space:nowrap;
	padding: 4px 7px 6px 7px;
	background: #444444 url('App_Themes/BlackGlass/GridView/gvHeaderBackground.gif') repeat-x left top;
	border: solid 1px #4e4f51;
	overflow:hidden;
	-moz-user-select: none;
    font-weight: normal;
    text-align: left;
}

.dxgvHeader_BlackGlass {
	cursor:pointer;
	white-space:nowrap;
	padding: 4px 7px 6px 7px;
	background: #444444 url('App_Themes/BlackGlass/GridView/gvHeaderBackground.gif') repeat-x left top;
	border: solid 1px #4e4f51;
	overflow:hidden;
	-moz-user-select: none;
    font-weight: normal;
    text-align: left;
}

.dxgvHeader_BlackGlass 
{
	color: White;
	font: 9pt Tahoma;
}

.dxgvHeader_BlackGlass table 
{
	color: White;
	font: 9pt Tahoma;
}

.dxgvHeader_BlackGlass td {
	white-space:nowrap;
}
.dxgvHeader_BlackGlass td {
	white-space:nowrap;
}

.dxgvFilterRow_BlackGlass 
{
	background-color: #eef2f5;
}

.dxgvFilterRow_BlackGlass 
{
	background-color: #eef2f5;
}

.dxgvFilterRow_BlackGlass 
{
	background-color: #eef2f5;
}

.dxgvFilterRow_BlackGlass 
{
	background-color: #eef2f5;
}

.dxgvFilterRow_BlackGlass 
{
	background-color: #eef2f5;
}

.dxgvFilterRow_BlackGlass td.dxgv
{
	border-bottom: solid 1px #c2d4da;
	border-right: 1px solid #c2d4da;
	border-top: 0;
	border-left: 0;
	padding: 2px 2px 2px 2px;
}
.dxgvCommandColumn_BlackGlass
{
	padding: 2px 2px 2px 2px;
}

.dxgvCommandColumn_BlackGlass
{
	padding: 2px 2px 2px 2px;
}
.dxgvCommandColumn_BlackGlass
{
	padding: 2px 2px 2px 2px;
}

.dxgvCommandColumn_BlackGlass
{
	padding: 2px 2px 2px 2px;
}

.dxgvCommandColumn_BlackGlass
{
	padding: 2px 2px 2px 2px;
}
.dxeTextBox_BlackGlass, .dxeMemo_BlackGlass
{
	background-color: white;
    border: Solid 1px #9F9F9F;
}
.dxeTextBox_BlackGlass
{
	background-color: white;
    border: Solid 1px #9F9F9F;
}
.dxeTextBox_BlackGlass
{
	background-color: white;
    border: Solid 1px #9F9F9F;
}
.dxeTextBox_BlackGlass
{
	background-color: white;
    border: Solid 1px #9F9F9F;
}
.dxeTextBox_BlackGlass
{
	background-color: white;
    border: Solid 1px #9F9F9F;
}
.dxeTextBox_BlackGlass td.dxic
{
	width: 100%;
}
.dxeTextBox_BlackGlass td.dxic
{
	padding: 1px 2px;
}
.dxeEditArea_BlackGlass
{
	font-family: Tahoma;
	font-size: 9pt;
	border: 1px solid #A0A0A0;
}

.dxeEditArea_BlackGlass
{
	font-family: Tahoma;
	font-size: 9pt;
	border: 1px solid #A0A0A0;
}
    
.dxeEditArea_BlackGlass
{
	font-family: Tahoma;
	font-size: 9pt;
	border: 1px solid #A0A0A0;
}

.dxeEditArea_BlackGlass
{
	font-family: Tahoma;
	font-size: 9pt;
	border: 1px solid #A0A0A0;
}

.dxeEditArea_BlackGlass
{
	font-family: Tahoma;
	font-size: 9pt;
	border: 1px solid #A0A0A0;
}

.dxgvEditFormDisplayRow_BlackGlass,
.dxgvDataRow_BlackGlass,
.dxgvDataRowAlt_BlackGlass,
.dxgvSelectedRow_BlackGlass,
.dxgvFocusedRow_BlackGlass
{
	background-color: #FFFFFF;
}

.dxgvInlineEditRow_BlackGlass,
.dxgvDataRow_BlackGlass
{
	font: 9pt Tahoma;
	background-color: White;
}

.dxgvDataRow_BlackGlass
{
	font: 9pt Tahoma;
	background-color: White;
}

.dxgvDataRow_BlackGlass
{
	background-color: #FFFFFF;
}

.dxgvEditFormDisplayRow_BlackGlass td.dxgv,
.dxgvDataRow_BlackGlass td.dxgv,
.dxgvDataRowAlt_BlackGlass td.dxgv,
.dxgvSelectedRow_BlackGlass td.dxgv,
.dxgvFocusedRow_BlackGlass td.dxgv
{
	overflow: hidden;
	border-bottom: solid 1px #a4bed1;
	border-right: solid 1px #a4bed1;
	border-top: 0;
	border-left: 0;
	padding: 3px 6px 3px 6px;
}

.dxgvDataRow_BlackGlass td.dxgv
{
	overflow: hidden;
	border-bottom: solid 1px #a4bed1;
	border-right: solid 1px #a4bed1;
	border-top: 0;
	border-left: 0;
	padding: 3px 6px 3px 6px;
}

.dxgvControl_BlackGlass .dxpControl_BlackGlass
{
	background-color: #eef2f5;
}

.dxgvControl_BlackGlass .dxpControl_BlackGlass
{
	background-color: #eef2f5;
}

.dxpControl_BlackGlass
{
	font: 9pt Tahoma;
	color: black;
	padding: 14px 20px 15px;
}

.dxpControl_BlackGlass
{
	font: 9pt Tahoma;
	color: black;
	padding: 14px 20px 15px;
}
.dxpSummary_BlackGlass
{
	font: 9pt Tahoma;
	color: black;
	white-space: nowrap;
	text-align: center;
	vertical-align: middle;
	padding: 0px;
}
.dxpSummary_BlackGlass
{
	font: 9pt Tahoma;
	color: black;
	white-space: nowrap;
	text-align: center;
	vertical-align: middle;
	padding: 0px;
}
.dxpDisabled_BlackGlass
{
	color: #9f9f9f;
	border-color: #9f9f9f;
	cursor: default;
}

.dxpDisabledButton_BlackGlass
{
	font: 9pt Tahoma;
	color: black;
	text-decoration: none;
}
.dxpButton_BlackGlass
{
	font: 9pt Tahoma;
	color: #394EA2;
	text-decoration: underline;
	white-space: nowrap;
	text-align: center;
	vertical-align: middle;
}
.dxpButton_BlackGlass
{
	font: 9pt Tahoma;
	color: #394EA2;
	text-decoration: underline;
	white-space: nowrap;
	text-align: center;
	vertical-align: middle;
}

.dxpDisabledButton_BlackGlass
{
	font: 9pt Tahoma;
	color: black;
	text-decoration: none;
}
.dxpDisabled_BlackGlass
{
	color: #9f9f9f;
	border-color: #9f9f9f;
	cursor: default;
}

.dxpCurrentPageNumber_BlackGlass
{
	font: 9pt Tahoma;
	color: White;
	background-color: #3e6b96;
	text-decoration: underline;
	padding: 0px 3px 0px 3px;
}
.dxpPageNumber_BlackGlass
{
	font: 9pt Tahoma;
	color: #3e6b96;
	text-decoration: underline;
	text-align: center;
	vertical-align: middle;
	padding: 0px 3px;
}
.dxpPageNumber_BlackGlass
{
	font: 9pt Tahoma;
	color: #3e6b96;
	text-decoration: underline;
	text-align: center;
	vertical-align: middle;
	padding: 0px 3px;
}
.dxpCurrentPageNumber_BlackGlass
{
	font: 9pt Tahoma;
	color: White;
	background-color: #3e6b96;
	text-decoration: underline;
	padding: 0px 3px 0px 3px;
}

body {
	padding: 80px 0px 0px;
	background:  #003366 repeat-x;
	color: #695d47;
	font-family: verdana, arial, sans-serif;
	font-size: 12px;
	text-align: center;
}

   


    .style1
    {
        font-family: Verdana;
        font-size: large;
        color: #FFFFFF;
    }
    .style2
    {
        font-family: Verdana;
        font-size: x-small;
        color: #FFFFFF;
    }

   


    .style3
    {
        width: 112px;
    }
    .style4
    {
        width: 21px;
    }

   


    .style5
    {
        font-size: small;
        font-weight: bold;
    }
    .style6
    {
        font-size: small;
        font-weight: bold;
        font-family: Verdana;
        height: 24px;
        text-align: left;
    }
    .style7
    {
        font-weight: bold;
    }
    .style8
    {
        color: #000000;
        font-size: small;
    }
    .style9
    {
        font-size: small;
        font-family: Verdana;
        height: 40px;
    }
    .style10
    {
        width: 21px;
        height: 40px;
    }
    .style11
    {
        font-family: Verdana;
    }
    .style12
    {
        color: #000000;
        font-size: small;
        font-family: Verdana;
    }
    .style13
    {
        color: #000000;
        font-size: small;
        text-align: left;
        font-family: Verdana;
    }
    .style14
    {
        width: 112px;
        font-family: Verdana;
    }
    .style15
    {
        font-family: Verdana;
        font-size: small;
        text-align: left;
    }
    .style16
    {
        height: 24px;
    }

</style>

<script type="text/javascript" language="javascript">
    
    //esta funcion solo deja ingresar numeros enteros
   
function validar(e) 
{
    tecla = (document.all) ? e.keyCode : e.which;
    if (tecla==8) return true; //Tecla de retroceso (para poder borrar)
    if (tecla>47 && tecla <58)
            	{
                	return String.fromCharCode(tecla);
            	}
            	return false;
} 

</script>

<table style="width: 40%; color: #000000; height: 495px; margin-right: 0px;" 
    bgcolor="AliceBlue">
        <tr>
            <td align="center" 
                
                
                style="height: 9px; background-color: #002F91;" 
                colspan="8" class="style1">
                Orden Compra</td>
        </tr>
        <tr>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; " 
                colspan="8" class="style5">
                Aldental S.A.</td>
        </tr>
        <tr>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; " 
                colspan="8" class="style2">
                Ruc:#####</td>
        </tr>
        <tr>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; background-color: #C0C0C0; height: 9px; text-align: left;" 
                colspan="8">
                ORDEN DE COMPRA&nbsp;&nbsp;&nbsp; Nº:<b><asp:TextBox ID="TextBoxIdOrdenCompra" 
                    runat="server" Width="85px" Enabled="False" onkeypress="return validar(event)"></asp:TextBox>
                </b>
                </td>
        </tr>
        <tr>
            <td align="center" 
                
                
                
                style="color: #000000; font-size: small; font-weight: bold; text-align: left;" 
                class="style11">
                        <dxnb:ASPxNavBar ID="ASPxNavBar5" runat="server" 
                            CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                            GroupSpacing="0px" ImageFolder="~/App_Themes/BlackGlass/{0}/">
                            <Groups>
                                <dxnb:NavBarGroup Text="REPORTE">
                                    <Items>
                                        <dxnb:NavBarItem NavigateUrl="~/WebForm_BuscarOrdenCompra.aspx" 
                                            Text="Lista de Orden Compra">
                                        </dxnb:NavBarItem>
                                    </Items>
                                </dxnb:NavBarGroup>
                            </Groups>
                            <GroupContentStyle ItemSpacing="1px">
                            </GroupContentStyle>
                            <CollapseImage Height="17px" Url="~/App_Themes/BlackGlass/Web/nbCollapse.gif" 
                                Width="18px" />
                            <ExpandImage Height="17px" Url="~/App_Themes/BlackGlass/Web/nbExpand.gif" 
                                Width="18px" />
                        </dxnb:ASPxNavBar>
            </td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="2">
                <asp:Image ID="Image3" runat="server" Height="116px" 
                    ImageUrl="~/images/consultores.JPG" Width="127px" />
                                            </td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="2" class="style3">
                <asp:Image ID="Image2" runat="server" Height="116px" 
                    ImageUrl="~/images/finanzas.jpg" Width="118px" />
                        </td>
            <td align="center" 
                
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style13">
                Proveedor:</td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="1">
                <asp:DropDownList ID="DropDownListProvee" runat="server" 
                    DataSourceID="ObjectDataSourceProvee" DataTextField="NombreProvee" 
                    DataValueField="idProveedor" Height="19px" Width="128px" Enabled="False">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSourceProvee" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                    TypeName="BaseAldental.DataSetFacturacionTableAdapters.proveedorTableAdapter">
                </asp:ObjectDataSource>
                <b>
                <asp:TextBox ID="TextBoxProveedor" runat="server" Visible="False"></asp:TextBox>
                </b>
                </td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; text-align: left;" 
                colspan="2" class="style3" rowspan="6">
                <b>Fecha de pedido:</b><dxe:ASPxCalendar ID="ASPxCalendarFac" runat="server" 
                    CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                    ImageFolder="~/App_Themes/BlackGlass/{0}/" Enabled="False">
                    <FooterStyle Spacing="4px" />
                    <FastNavPrevYearImage Height="13px" Width="13px" />
                    <NextMonthImage Height="13px" Width="13px" />
                    <FastNavFooterStyle Spacing="4px">
                    </FastNavFooterStyle>
                    <PrevYearImage Height="13px" Width="13px" />
                    <FastNavStyle MonthYearSpacing="4px">
                    </FastNavStyle>
                    <PrevMonthImage Height="13px" Width="13px" />
                    <FastNavNextYearImage Height="13px" Width="13px" />
                    <NextYearImage Height="13px" Width="13px" />
                    <ValidationSettings>
                        <ErrorImage Height="14px" Url="~/App_Themes/BlackGlass/Editors/Error.gif" 
                            Width="14px" />
                        <ErrorFrameStyle ImageSpacing="4px">
                            <ErrorTextPaddings PaddingLeft="4px" />
                        </ErrorFrameStyle>
                    </ValidationSettings>
                    <HeaderStyle Spacing="1px" />
                </dxe:ASPxCalendar>
                <asp:TextBox ID="TextBoxFechaPedido" runat="server" Visible="False" 
                    Height="20px" Width="124px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" 
                
                
                
                
                style="color: #000000; font-size: small; text-align: left;" 
                class="style11">
                Forma depago:</td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="1">
                <asp:DropDownList ID="DropDownListFormaPago" runat="server" 
                    DataSourceID="ObjectDataSourceforpao" DataTextField="NombreFormaPago" 
                    DataValueField="idFormaPago" Height="19px" Width="120px" Enabled="False">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSourceforpao" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                    TypeName="BaseAldental.DataSetfacturaTableAdapters.formapagoTableAdapter">
                </asp:ObjectDataSource>
                <asp:TextBox ID="TextBoxFormaPago" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" 
                
                
                
                
                style="color: #000000; font-size: small; text-align: left;" 
                class="style11">
                Empleado:</td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="1">
                <asp:DropDownList ID="DropDownListEmplado" runat="server" 
                    DataSourceID="ObjectDataSourceEmpeado" DataTextField="NombreEmp" 
                    DataValueField="idEmpleado" Height="19px" Width="120px" Enabled="False">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSourceEmpeado" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                    TypeName="BaseAldental.DataSetFacturacionTableAdapters.empleadoTableAdapter">
                </asp:ObjectDataSource>
                <asp:TextBox ID="TextBoxEmpleado" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style12">
                CreditoFactura:</td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="1">
                <asp:DropDownList ID="DropDownListCreditp" runat="server" 
                    DataSourceID="ObjectDataSourceCredito" DataTextField="NombreCredito" 
                    DataValueField="idCreditoFactura" Height="16px" Width="120px" 
                    Enabled="False">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSourceCredito" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                    TypeName="BaseAldental.DataSetfacturaTableAdapters.CreditoFacturaTableAdapter">
                </asp:ObjectDataSource>
                <asp:TextBox ID="TextBoxCreditoFactura" runat="server" Visible="False"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style9">
                EstadoFactura:</td>
            <td class="style9">
                                <asp:DropDownList ID="DropDownListEstadoFactura" runat="server" 
                                    DataSourceID="ObjectDataSourceEstadoFactura" DataTextField="NombreEstado" 
                                    DataValueField="idEstadoFac" Enabled="False">
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSourceEstadoFactura" runat="server" 
                                    SelectMethod="Registrosestadofactura" TypeName="ClasesAldental.estadofactura">
                                </asp:ObjectDataSource>
                <asp:TextBox ID="TextBoxEstadoFactura" runat="server" Visible="False"></asp:TextBox>
                                                    </td>
            <td align="center" 
                colspan="1" class="style10" id="DropDownListEstadoFactura">
                                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style15">
                Condición:</td>
            <td align="center" class="style15">
            <asp:CheckBox ID="CheckBoxCondicion" runat="server" Width="97px" />
                                                    </td>
            <td align="center" 
                colspan="1">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" 
                colspan="4" class="style16">
                                <dxm:ASPxMenu ID="ASPxMenuOperaciones1" runat="server" 
    AccessibilityCompliant="True" AutoSeparators="RootOnly" 
    CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
    ImageFolder="~/App_Themes/BlackGlass/{0}/" ItemSpacing="0px" 
    onitemclick="ASPxMenuOperaciones1_ItemClick" SeparatorColor="#16171B" 
    SeparatorHeight="100%" SeparatorWidth="1px" ShowPopOutImages="True">
                                    <rootitemsubmenuoffset firstitemx="-1" lastitemx="-1" 
        x="-1"/>
                                    <Items>
                                        <dxm:MenuItem Text="Nuevo" Name="Nuevo">
                                            <image alternatetext="Nuevo" height="20px" url="~/images/add-32.png" 
                width="20px" />
                                        </dxm:MenuItem>
                                        <dxm:MenuItem Text="Facturar" ClientEnabled="False" Name="Facturar">
                                            <image height="20px" url="~/images/Saveas.JPG" width="20px" />
                                        </dxm:MenuItem>
                                        <dxm:MenuItem Text="Buscar" Name="Buscar">
                                            <image height="20px" url="~/images/buscar-32.png" width="20px" />
                                        </dxm:MenuItem>
                                    </Items>
                                    <submenustyle gutterwidth="0px"></submenustyle>
                                    <submenuitemstyle wrap="False">
                                    </submenuitemstyle>
                                    <border bordercolor="#16171B" borderstyle="Solid" 
        borderwidth="1px"></border>
                                    <horizontalpopoutimage height="7px" 
        url="~/App_Themes/BlackGlass/Web/mHorizontalPopOut.png" width="7px" />
                                </dxm:ASPxMenu>
                </td>
            <td 
                colspan="1" class="style6">
                Codigo:<span class="style8">Codigo:</span><span class="style7">Codigo:</span><asp:TextBox ID="TextBoxBuscar" runat="server" Width="85px" 
                                                ontextchanged="TextBoxBuscar_TextChanged" onkeypress="return validar(event)"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center" 
                
                
                style="background-color: #002F91;" 
                colspan="8" class="style2">
                Detalle de la Orde de Compra</td>
        </tr>
        <tr>
            <td align="center" 
                
                
                
                style="color: #000000; font-size: small; text-align: left;" 
                class="style11">
                            Producto:</td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="1">
                <asp:DropDownList ID="DropDownListProd" runat="server" Height="18px" 
                    Width="127px" DataSourceID="ObjectDataSourceProducto" 
                    DataTextField="NombreProducto" DataValueField="idProducto" Enabled="False">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSourceProducto" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                    TypeName="BaseAldental.DataSetProductoTableAdapters.productoTableAdapter">
                </asp:ObjectDataSource>
            </td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; height: 9px; " class="style14">
                Cantidad :</td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; height: 9px; " class="style14">
                <asp:TextBox ID="TextBoxCantidad" runat="server" Width="73px" Enabled="False" onkeypress="return validar(event)"></asp:TextBox>
                </td>
            <td align="center" 
                
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" 
                
                
                
                style="color: #000000; font-size: small; font-weight: bold; text-align: left;" 
                class="style11">
                &nbsp;</td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: center;" 
                colspan="6">
                <b>Agregar al detalle&nbsp; </b>
                <asp:ImageButton ID="ImageButtonAgregarDetalle" runat="server" 
                    ImageUrl="~/images/add-32.png" Width="31px" Height="19px" 
                                onclick="ImageButtonNuevo_Click" Visible="False" />
                        </td>
            <td align="center" 
                
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="1" class="style3" rowspan="2">
                &nbsp;</td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="3" class="style3" rowspan="2">
                <dxwgv:ASPxGridView ID="ASPxGridViewOrdenCompra" runat="server" 
                    AutoGenerateColumns="False" 
                    style="text-align: center" 
                    CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                    CssPostfix="BlackGlass" Width="16px" KeyFieldName="idFP">
                    <SettingsCustomizationWindow Height="60px" />
                    <Styles CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                        CssPostfix="BlackGlass">
                        <Header ImageSpacing="5px" SortingImageSpacing="5px">
                        </Header>
                    </Styles>
                    <settingspager>
                        <FirstPageButton>
                            <Image Height="20px" Width="20px" />
                        </FirstPageButton>
                        <LastPageButton>
                            <Image Height="20px" Width="20px" />
                        </LastPageButton>
                        <NextPageButton>
                            <Image Height="20px" Width="20px" />
                        </NextPageButton>
                        <PrevPageButton>
                            <Image Height="20px" Width="20px" />
                        </PrevPageButton>
                    </settingspager>
                    <Images ImageFolder="~/App_Themes/BlackGlass/{0}/">
                        <FilterRowButton Height="13px" Width="13px" />
                        <LoadingPanelOnStatusBar Height="10px" Width="10px" />
                        <CollapsedButton Height="10px" Width="10px" />
                        <ExpandedButton Height="10px" Width="10px" />
                        <DetailCollapsedButton Height="10px" Width="10px" />
                        <DetailExpandedButton Height="10px" Width="10px" />
                        <HeaderFilter Height="10px" Width="10px" />
                        <HeaderActiveFilter Height="10px" Width="10px" />
                        <HeaderSortDown Height="10px" Width="10px" />
                        <HeaderSortUp Height="10px" Width="10px" />
                        <DragAndDropArrowDown Height="10px" Width="10px" />
                        <DragAndDropArrowUp Height="10px" Width="10px" />
                        <DragAndDropColumnHide Height="10px" Width="10px" />
                        <ParentGroupRows Height="10px" Width="10px" />
                        <CustomizationWindowClose Height="10px" Width="10px" />
                        <PopupEditFormWindowClose Height="10px" Width="10px" />
                        <WindowResizer Height="10px" Width="10px" />
                        <FilterBuilderClose Height="10px" Width="10px" />
                        <LoadingPanel Height="20px" Width="20px" />
                    </Images>
                    <Columns>
                        <dxwgv:GridViewCommandColumn VisibleIndex="0" ShowSelectCheckbox="True">
                            <ClearFilterButton Visible="True">
                            </ClearFilterButton>
                        </dxwgv:GridViewCommandColumn>
<dxwgv:GridViewDataTextColumn FieldName="producto.idProducto" Caption="Código" VisibleIndex="1"></dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Nombre" FieldName="producto.NombreProducto" 
                            VisibleIndex="2">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Stock" FieldName="producto.Stock" 
                            VisibleIndex="3">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Precio" FieldName="producto.Precio" 
                            VisibleIndex="4">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Descripción" FieldName="producto.Descripcion" 
                            VisibleIndex="5">
                        </dxwgv:GridViewDataTextColumn>
                    </Columns>
                    <Settings ShowFilterRow="True" />
                    <StylesEditors>
                        <ProgressBar Height="25px">
                        </ProgressBar>
                    </StylesEditors>
                    <ImagesEditors>
                        <ButtonEditEllipsis Height="10px" Width="10px" />
                    </ImagesEditors>
                </dxwgv:ASPxGridView>
            </td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="2" class="style3">
                                            <dxpc:ASPxPopupControl ID="ASPxPopupControlError" 
                    runat="server" AccessibilityCompliant="True" AppearAfter="0" 
                    CloseAction="CloseButton" CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                    CssPostfix="BlackGlass" DisappearAfter="10" FooterText="Error en la Orden de Compra" 
                    HeaderText="Información" Height="81px" 
                    ImageFolder="~/App_Themes/BlackGlass/{0}/" Left="600" Modal="True" 
                    PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter" 
                    ShowFooter="True" Top="600" Width="181px">
                                                <ContentStyle HorizontalAlign="Left" VerticalAlign="Top">
                                                </ContentStyle>
                                                <FooterImage Height="12px" Width="12px" />
                                                <SizeGripImage Height="12px" Url="~/App_Themes/BlackGlass/Web/pcSizeGrip.gif" 
                                                    Width="12px" />
                                                <ContentCollection>
                                                    <dxpc:PopupControlContentControl runat="server">
                                                        <dxe:ASPxLabel ID="ASPxLabelMe" runat="server">
                                                        </dxe:ASPxLabel>
                                                    </dxpc:PopupControlContentControl>
                                                </ContentCollection>
                                                <CloseButtonImage Height="12px" 
                                                    Url="~/App_Themes/BlackGlass/web/pcItemCloseButton.gif" Width="12px" />
                                                <HeaderStyle>
                                                <Paddings PaddingBottom="6px" PaddingLeft="15px" PaddingRight="6px" 
                                                    PaddingTop="3px" />
                                                </HeaderStyle>
                                                <HeaderImage Height="12px" Width="12px" />
                </dxpc:ASPxPopupControl>
            </td>
        </tr>
        <tr>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="2" class="style3">
                <asp:Button ID="ButtonBorrarItems" runat="server" 
                    onclick="ButtonBorrarItems_Click" Text="Borrar Items" 
                    ToolTip="Sirve para borrar los detalles seleccionados" Width="97px" 
                    Visible="False" BackColor="#B9E9FF" />
            </td>
        </tr>
        <tr>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="1" class="style3">
                Sub Total:</td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; text-align: left;" 
                colspan="3" class="style4">
                <asp:TextBox ID="TextBoxSubTotal" runat="server" Height="20px" BorderColor="#666633" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td align="center" 
                
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                class="style3">
                &nbsp;</td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="2" class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="1" class="style3">
                Iva autorizado:</td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; text-align: left;" 
                colspan="3" class="style4">
                <asp:TextBox ID="TextBoxIva" runat="server" BorderColor="#666633" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td align="center" 
                
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                class="style3">
                &nbsp;</td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="2" class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="1" class="style3">
                Total:</td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; text-align: left;" 
                colspan="3" class="style4">
                <asp:TextBox ID="TextBoxTotal" runat="server" BorderColor="#666633" 
                    Enabled="False"></asp:TextBox>
            </td>
            <td align="center" 
                
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                class="style3">
                &nbsp;</td>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="2" class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" 
                
                
                style="color: #000000; font-size: small; font-weight: bold; height: 9px; text-align: left;" 
                colspan="8" class="style3">
                &nbsp;</td>
        </tr>
        </table>
