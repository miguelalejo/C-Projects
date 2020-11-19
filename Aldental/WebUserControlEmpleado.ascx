<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlEmpleado.ascx.cs" Inherits="Aldental.WebUserControlempleado" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dxnb" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dxm" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dxpc" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>
<style type="text/css">
* {
	margin: 0px 2px 1px 0px;
	padding: 0px;
	}

body {
	padding: 80px 0px 0px;
	background:  #003366 repeat-x;
	color: #695d47;
	font-family: "Times New Roman", Times, serif;
	font-size: small;
	text-align: center;
        text-decoration: underline;
    }

img {
	border-style: none;
	border-color: inherit;
	border-width: medium;
	}

span {
	display: none;
	font-weight: 700;
}

.dxnbControl_BlackGlass 
{
	font: 9pt Tahoma;
	color: black;
	background-color: white;
	border-right: solid 1px Black;
	border-bottom: solid 1px Black;
}
.dxnbGroupHeader_BlackGlass, .dxnbGroupHeaderCollapsed_BlackGlass
{
	text-align: left;
}
.dxnbGroupHeader_BlackGlass
{
	font: 9pt Tahoma;
	color: White;
	background: #444444 url('App_Themes/BlackGlass/Web/nbItemBack.gif') repeat-x left top;
	border-left: solid 1px Black;
	border-top: solid 1px Black;
	padding: 4px 6px 5px 10px;
}
.dxnbGroupHeader_BlackGlass table.dxnb
{
	font: 9pt Tahoma;
	color: black;
}
.dxnbGroupHeader_BlackGlass td.dxnb
{
	color: White;
	white-space: nowrap;
}

.dxnbGroupContent_BlackGlass
{
	font: 9pt Tahoma;
	color: #4F4F51;
	background-color: #a4bed1;
	border-left: solid 1px Black;
	border-top: solid 1px Black;
}
.dxnbItem_BlackGlass, .dxnbItemHover_BlackGlass, .dxnbItemSelected_BlackGlass,
.dxnbBulletItem_BlackGlass, .dxnbBulletItemHover_BlackGlass, .dxnbBulletItemSelected_BlackGlass
{
    text-align: left;
}
.dxnbItem_BlackGlass
{
	font: 9pt Tahoma;
	padding-top: 6px;
	padding-right: 5px;
	padding-bottom: 7px;
	padding-left: 10px;
}
.dxnbItem_BlackGlass, .dxnbLargeItem_BlackGlass, .dxnbBulletItem_BlackGlass
{
	color: #4F4F51;
	background-color: #E8EDF1;
}
.dxnbControl_BlackGlass a
{
	color: Black;
}

a {
	color: #695d47;
	background-color: inherit;
	text-decoration: underline;
}

    .style4
    {
        width: 101px;
    }
    .style5
    {
    }
    .style6
    {
        font-size: x-small;
        font-weight: bold;
    }
    .style9
    {
        width: 139px;
    }
    .style10
    {
        color: #000000;
    }
    .style12
    {
        height: 16px;
    }
    .style13
    {
        font-size: large;
        color: #FFFFFF;
        text-align: center;
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
    <table style="width: 101%" bgcolor="AliceBlue">
        <tr bgcolor="#006699">
            <td style="height: 21px; background-color: #003366; " bgcolor="#003399" 
                colspan="8" class="style13">
                EMPLEADO</td>
        </tr>
        <tr>
            <td style="width: 35px; height: 20px;">
            </td>
            <td style="height: 20px; " colspan="4">
                <b style="color: #663300; font-weight: bolder; text-decoration: underline;">
                DATOS PERSONALES</b></td>
            <td style="height: 20px; width: 246px;">
                &nbsp;</td>
            <td style="height: 20px;" colspan="2">
                                                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 35px">
                                                &nbsp;</td>
            <td colspan="7">
                                                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 35px">
                &nbsp;</td>
            <td rowspan="7">
                <asp:Image ID="Image6" runat="server" Height="125px" 
                                                    ImageUrl="~/images/emple1.jpeg" 
                    Width="120px" />
            </td>
            <td style="width: 96px">
                &nbsp;</td>
                                            <td style="width: 159px">
                                              <b>Código:</b>  </td>
                                            <td style="width: 214px; color: #FF0000; font-weight: bold;">
                                                <asp:TextBox ID="txtCodigoV" runat="server" BorderColor="#663300" onkeypress="return validar(event)"></asp:TextBox>
                                            </td>
                                            <td style="color: #FF0000; font-weight: bold;" 
                colspan="3" rowspan="6" align="center">
                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Image ID="Image5" runat="server" Height="106px" 
                    ImageUrl="~/images/emple.jpeg" Width="155px" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 35px">
                                                &nbsp;</td>
                                            <td style="width: 96px">
                                                &nbsp;</td>
                                            <td style="width: 159px">
                                                <b>Nombre:</b></td>
            <td style="width: 214px; color: #FF0000; font-weight: bold;">
                <asp:TextBox ID="txtNombreV" runat="server" BorderColor="#663300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 35px">
                &nbsp;</td>
            <td rowspan="4" style="width: 96px">
                &nbsp;</td>
            <td style="width: 159px">
                <b>Apellido:</b></td>
            <td style="width: 214px; color: #FF0000; font-weight: bold;">
                <asp:TextBox ID="txtApellidoV" runat="server" BorderColor="#663300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 35px">
                &nbsp;</td>
            <td style="width: 159px">
                <b>Cédula: </b>
            </td>
            <td style="width: 214px; color: #FF0000; font-weight: bold;">
                <asp:TextBox ID="txtCiV" runat="server" BorderColor="#663300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 35px">
            </td>
            <td style="width: 159px">
                <b>Dirección </b>
            </td>
            <td style="width: 214px">
                <asp:TextBox ID="txtDirecV" runat="server" BorderColor="#663300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 35px">
                &nbsp;</td>
            <td style="width: 159px">
                <b>Celular </b>
            </td>
            <td style="width: 214px">
                <asp:TextBox ID="txtCelularV" runat="server" BorderColor="#663300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 35px">
                &nbsp;</td>
            <td style="width: 96px">
                &nbsp;</td>
            <td style="width: 159px">
                <b>Teléfono </b>
            </td>
            <td style="width: 214px">
                <asp:TextBox ID="txtFonoV" runat="server" BorderColor="#663300"></asp:TextBox>
            </td>
            <td style="font-weight: bolder; color: #663300;" colspan="3">
                CARGO</td>
        </tr>
        <tr>
            <td style="width: 35px; height: 16px;">
                </td>
            <td class="style12">
                <b>Activo<asp:CheckBox ID="CheckBoxActvio" runat="server" />
                </b></td>
            <td style="width: 96px; height: 16px;">
                </td>
            <td style="width: 159px; height: 16px; font-weight: 700;">
                Fecha Nacimiento<b>:</b> </td>
            <td style="width: 214px; color: #FF0000; font-weight: bold; height: 16px;">
                <asp:TextBox ID="txtEdadV" runat="server" BorderColor="#663300"></asp:TextBox>
            </td>
            <td style="width: 246px;  font-weight: bold; height: 16px;">
                Nombre Cargo:</td>
            <td style="color: #666633; font-weight: bold; height: 16px; width: 109px;">
                <asp:DropDownList ID="DropDownListCargo" runat="server" 
                    DataSourceID="ObjectDataSourceCargo" DataTextField="NombreCargo" 
                    DataValueField="idCargo" 
                    onselectedindexchanged="DropDownListCargo_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSourceCargo" runat="server" 
                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                    TypeName="BaseAldental.DataSetFacturacionTableAdapters.cargoTableAdapter">
                </asp:ObjectDataSource>
                </td>
            <td style="color: #666633; font-weight: bold; height: 16px; width: 196px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 35px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td style="width: 96px">
                &nbsp;</td>
            <td style="width: 159px">
                <b>Aportes:</b> </td>
            <td style="width: 214px; color: #FF0000; font-weight: bold;">
                <asp:TextBox ID="txtSalarioV" runat="server" BorderColor="#663300"></asp:TextBox>
            </td>
            <td style="width: 246px;  font-weight: bold;">
                &nbsp;</td>
            <td style="color: #666633; font-weight: bold; width: 109px;">
                &nbsp;</td>
            <td style="color: #666633; font-weight: bold; width: 196px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 35px">
                </td>
            <td height="1">
                <b>SECAP:</b></td>
            <td style="width: 96px">
                <asp:TextBox ID="TextBox1" runat="server" ontextchanged="TextBox1_TextChanged" 
                    Width="110px"></asp:TextBox>
                </td>
            <td style="width: 159px; font-weight: 700;">
                Descuento Personal:</td>
            <td style="width: 214px; font-weight: bold;" class="style10">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td style="width: 246px; font-weight: bold;" class="style10">
                IECE:</td>
            <td style="font-weight: bold;" colspan="2" class="style10">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td colspan="8">
            <table style="width:100%;">
                <tr>
                        <td class="style4">
                            &nbsp;</td>
                        <td class="style4">
                            &nbsp;</td>
                        <td style="text-align: center;" class="style5" colspan="5">
                                <dxm:ASPxMenu ID="ASPxMenuOperaciones1" runat="server" 
    AccessibilityCompliant="True" AutoSeparators="RootOnly" 
    CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
    ImageFolder="~/App_Themes/BlackGlass/{0}/" ItemSpacing="0px" 
    onitemclick="ASPxMenuOperaciones1_ItemClick" SeparatorColor="#16171B" 
    SeparatorHeight="100%" SeparatorWidth="1px" ShowPopOutImages="True">
                                    <rootitemsubmenuoffset firstitemx="-1" lastitemx="-1" 
        x="-1" />
                                    <Items>
                                        <dxm:MenuItem Text="Nuevo" Name="Nuevo">
                                            <image alternatetext="Nuevo" height="20px" url="~/images/add-32.png" 
                width="20px" />
                                        </dxm:MenuItem>
                                        <dxm:MenuItem Text="Guardar" ClientEnabled="False" Name="Guardar">
                                            <image height="20px" url="~/images/Saveas.JPG" width="20px" />
                                        </dxm:MenuItem>
                                        <dxm:MenuItem Text="Modificar" ClientEnabled="False" Name="Modificar">
                                            <image height="20px" url="~/images/modificar.bmp" width="20px" />
                                        </dxm:MenuItem>
                                        <dxm:MenuItem Text="Eliminar" ClientEnabled="False" Name="Eliminar">
                                            <image height="20px" url="~/images/delete.ico" width="20px" />
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
                        <td class="style9">
                            <asp:Label ID="LabelCodigo" runat="server" Height="20px" Text="Código :  " 
                                Width="95px"></asp:Label>
                            <br />
                <asp:TextBox ID="txtBuscar" runat="server" BorderColor="#663300" Height="22px" 
                                Width="77px" onkeypress="return validar(event)"></asp:TextBox>
                        </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td>
                            <dxnb:ASPxNavBar ID="ASPxNavBar4" runat="server" 
                                CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                                GroupSpacing="0px" Height="20px" ImageFolder="~/App_Themes/BlackGlass/{0}/" 
                                Width="40px">
                                <groups>
                                    <dxnb:NavBarGroup Text="REPORTE">
                                        <itemimage height="20px" url="~/images/emple.jpeg" width="20px" />
                                        <Items>
                                            <dxnb:NavBarItem NavigateUrl="~/WebForm_BuscarEmplea.aspx" 
                                                Text="Empleados">
                                            </dxnb:NavBarItem>
                                        </Items>
                                    </dxnb:NavBarGroup>
                                </groups>
                                <GroupContentStyle ItemSpacing="1px">
                                </GroupContentStyle>
                                <CollapseImage Height="17px" Url="~/App_Themes/BlackGlass/Web/nbCollapse.gif" 
                                    Width="18px" />
                                <ExpandImage Height="17px" Url="~/App_Themes/BlackGlass/Web/nbExpand.gif" 
                                    Width="18px" />
                            </dxnb:ASPxNavBar>
                        </td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style6">
                        &nbsp;</td>
                    <td class="style9">
                                            <dxpc:ASPxPopupControl ID="ASPxPopupControlError" 
                    runat="server" AccessibilityCompliant="True" AppearAfter="0" 
                    CloseAction="CloseButton" CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                    CssPostfix="BlackGlass" DisappearAfter="10" FooterText="Error en la busqueda" 
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
                    <td>
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td bgcolor="#003399" colspan="8">
                        &nbsp;</td>
                </tr>
            </table>
            </td>
        </tr>
        </table>


