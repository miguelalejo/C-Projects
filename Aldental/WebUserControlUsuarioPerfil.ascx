<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlUsuarioPerfil.ascx.cs" Inherits="Aldental.WebUserControlPerfilUsuario" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dxm" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dxnb" %>
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

    .style4
    {
        text-align: center;
        height: 22px;
        }
    .style6
    {
        width: 120px;
    }
    .style7
    {
        width: 35px;
    }
    .style8
    {
        height: 22px;
        width: 35px;
    }
    .style9
    {
        width: 67px;
    }
    .style12
    {
        width: 21px;
    }
    .style13
    {
        width: 68px;
    }
    .style14
    {
        width: 15px;
    }
    .style15
    {
        width: 123px;
    }
    .style16
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
    <table style="width: 81%" bgcolor="AliceBlue">
        <tr>
            <td style="font-style: normal; background-color: #00468C; text-align: center;" 
                class="style16" colspan="6">
                Perfiles&nbsp;de Usuarios</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td style="width: 70px">
                &nbsp;</td>
            <td class="style13">
                &nbsp;</td>
            <td style="width: 56px">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td colspan="2">
                <b>Datos Personales</b></td>
            <td style="width: 56px">
                <asp:Image ID="Image2" runat="server" Height="34px" 
                    ImageUrl="~/images/stock_contact-list.png" Width="43px" />
                                            </td>
            <td colspan="2">
                <b>&nbsp; Datos de Claves</b></td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td style="width: 70px">
                <b>Código:</b></td>
            <td style="color: #FF0000; font-weight: bold;" class="style13">
                <asp:TextBox ID="txtCodigoPer" runat="server" onkeypress="return validar(event)"></asp:TextBox>
                </td>
            <td style="width: 56px">
                &nbsp;</td>
            <td class="style14">
               <b> Login:</b></td>
            <td style="color: #FF0000; font-weight: bold;" class="style15">
                <asp:TextBox ID="txtLoginPer" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td style="width: 70px">
                <b>Nombre:</b></td>
            <td style="color: #FF0000; font-weight: bold;" class="style13">
                <asp:TextBox ID="txtNombrePer" runat="server"></asp:TextBox>
                </td>
            <td style="width: 56px">
                &nbsp;</td>
            <td class="style14">
                <b>Contraseña:</b></td>
            <td style="color: #FF0000; font-weight: bold;" class="style15">
                <asp:TextBox ID="txtContraseñaPer" runat="server"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td class="style12">
                 &nbsp;</td>
            <td style="width: 70px">
                 <b>Apellido: </b></td>
            <td style="color: #FF0000; font-weight: bold;" class="style13">
                <asp:TextBox ID="txtApellidoPer" runat="server"></asp:TextBox>
                </td>
            <td style="width: 56px">
                &nbsp;</td>
            <td class="style14">
                <b>Código Perfil:</b></td>
            <td class="style15">
                <asp:TextBox ID="TextBoxPerfilNombre" runat="server" 
                    onkeypress="return validar(event)" Visible="False"></asp:TextBox>
                                            <asp:DropDownList ID="DropDownListPerfil" 
                    runat="server" DataSourceID="ObjectDataSourcePerfil" 
                    DataTextField="NombrePerfil" DataValueField="idPerfil">
                </asp:DropDownList>
                <asp:ObjectDataSource ID="ObjectDataSourcePerfil" runat="server" 
                    SelectMethod="Registrosperfil" TypeName="ClasesAldental.perfil">
                </asp:ObjectDataSource>
                                            </td>
        </tr>
        <tr>
            <td class="style12">
                 &nbsp;</td>
            <td style="width: 70px">
                 <b>Dirección: </b></td>
            <td class="style13">
                <asp:TextBox ID="txtDirecPer" runat="server"></asp:TextBox>
            </td>
            <td style="width: 56px">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                 &nbsp;</td>
            <td style="width: 70px">
                 <b>Cédula: </b></td>
            <td class="style13">
                <asp:TextBox ID="txtCedularPer" runat="server"></asp:TextBox>
            </td>
            <td colspan="2" rowspan="4">
                <asp:Image ID="Image4" runat="server" Height="72px" 
                    ImageUrl="~/images/seg2.gif" Width="120px" />
                <br />
                <b>Activo</b><asp:CheckBox ID="CheckBoxActivoPerf" runat="server" />
            </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                 &nbsp;</td>
            <td style="width: 70px">
                 <b>Movil:</b></td>
            <td class="style13">
                <asp:TextBox ID="txtMoviPer" runat="server"></asp:TextBox>
            </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                 &nbsp;</td>
            <td style="width: 70px">
                 <b>Teléfono:</b></td>
            <td class="style13">
                <asp:TextBox ID="TexTelefPer" runat="server"></asp:TextBox>
            </td>
            <td class="style15">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12">
                &nbsp;</td>
            <td style="width: 70px; ">
                </td>
            <td style="color: #FF0000; font-weight: bold; " class="style13">
                </td>
            <td class="style15">
                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
            </td>
        </tr>
            </table>
                <table bgcolor="AliceBlue" style="width: 81%;">
                    <tr>
                        <td class="style6">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <dxnb:ASPxNavBar ID="ASPxNavBar1" runat="server" 
                                CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                                GroupSpacing="0px" Height="16px" ImageFolder="~/App_Themes/BlackGlass/{0}/" 
                                Width="69px" onitemclick="ASPxNavBar1_ItemClick">
                                <groups>
                                    <dxnb:NavBarGroup Text="REPORTE">
                                        <itemimage height="20px" url="~/images/con3.jpeg" width="20px" />
                                        <Items>
                                            <dxnb:NavBarItem NavigateUrl="~/WebForm_BuscarUsuarioPerfil.aspx" 
                                                Text="Usuario Perfil ">
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
                        <td>
                            <table style="width:100%;">
                                <tr>
                        <td class="style4" colspan="5">
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
                        <td class="style8">
                                                <b>Código:<br />
                <asp:TextBox ID="txtBuscarPer" runat="server" BorderColor="#663300" Height="22px" 
                                                    ontextchanged="txtBuscarPer_TextChanged" Width="100px" onkeypress="return validar(event)"></asp:TextBox>
                                            </td>
                                    <td class="style9">
                                        &nbsp;</td>
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
                                    <td class="style7">
                                        &nbsp;</td>
                                    <td class="style9">
                                        &nbsp;</td>
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
                                    <td class="style7">
                                        &nbsp;</td>
                                    <td class="style9">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style6">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
</table>

            