<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlClien.ascx.cs" Inherits="Aldental.WebUserControlClien" %>
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
}

    .style1
    {
        font-size: large;
    }

    .style12
    {
        font-size: large;
        height: 36px;
        width: 420px;
    }
    .style13
    {
        height: 25px;
        width: 420px;
    }
    .style10
    {
        height: 20px;
        width: 523px;
    }
    .style14
    {
        height: 20px;
        width: 420px;
    }
    .style15
    {
        width: 420px;
    }

img {
	border-style: none;
	border-color: inherit;
	border-width: medium;
	height: 505px;
}

    .style3
    {
        font-weight: bold;
        text-align: right;
        font-size: small;
    }
    .style4
    {
        text-align: center;
    }

    .style11
    {
        width: 523px;
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
.dxnbGroupHeader_BlackGlass
{
	font: 9pt Tahoma;
	color: White;
	background: #444444 url('App_Themes/BlackGlass/Web/nbItemBack.gif') repeat-x left top;
	border-left: solid 1px Black;
	border-top: solid 1px Black;
	padding: 4px 6px 5px 10px;
}
.dxnbGroupHeader_BlackGlass
{
	text-align: left;
}
.dxnbGroupHeader_BlackGlass table.dxnb
{
	font: 9pt Tahoma;
	color: black;
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
.dxnbItem_BlackGlass
{
	color: #4F4F51;
	background-color: #E8EDF1;
}
.dxnbItem_BlackGlass
{
	font: 9pt Tahoma;
	padding-top: 6px;
	padding-right: 5px;
	padding-bottom: 7px;
	padding-left: 10px;
}
.dxnbItem_BlackGlass
{
    text-align: left;
}
.dxnbControl_BlackGlass a
{
	color: Black;
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

    .style2
    {
        font-size: x-small;
        font-weight: bold;
    }
    .style6
    {
        font-size: x-small;
        font-weight: bold;
        width: 99px;
    }
    .style7
    {
        width: 99px;
    }
    .style16
    {
        height: 21px;
    }
    .style17
    {
        width: 19px;
        height: 21px;
    }
    .style18
    {
        width: 159px;
        height: 21px;
    }
    .style19
    {
        width: 183px;
        height: 21px;
    }
    .style20
    {
        width: 523px;
        height: 21px;
    }
    .style21
    {
        width: 420px;
        height: 21px;
    }
    .style22
    {
        color: #FFFFFF;
        text-align: center;
        font-size: large;
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
        <table style="width: 77%" bgcolor="AliceBlue">
    <tr>
        <td bgcolor="#003366" colspan="6" 
            style="background-color: #003366; height: 25px;" class="style22">
            Cliente</td>
        <td bgcolor="#003366" 
            style="background-color: #003366; " class="style13">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 20px; " colspan="4">
            <b style="color: #663300; font-weight: bolder; text-decoration: underline;">
            DATOS PERSONALES</b></td>
        <td class="style10">
            &nbsp;</td>
        <td class="style14">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="5">
            &nbsp;</td>
        <td class="style15">
            &nbsp;</td>
    </tr>
    <tr>
        <td rowspan="6" style="width: 163px">
            <asp:Image ID="Image6" runat="server" Height="117px" 
                                                    ImageUrl="~/images/cliente.jpeg" 
                Width="160px" />
        </td>
        <td style="width: 19px; height: 22px;">
            </td>
        <td style="width: 159px; height: 22px;" class="style3">
            Código :</td>
        <td style="width: 183px; color: #FF0000; font-weight: bold; height: 22px;" 
            class="style4">
            <asp:TextBox ID="txtCodigoC" runat="server" BorderColor="#663300" onkeypress="return validar(event)"></asp:TextBox>
        </td>
        <td rowspan="6" style="color: #FF0000; font-weight: bold;" class="style11">
            <asp:Image ID="Image5" runat="server" Height="104px" 
                    ImageUrl="~/images/User-128x128[1].PNG" Width="109px" />
        </td>
        <td rowspan="6" style="color: #FF0000; font-weight: bold;" class="style15">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 19px">
            &nbsp;</td>
        <td style="width: 159px" class="style3">
            Nombre :</td>
        <td style="width: 183px; color: #FF0000; font-weight: bold;" class="style4">
            <asp:TextBox ID="txtNombreC" runat="server" BorderColor="#663300"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="RequiredFieldValidator" ControlToValidate="txtNombreC" Display="None"></asp:RequiredFieldValidator>
            
        </td>
    </tr>
    <tr>
        <td rowspan="4" style="width: 19px">
            &nbsp;</td>
        <td style="width: 159px" class="style3">
            Apellido :</td>
        <td style="width: 183px; color: #FF0000; font-weight: bold;" class="style4">
            <asp:TextBox ID="txtApellidoC" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 159px" class="style3">
            Cédula : 
        </td>
        <td style="width: 183px; color: #FF0000; font-weight: bold;" class="style4">
            <asp:TextBox ID="txtCiC" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 159px" class="style3">
            Dirección :</td>
        <td style="width: 183px" class="style4">
            <asp:TextBox ID="txtDirecC" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 159px" class="style3">
            Celular :</td>
        <td style="width: 183px" class="style4">
            <asp:TextBox ID="txtCelularC" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="width: 163px">
            <b>Activo</b>
            <asp:CheckBox ID="CheckBoxActivo" runat="server" />
        </td>
        <td style="width: 19px">
            &nbsp;</td>
        <td style="width: 159px" class="style3">
            Teléfono :</td>
        <td style="width: 183px" class="style4">
            <asp:TextBox ID="txtFonoC" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
        <td class="style11">
            &nbsp;</td>
        <td class="style15">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            </td>
        <td class="style17">
            </td>
        <td class="style18">
            </td>
        <td style="color: #FF0000; font-weight: bold;" class="style19">
            </td>
        <td style="color: #FF0000; font-weight: bold;" class="style20">
            </td>
        <td style="color: #FF0000; font-weight: bold;" class="style21">
            </td>
    </tr>
    <tr>
        <td class="style16" colspan="6">
            <table 
                style="width: 99%;">
                <tr>
                    <td style="width: 183px; text-align: center; height: 43px">
                        &nbsp;</td>
                    <td style="text-align: center; height: 43px; " colspan="5">
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
                    <td style="height: 43px">
                        <b>CODIGO:</b><br />
                        <asp:TextBox ID="TextBoxBuscar" runat="server" Width="85px" onkeypress="return validar(event)"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 183px; text-align: center">
                        <dxnb:ASPxNavBar ID="ASPxNavBar5" runat="server" 
                            CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                            GroupSpacing="0px" ImageFolder="~/App_Themes/BlackGlass/{0}/">
                            <Groups>
                                <dxnb:NavBarGroup Text="REPORTE">
                                    <Items>
                                        <dxnb:NavBarItem NavigateUrl="~/WebForm_BuscarClien.aspx" 
                                            Text="Lista Clientes">
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
                    <td style="text-align: center; width: 83px;" class="style2">
                        &nbsp;</td>
                    <td style="text-align: center; width: 85px;" class="style2">
                        &nbsp;</td>
                    <td style="width: 100px; text-align: center" class="style2">
                        &nbsp;</td>
                    <td style="text-align: center; " class="style6">
                        &nbsp;</td>
                    <td style="text-align: center; width: 60px;" class="style2">
                        &nbsp;</td>
                    <td>
                                            <dxpc:ASPxPopupControl ID="ASPxPopupControlError" 
                    runat="server" AccessibilityCompliant="True" AppearAfter="0" 
                    CloseAction="CloseButton" CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                    CssPostfix="BlackGlass" DisappearAfter="10" FooterText="Error en la Busqueda" 
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
                    <td style="width: 183px">
                        &nbsp;</td>
                    <td style="width: 83px">
                        &nbsp;</td>
                    <td style="width: 85px">
                        &nbsp;</td>
                    <td style="width: 100px">
                        &nbsp;</td>
                    <td class="style7">
                        &nbsp;</td>
                    <td style="width: 60px">
                        &nbsp;</td>
                    <td>
                        
                    </td>
                </tr>
            </table>
            
            </td>
    </tr>
    <tr>
        <td colspan="5">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td class="style15">
            &nbsp;</td>
    </tr>
</table>


