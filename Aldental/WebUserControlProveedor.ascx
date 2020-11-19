<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlProveedor.ascx.cs" Inherits="Aldental.WebUserControlProveedor" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dxnb" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dxm" %>
<style type="text/css">
    * {
	margin: 0px 2px 1px 0px;
	padding: 0px;
        text-align: center;
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
        text-align: center;
    }

            .style10
            {
                width: 145px;
            }
            .style11
    {
        height: 38px;
        width: 41px;
    }
    .style12
    {
        height: 20px;
        width: 41px;
    }
    .style13
    {
        width: 41px;
    }
    .style14
    {
        width: 145px;
        font-size: x-small;
        font-weight: bold;
        text-align: center;
    }
    .style15
    {
        font-size: x-small;
        font-weight: bold;
        text-align: center;
    }
    .style18
    {
        font-size: large;
    }
.dxnbControl_Office2003_Olive 
{
	font: 9pt Tahoma;
	color: black;
	background: #9FAB80 url('App_Themes/Office2003%20Olive/Web/nbBack.gif') repeat-x center top;
	padding: 5px;
}
    .dxnbControl_Office2003_Olive 
{
	font: 9pt Tahoma;
	color: black;
	background: #9FAB80 url('App_Themes/Office2003%20Olive/Web/nbBack.gif') repeat-x center top;
	padding: 5px;
}
.dxnbGroupHeader_Office2003_Olive, .dxnbGroupHeaderCollapsed_Office2003_Olive
{
    text-align: left;
}
.dxnbGroupHeader_Office2003_Olive
{
	font: bold 9pt Tahoma;
	color: black;
	background: #EDF2D4 url('App_Themes/Office2003%20Olive/Web/nbGroupHeaderBack.gif') repeat-x left bottom;
	border: solid 1px #758D5E;
	padding: 5px 7px 5px 10px;
}
.dxnbGroupHeader_Office2003_Olive
{
	font: bold 9pt Tahoma;
	color: black;
	background: #EDF2D4 url('App_Themes/Office2003%20Olive/Web/nbGroupHeaderBack.gif') repeat-x left bottom;
	border: solid 1px #758D5E;
	padding: 5px 7px 5px 10px;
}
.dxnbGroupHeader_Office2003_Olive
{
    text-align: left;
}
.dxnbGroupContent_Office2003_Olive
{
	font: 9pt Tahoma;
	color: black;
	border: solid 1px #758D5E;	
	background: #E2E8C9 url('App_Themes/Office2003%20Olive/Web/nbGroupBack.gif') repeat-x left bottom;
	padding: 1px;
}
.dxnbGroupContent_Office2003_Olive
{
	font: 9pt Tahoma;
	color: black;
	border: solid 1px #758D5E;	
	background: #E2E8C9 url('App_Themes/Office2003%20Olive/Web/nbGroupBack.gif') repeat-x left bottom;
	padding: 1px;
}
.dxnbItem_Office2003_Olive, .dxnbItemHover_Office2003_Olive, .dxnbItemSelected_Office2003_Olive,
.dxnbBulletItem_Office2003_Olive, .dxnbBulletItemHover_Office2003_Olive, .dxnbBulletItemSelected_Office2003_Olive
{
    text-align: left;
}
.dxnbItem_Office2003_Olive
{
	padding-top: 4px;
	padding-right: 5px;
	padding-bottom: 5px;
	padding-left: 9px;
}
.dxnbItem_Office2003_Olive, .dxnbLargeItem_Office2003_Olive, .dxnbBulletItem_Office2003_Olive
{
	font: 9pt Tahoma;
	color: black;
	text-align: left;
}
.dxnbItem_Office2003_Olive
{
	font: 9pt Tahoma;
	color: black;
	text-align: left;
}
.dxnbItem_Office2003_Olive
{
	padding-top: 4px;
	padding-right: 5px;
	padding-bottom: 5px;
	padding-left: 9px;
}
.dxnbItem_Office2003_Olive
{
    text-align: left;
}
.dxnbControl_Office2003_Olive a
{
	color: black;
}
.dxnbControl_Office2003_Olive a
{
	color: black;
}
    .style19
    {
        font-family: Verdana;
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
    <table style="width: 100%" bgcolor="AliceBlue">
        <tr>
            
            
        </tr>
        <tr>
            <td style="height: 4px; background-color: #003366;" bgcolor="#003366" 
                colspan="6" class="style19">
                PROVEEDOR</td>
                                        </tr>
                                        <tr>
                                            <td class="style12">
                                            </td>
                                            <td style="height: 20px; " colspan="4">
                                                <b style="color: #663300; font-weight: bolder; text-decoration: underline;">
                                                DATOS PERSONALES</b></td>
                                            <td style="width: 183px; height: 20px;">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                &nbsp;</td>
                                            <td colspan="5">
                                                &nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="style13">
                                                &nbsp;</td>
                                            <td rowspan="6" style="width: 163px">
                                                <asp:Image ID="Image6" runat="server" Height="125px" 
                                                    ImageUrl="~/images/proveedor2.jpeg" Width="139px" />
                                            </td>
                                            <td style="width: 19px">
                                                &nbsp;</td>
                                            <td style="width: 159px; font-family: 'Times New Roman', Times, serif;">
                                                <b>Código:</b></td>
            <td style="width: 183px; color: #FF0000; font-weight: bold;">
                <asp:TextBox ID="txtCodigoP" runat="server" BorderColor="#663300" onkeypress="return validar(event)"></asp:TextBox>
                                            </td>
            <td rowspan="6" style="width: 183px; color: #FF0000; font-weight: bold;">
                <asp:Image ID="Image5" runat="server" Height="135px" 
                    ImageUrl="~/images/proveedor.jpeg" Width="176px" />
            </td>
        </tr>
                                        <tr>
                                            <td class="style13">
                                                &nbsp;</td>
                                            <td style="width: 19px">
                                                &nbsp;</td>
                                            <td style="width: 159px">
                                                <b style="font-family: 'Times New Roman', Times, serif">Nombre:</b></td>
            <td style="width: 183px; color: #FF0000; font-weight: bold;">
                <asp:TextBox ID="txtNombreP" runat="server" BorderColor="#663300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td rowspan="4" style="width: 19px">
                &nbsp;</td>
            <td style="width: 159px">
                <b style="font-family: 'Times New Roman', Times, serif">Dirección:</b></td>
            <td style="width: 183px; color: #FF0000; font-weight: bold;">
                <asp:TextBox ID="txtDireccionP" runat="server" BorderColor="#663300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td style="width: 159px">
                <b style="font-family: 'Times New Roman', Times, serif">RUC: </b>
            </td>
            <td style="width: 183px; color: #FF0000; font-weight: bold;">
                <asp:TextBox ID="txtRucP" runat="server" BorderColor="#663300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
            </td>
            <td style="width: 159px">
                <b style="font-family: 'Times New Roman', Times, serif">Teléfono Principal:&nbsp;&nbsp; </b>
            </td>
            <td style="width: 183px">
                <asp:TextBox ID="txtTelefonoPrP" runat="server" BorderColor="#663300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td style="width: 159px">
                <b style="font-family: 'Times New Roman', Times, serif">Teléfono Secundario:&nbsp; </b>
            </td>
            <td style="width: 183px">
                <asp:TextBox ID="txtTelefonoSecP" runat="server" BorderColor="#663300"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td style="width: 163px">
                &nbsp;</td>
            <td style="width: 19px">
                &nbsp;</td>
            <td style="width: 159px">
                <b style="font-family: 'Times New Roman', Times, serif">Activo</b><asp:CheckBox ID="CheckBoxActivo" runat="server" />
                                            </td>
            <td style="width: 183px">
                &nbsp;</td>
            <td style="width: 183px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td style="width: 163px">
                &nbsp;</td>
            <td style="width: 19px">
                &nbsp;</td>
            <td style="width: 159px">
                &nbsp;</td>
            <td style="width: 183px; color: #FF0000; font-weight: bold;">
                &nbsp;</td>
            <td style="width: 183px; color: #FF0000; font-weight: bold;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td style="width: 163px">
                            <dxnb:ASPxNavBar ID="ASPxNavBar4" runat="server" 
                                CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                                GroupSpacing="0px" Height="16px" ImageFolder="~/App_Themes/BlackGlass/{0}/" 
                                Width="69px" onitemclick="ASPxNavBar4_ItemClick">
                                <groups>
                                    <dxnb:NavBarGroup Text="REPORTE">
                                        <itemimage height="20px" url="~/images/con3.jpeg" width="20px" />
                                        <Items>
                                            <dxnb:NavBarItem NavigateUrl="~/WebForm_BuscarProveedor.aspx" 
                                                Text="Proveedor">
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
            <td style="width: 19px">
                &nbsp;</td>
            <td style="width: 159px">
                &nbsp;</td>
            <td style="width: 183px; color: #FF0000; font-weight: bold;">
                &nbsp;</td>
            <td style="width: 183px; color: #FF0000; font-weight: bold;">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;</td>
            <td colspan="5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width: 100%;" align="center">
                    <tr>
                        
                        <td colspan="3">
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
                            &nbsp; </td>
                                                        <td>
                                                <b>Código:<br />
                <asp:TextBox ID="txtBuscar" runat="server" BorderColor="#663300" onkeypress="return validar(event)"></asp:TextBox>
                                            </td>
                    </tr>
                    <tr>
                        <td style="width: 364px">
                            &nbsp;</td>
                        <td style="width: 160px" class="style15">
                            &nbsp;</td>
                        <td style="width: 82px" class="style15">
                            &nbsp;</td>
                        <td style="width: 115px" class="style15">
                            &nbsp;</td>
                        <td style="width: 90px" class="style15">
                            &nbsp;</td>
                        <td class="style14">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 364px">
                            &nbsp;</td>
                        <td style="width: 160px">
                            &nbsp;</td>
                        <td style="width: 82px">
                            &nbsp;</td>
                        <td style="width: 115px">
                            &nbsp;</td>
                        <td style="width: 90px">
                            &nbsp;</td>
                        <td class="style10">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr style="font-weight: 600">
            <td class="style13">
                &nbsp;</td>
            <td colspan="5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; </td>
        </tr>
        <tr>
            
        </tr>
    </table>
