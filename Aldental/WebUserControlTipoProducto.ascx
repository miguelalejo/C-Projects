<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlTipoProducto.ascx.cs" Inherits="Aldental.WebUserControlTipoProducto" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dxnb" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dxm" %>
<style type="text/css">
    * {
	margin: 0px 0px 1px 0px;
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

    .style27
    {
        width: 76px;
        height: 74px;
    }
    .style28
    {
        width: 263px;
        height: 74px;
    }
    .style30
    {
        width: 116px;
        height: 74px;
    }
    .style31
    {
        height: 74px;
    }
    .style54
    {
        width: 147px;
        font-size: small;
    }
    .style52
    {
        width: 41px;
        font-size: small;
    }
    .style39
    {
        width: 98px;
        font-size: small;
        font-family: "Times New Roman", Times, serif;
    }
    .style37
    {
        width: 82px;
    }
    .style59
    {
        width: 121px;
        font-size: small;
        font-weight: bold;
    }
    .style92
    {
        height: 97px;
    }
    .style93
    {
        height: 71px;
    }
    .style94
    {
        font-family: "Times New Roman", Times, serif;
        text-align: left;
    }
    .style98
    {
        height: 71px;
        width: 28px;
    }
    .style100
    {
        height: 97px;
        width: 28px;
    }
    .style101
    {
        height: 97px;
        width: 759px;
    }
    .style102
    {
        height: 71px;
        width: 759px;
    }
    .style103
    {
        width: 467px;
    }
    .style104
    {
        font-family: Verdana;
        font-size: large;
        color: #FFFFFF;
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
    <table class="style1" 
    style="background-color: #FFFFFF; height: 450px; width: 833px;">
        <tr>
            
        </tr>
        <tr>
            <td style="height: 21px; background-color: #003366;" bgcolor="#003366" 
                colspan="3" class="style104">
                TIPO PRODUCTOS</td>
        </tr>
        <tr>
            <td align="center" colspan="3">
            </td>
        </tr>
        <tr>
            <td align="center" class="style92">
                </td>
            <td align="center" class="style101">
                    <table style="width: 98%; height: 129px;">
                    <tr>
                        <td class="style27">
                        </td>
                        <td class="style28">
                <asp:Image ID="Image1" runat="server" Height="125px" 
                    ImageUrl="~/images/cliente.jpeg" Width="165px" />
                        </td>
                        <td class="style31">
                        </td>
                        <td class="style30">
                            <asp:Image ID="Image2" 
                    runat="server" Height="123px" 
                    ImageUrl="~/images/finanzas.jpg" Width="163px" />
                        </td>
                        <td class="style30">
                        </td>
                        <td class="style31">
                        </td>
                    </tr>
                    </table>
            </td>
            <td align="center" class="style100">
                </td>
        </tr>
        <tr>
            <td align="center" class="style93">
                </td>
            <td align="center" class="style102">
                <table style="width:100%; height: 85px;">
                    <tr>
                        <td class="style54">
                            <span class="style94"></td>
                        <td class="style52">
                            <dxnb:ASPxNavBar ID="ASPxNavBar1" runat="server" 
                                CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                                GroupSpacing="0px" Height="16px" ImageFolder="~/App_Themes/BlackGlass/{0}/" 
                                Width="69px" onitemclick="ASPxNavBar1_ItemClick">
                                <groups>
                                    <dxnb:NavBarGroup Text="REPORTE">
                                        <itemimage height="20px" url="~/images/con3.jpeg" width="20px" />
                                        <Items>
                                            <dxnb:NavBarItem NavigateUrl="~/WebForm_BuscarTipoProducto.aspx" 
                                                Text="Tipo  Productos">
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
                        <td class="style59">
                            Código: </span> </td>
                        <td class="style39">
                            <asp:TextBox ID="TextBoxCodigoTiPro" runat="server" Height="22px" onkeypress="return validar(event)"></asp:TextBox>
                        </td>
                        <td class="style37">
                            <span class="style94"></td>
                        <td class="style37">
                            </span></td>
                    </tr>
                    <tr>
                        <td class="style54">
                            <span class="style94"></td>
                        <td class="style52">
                            &nbsp;</td>
                        <td class="style59">
                            Nombre:</span></td>
                        <td class="style39">
                            <asp:TextBox ID="TextBoxNomTipPro" runat="server"></asp:TextBox>
                        </td>
                        <td class="style37">
                            <span class="style94"></td>
                        <td class="style37">
                            </span></td>
                    </tr>
                    </table>
            </td>
            <td align="center" class="style98">
                </td>
        </tr>
        <tr>
            <td align="center" class="style93">
                &nbsp;</td>
            <td align="center" class="style102">
                <table style="width: 99%; height: 115px;">
                <tr>
                    <td style="text-align: center; " class="style42">
                        </td>
                    <td style="text-align: center; " class="style40">
                            &nbsp;</td>
                    <td style="text-align: center; " class="style103">
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
                    <td class="style94">
                        <b>CODIGO</b><br class="style59" />
                        <asp:TextBox ID="TextBoxBuscar" runat="server" Width="80px" onkeypress="return validar(event)"></asp:TextBox>
                    </td>
                </tr>
                </table>
            </td>
            <td align="center" class="style98">
                &nbsp;</td>
        </tr>
        </table>
