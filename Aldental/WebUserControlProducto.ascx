<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlProducto.ascx.cs" Inherits="Aldental.WebUserControlProducto" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dxnb" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dxm" %>
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

span {
	display: none;
	font-weight: 700;
}

img {
	border-style: none;
	border-color: inherit;
	border-width: medium;
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

    .style3
    {
        width: 40px;
        height: 145px;
    }
    .style4
    {
        height: 145px;
    }
    .style5
    {
        width: 28px;
        height: 145px;
    }
    .style6
    {
        height: 20px;
    }
    .style7
    {
        font-family: Verdana;
        color: #FFFFFF;
    }
    .style8
    {
        font-size: large;
    }
    .style9
    {
        font-family: Verdana;
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

  <table style="width: 100%; font-weight: bold;" align="center" bgcolor="White">
    <tr>
        <td class="style9" style="height: 8px;" bgcolor="#003366" colspan="10">
            <b class="style8">PRODUCTOS</b></td>
    </tr>
    <tr>
        <td colspan="7" style="height: 6px">
            <dxnb:ASPxNavBar ID="ASPxNavBar5" runat="server" 
                CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                GroupSpacing="0px" ImageFolder="~/App_Themes/BlackGlass/{0}/" 
                Height="40px" Width="40px">
                <Groups>
                    <dxnb:NavBarGroup Text="REPORTES">
                        <Items>
                            <dxnb:NavBarItem NavigateUrl="~/WebForm_BuscaProductos.aspx" 
                                Text="Lista Productos">
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
        <td style="height: 6px; ">
            &nbsp;</td>
        <td style="height: 6px; width: 28px;">
            &nbsp;</td>
        <td style="height: 6px">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="7" style="height: 6px">
            <b style="color: #000000">DESCRIPCIÓN</b></td>
        <td style="height: 6px; ">
        </td>
        <td style="height: 6px; width: 28px;">
            &nbsp;</td>
        <td style="height: 6px">
        </td>
    </tr>
    <tr>
        <td colspan="10">
            <hr style="color: #996633" />
        </td>
    </tr>
    <tr>
        <td style="width: 139px; color: #000066; font-weight: bold;">
            &nbsp;</td>
        <td style="width: 66px">
            &nbsp;</td>
        <td style="width: 40px">
            &nbsp;</td>
        <td style="width: 104px; color: #000066; font-weight: bold;">
            &nbsp;</td>
        <td style="width: 109px">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 139px; color: #000066; font-weight: bold;">
            Datos</td>
        <td style="width: 66px">
            &nbsp;</td>
        <td style="width: 40px">
            &nbsp;</td>
        <td style="width: 104px; color: #000066; font-weight: bold;">
            Modelo</td>
        <td style="width: 109px">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td style="width: 5px; color: #000066;">
            Proveedor</td>
        <td>
            &nbsp;</td>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 139px">
            &nbsp;</td>
        <td style="width: 66px">
            &nbsp;</td>
        <td style="width: 40px">
            &nbsp;</td>
        <td style="width: 104px">
            &nbsp;</td>
        <td style="width: 109px">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 139px; font-weight: bold; text-align: center;">
            Código:</td>
        <td style="width: 66px">
            <asp:TextBox ID="txtCodPro" runat="server" BorderColor="#663300"  onkeypress="return validar(event)"></asp:TextBox>
        </td>
        <td style="width: 40px">
            &nbsp;</td>
        <td style="width: 104px">
            Tipo Producto:</td>
        <td style="width: 109px">
            <asp:TextBox ID="TextBoxTipo" runat="server"></asp:TextBox>
            <asp:DropDownList ID="DropDownListTipoProd" runat="server" 
                DataSourceID="ObjectDataSourceTipo" DataTextField="NombreTipProd" 
                DataValueField="idTipProd" Height="19px" Width="98px" AutoPostBack="True" 
                Visible="False">
                <asp:ListItem>Air</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="width: 5px">
            &nbsp;</td>
        <td style="width: 5px">
            Material:</td>
        <td>
            <asp:TextBox ID="TextBoxMaterial" runat="server"></asp:TextBox>
            <br />
            <asp:DropDownList ID="DropDownListMater" runat="server" 
                DataSourceID="ObjectDataSourceMat" DataTextField="NombreMaterial" 
                DataValueField="idMaterial" Height="19px" Width="98px" AutoPostBack="True" 
                Visible="False">
                <asp:ListItem>Air</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 139px; font-weight: bold; text-align: center;">
            Nombre Producto:</td>
        <td style="width: 66px">
            <asp:TextBox ID="txtnombrepro" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
        <td style="width: 40px">
            &nbsp;</td>
        <td style="width: 104px">
            Modelo:</td>
        <td style="width: 109px">
            <asp:TextBox ID="TextBoxModelo" runat="server"></asp:TextBox>
            <asp:DropDownList ID="DropDownListModel" runat="server" 
                DataSourceID="ObjectDataSourceModelo" DataTextField="NombreModelo" 
                DataValueField="idModelo" Height="22px" Width="98px" AutoPostBack="True" 
                Visible="False">
                <asp:ListItem>Air</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="width: 5px">
            &nbsp;</td>
        <td style="width: 5px">
            Proveedor:</td>
        <td>
            <asp:TextBox ID="TextBoxProveedor" runat="server"></asp:TextBox>
            <br />
            <asp:DropDownList ID="DropDownProvee" runat="server" 
                DataSourceID="ObjectDataSourceProvee" DataTextField="NombreProvee" 
                DataValueField="idProveedor" Height="21px" Width="97px" 
                AutoPostBack="True" Visible="False">
                <asp:ListItem>Dentatec</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 139px; font-weight: bold; text-align: center;">
            Stock:</td>
        <td style="width: 66px">
            <asp:TextBox ID="txtStock" runat="server" BorderColor="#663300"></asp:TextBox>
        </td>
        <td style="width: 40px">
            &nbsp;</td>
        <td style="width: 104px">
            &nbsp;</td>
        <td style="width: 109px">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 139px; text-align: right;">
            &nbsp; Precio:&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $</td>
        <td style="width: 66px">
            <asp:TextBox ID="txtprecio" runat="server" BorderColor="#663300" onkeypress="return validar(event)"></asp:TextBox>
        </td>
        <td style="width: 40px">
            &nbsp;</td>
        <td style="color: #000066;" colspan="2">
            DESCUENTO/IMPUESTO</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td colspan="2">
            <asp:CheckBox ID="CheckBoxDescuento" runat="server" Text="Descuento" />
            /<asp:CheckBox ID="CheckBoxImpuesto" runat="server" Text="Impuesto " />
        </td>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="height: 16px; width: 139px">
        </td>
        <td style="width: 66px; height: 16px">
        </td>
        <td class="style7" style="width: 40px; height: 16px">
        </td>
        <td style="width: 104px; height: 16px">
        </td>
        <td style="width: 109px; height: 16px">
        </td>
        <td style="height: 16px; width: 5px">
            &nbsp;</td>
        <td style="height: 16px; width: 5px">
        </td>
        <td style="height: 16px; ">
        </td>
        <td style="height: 16px; width: 28px;">
            &nbsp;</td>
        <td style="height: 16px">
        </td>
    </tr>
    <tr>
        <td style="width: 139px; color: #000066;">
            &nbsp;</td>
        <td style="width: 66px">
            &nbsp;</td>
        <td style="width: 40px">
            &nbsp;</td>
        <td style="color: #000066;" colspan="2">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 139px; color: #000066;">
            &nbsp;</td>
        <td style="width: 66px">
            &nbsp;</td>
        <td align="center" colspan="6" rowspan="6">
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image1" runat="server" Height="77px" 
                ImageUrl="~/images/images.jpeg" Width="90px" />
            &nbsp;
            <asp:Image ID="Image2" runat="server" Height="80px" 
                ImageUrl="~/images/prod.jpeg" Width="108px" />
            &nbsp;
            <asp:Image ID="Image3" runat="server" Height="80px" 
                ImageUrl="~/images/prod1.jpeg" Width="108px" />
                                            </td>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 139px; color: #000099;">
            Descripción</td>
        <td style="width: 66px">
            &nbsp;</td>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" rowspan="6">
            <asp:TextBox ID="txtBoxDescrip" runat="server" BorderColor="#663300" Height="185px" 
                TextMode="MultiLine" Width="254px"></asp:TextBox>
        </td>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 40px">
            &nbsp;</td>
        <td style="width: 104px">
            &nbsp;</td>
        <td style="width: 109px">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style3">
            </td>
        <td colspan="5" class="style4">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table 
                style="width:100%;">
                <tr>
                    <td class="style6" colspan="5">
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
                    <td class="style6">
                        <b>CODIGO:</b><asp:TextBox ID="TextBoxBuscar" runat="server" Width="80px"  onkeypress="return validar(event)"></asp:TextBox>
                    </td>
                    <td class="style6">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td style="text-align: center">
                        &nbsp;</td>
                    <td style="text-align: center">
                        &nbsp;</td>
                    <td style="text-align: center">
                        &nbsp;</td>
                    <td style="text-align: center" class="style2">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td class="style5">
            </td>
        <td class="style4">
            </td>
    </tr>
    <tr>
        <td style="width: 139px">
            &nbsp;</td>
        <td style="width: 66px">
            &nbsp;</td>
        <td style="width: 40px">
            &nbsp;</td>
        <td align="center" colspan="5">
            &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; 
            </td>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 139px">
            &nbsp;</td>
        <td style="width: 66px">
            &nbsp;</td>
        <td style="width: 40px">
            &nbsp;</td>
        <td style="width: 104px">
            &nbsp;</td>
        <td style="width: 109px">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td style="width: 5px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
        <td style="width: 28px">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
        <asp:ObjectDataSource ID="ObjectDataSourceModelo" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            TypeName="BaseAldental.DataSetFacturacionTableAdapters.modeloTableAdapter">
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSourceProvee" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            TypeName="BaseAldental.DataSetFacturacionTableAdapters.proveedorTableAdapter">
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSourceTipo" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            TypeName="BaseAldental.DataSetFacturacionTableAdapters.tipoTableAdapter">
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSourceMat" runat="server" 
            OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
            TypeName="BaseAldental.DataSetFacturacionTableAdapters.materialTableAdapter">
        </asp:ObjectDataSource>
</table>

  

