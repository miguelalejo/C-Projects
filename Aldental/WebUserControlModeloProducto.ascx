<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlModeloProducto.ascx.cs" Inherits="Aldental.WebUserControlModelo" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dxnb" %>
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
	font-family: "Times New Roman", Times, serif;
	font-size: small;
	text-align: center;
        font-weight: 700;
    }

    .style73
    {
        width: 10px;
        height: 114px;
    }
    .style32
    {
        height: 114px;
    }
    .style61
    {
        width: 5px;
        height: 52px;
    }
    .style27
    {
        width: 186px;
        height: 52px;
    }
    .style28
    {
        width: 574px;
        height: 52px;
    }
    .style29
    {
        width: 54px;
        height: 52px;
    }
    .style30
    {
        width: 116px;
        height: 52px;
    }
    .style62
    {
        width: 110px;
        height: 52px;
    }
    .style57
    {
        width: 100px;
        height: 52px;
    }
    .style31
    {
        height: 52px;
    }
    .style42
    {
        height: 49px;
        width: 10px;
    }
    .style40
    {
        height: 49px;
        width: 96px;
    }
    .style46
    {
        width: 83px;
        height: 49px;
    }
    .style56
    {
        width: 91px;
        height: 49px;
    }
    .style49
    {
        width: 88px;
        height: 49px;
    }
    .style44
    {
        height: 49px;
        width: 86px;
    }
    .style59
    {
        font-size: small;
    }
    .style65
    {
        width: 10px;
        height: 14px;
    }
    .style66
    {
        width: 96px;
        height: 14px;
    }
    .style67
    {
        font-size: x-small;
        font-weight: bold;
        width: 83px;
        height: 14px;
    }
    .style68
    {
        font-size: x-small;
        width: 91px;
        font-weight: bold;
        height: 14px;
    }
    .style69
    {
        font-size: x-small;
        font-weight: bold;
        width: 100px;
        height: 14px;
    }
    .style70
    {
        font-size: x-small;
        font-weight: bold;
        width: 88px;
        height: 14px;
    }
    .style71
    {
        font-size: x-small;
        width: 86px;
        font-weight: bold;
        height: 14px;
    }
    .style72
    {
        height: 14px;
    }

    .style43
    {
        width: 10px;
    }
    .style41
    {
        width: 96px;
    }
    
    .style33
    {
        font-size: x-small;
        font-weight: bold;
    }
    .style55
    {
        font-size: x-small;
        width: 91px;
        font-weight: bold;
    }
    .style45
    {
        font-size: x-small;
        width: 86px;
        font-weight: bold;
    }
    .style76
    {
        width: 10px;
        height: 84px;
    }
    .style77
    {
        height: 84px;
    }
    .style80
    {
        width: 10px;
        height: 117px;
    }
    .style81
    {
        height: 117px;
    }
    .style82
    {
        height: 26px;
    }
    .style84
    {
        width: 28px;
        height: 13px;
    }
    .style85
    {
        width: 93px;
        height: 13px;
    }
    .style87
    {
        width: 98px;
        height: 13px;
    }
    .style88
    {
        width: 28px;
        height: 8px;
    }
    .style89
    {
        width: 93px;
        height: 8px;
    }
    .style90
    {
        width: 101px;
        font-size: small;
        font-weight: bold;
        height: 8px;
        text-align: right;
    }
    .style91
    {
        width: 98px;
        height: 8px;
    }
    .style92
    {
        width: 101px;
        font-size: small;
        font-weight: bold;
        height: 13px;
        text-align: right;
    }
    .style93
    {
        width: 100px;
        height: 49px;
    }
    .style94
    {
        height: 49px;
    }
    .style95
    {
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
    <table class="style28" style="background-color: #FFFFFF">
        <tr>
            <td style="height: 21px; background-color: #003366;" bgcolor="#003366" 
                colspan="3" class="style95">
                MODELO PRODUCTOS</td>
        </tr>
        <tr>
            <td align="center" colspan="3">
            </td>
        </tr>
        <tr>
            <td align="center" class="style80">
            </td>
            <td align="center" class="style81">
                <table style="width: 100%; height: 129px;">
                    <tr>
                        <td class="style61">
                            &nbsp;</td>
                        <td class="style27">
                        </td>
                        <td class="style28">
                <asp:Image ID="Image1" runat="server" Height="124px" 
                    ImageUrl="~/images/Conta.jpeg" Width="175px" />
                        </td>
                        <td class="style29">
                        </td>
                        <td class="style30">
                            <asp:Image ID="Image2" 
                    runat="server" Height="119px" 
                    ImageUrl="~/images/con3.jpeg" Width="163px" />
                        </td>
                        <td class="style62">
                        </td>
                        <td class="style57">
                            &nbsp;</td>
                        <td class="style31">
                        </td>
                    </tr>
                    </table>
            </td>
            <td align="center" class="style81">
            </td>
        </tr>
        <tr>
            <td align="center" class="style73">
            </td>
            <td align="center" class="style32">
                <table style="width:101%; height: 140px;">
                    <tr>
                        <td class="style84">
                            </td>
                        <td class="style85">
                            </td>
                        <td class="style92">
                            Código: </td>
                        <td class="style87">
                            <asp:TextBox ID="TextBoxCodModelo" runat="server" Height="22px" onkeypress="return validar(event)"></asp:TextBox>
                        </td>
                        <td class="style87">
                        </td>
                    </tr>
                    <tr>
                        <td class="style88">
                            </td>
                        <td class="style89">
                            <dxnb:ASPxNavBar ID="ASPxNavBar4" runat="server" 
                                CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                                GroupSpacing="0px" Height="16px" ImageFolder="~/App_Themes/BlackGlass/{0}/" 
                                Width="69px">
                                <groups>
                                    <dxnb:NavBarGroup Text="REPORTE">
                                        <itemimage height="20px" url="~/images/con3.jpeg" width="20px" />
                                        <Items>
                                            <dxnb:NavBarItem NavigateUrl="~/WebForm_BuscarModeloProducto.aspx" 
                                                Text="Modelo Productos">
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
                        <td class="style90">
                            Código Marca:</td>
                        <td class="style91">
                            <asp:TextBox ID="TextBoxMarca" runat="server"></asp:TextBox>
                            <asp:DropDownList ID="DropDownList1" runat="server" 
                                DataSourceID="ObjectDataSourceMarca" DataTextField="NombreMarca" 
                                DataValueField="idMarca">
                            </asp:DropDownList>
                            <asp:ObjectDataSource ID="ObjectDataSourceMarca" runat="server" 
                                OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                                TypeName="BaseAldental.DataSetFacturacionTableAdapters.marcaTableAdapter">
                            </asp:ObjectDataSource>
                        </td>
                        <td class="style91">
                        </td>
                    </tr>
                    <tr>
                        <td class="style84">
                            </td>
                        <td class="style85">
                            </td>
                        <td class="style92">
                            Nombre:</td>
                        <td class="style87">
                            <asp:TextBox ID="TextBoxNomModelo" runat="server"></asp:TextBox>
                        </td>
                        <td class="style87">
                        </td>
                    </tr>
                    </table>
            </td>
            <td align="center" class="style32">
            </td>
        </tr>
        <tr>
            <td align="center" class="style76">
                </td>
            <td align="center" class="style77">
                <table style="width: 99%; height: 115px;">
                <tr>
                    <td style="text-align: center; " class="style42">
                        </td>
                    <td style="text-align: center; " class="style40">
                            &nbsp;</td>
                    <td style="text-align: center; " class="style46">
            <asp:ImageButton ID="ImageButtonAgregar" runat="server" Height="19px" 
                ImageUrl="~/images/add-32.png" Width="30px" onclick="ImageButtonAgregar_Click" />
                        <br />
                    </td>
                    <td style="text-align: center; " class="style56">
                        <br />
            <asp:ImageButton ID="ImageButtonModificar" runat="server" Height="22px" 
                ImageUrl="~/images/modificar.bmp" Width="23px" onclick="ImageButtonModificar_Click" />
                    </td>
                    <td style="text-align: center; " class="style93">
                        <br />
            <asp:ImageButton ID="ImageButtonGuardar" runat="server" Height="21px" 
                ImageUrl="~/images/Saveas.JPG" Width="23px" onclick="ImageButtonGuardar_Click" />
                    </td>
                    <td style="text-align: center; " class="style49">
                        <br />
                        <asp:ImageButton ID="ImageButtonEliminar" runat="server" Height="21px" 
                ImageUrl="~/images/delete.ico" Width="28px" onclick="ImageButtonEliminar_Click" />
                    </td>
                    <td style="text-align: center; " class="style44">
                        <br />
            <asp:ImageButton ID="ImageButtonBuscar" runat="server" Height="24px" 
                ImageUrl="~/images/buscar-32.png" Width="27px" onclick="ImageButtonBuscar_Click" />
                    </td>
                    <td class="style94">
                        <b>CODIGO</b><br class="style59" />
                        <asp:TextBox ID="TextBoxBuscar" runat="server" onkeypress="return validar(event)"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: center; background-color: #FFFFFF;" class="style65">
                        </td>
                    <td style="text-align: center" class="style66">
                        </td>
                    <td style="text-align: center; " class="style67">
                        AGREGAR</td>
                    <td style="text-align: center; " class="style68">
                        MODIFICAR</td>
                    <td style="text-align: center" class="style69">
                        GUARDAR</td>
                    <td style="text-align: center; " class="style70">
                        ELIMINAR</td>
                    <td style="text-align: center; " class="style71">
                        BUSCAR</td>
                    <td class="style72">
                        </td>
                </tr>
                <tr>
                    <td style="text-align: center; background-color: #FFFFFF;" class="style43">
                        &nbsp;</td>
                    <td style="text-align: center" class="style41">
                        &nbsp;</td>
                    <td style="text-align: center; width: 83px;" class="style33">
                        &nbsp;</td>
                    <td style="text-align: center; " class="style55">
                        &nbsp;</td>
                    <td style="width: 100px; text-align: center" class="style33">
                        &nbsp;</td>
                    <td style="text-align: center; width: 88px;" class="style33">
                        &nbsp;</td>
                    <td style="text-align: center; " class="style45">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                </table>
            </td>
            <td align="center" class="style77">
                </td>
        </tr>
        </table>
