<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlBuscarCliente.ascx.cs" Inherits="Aldental.WebUserControlCliente" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dxnb" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dxpc" %>
<style type="text/css">

    .style1
    {
        width: 58%;
        height: 455px;
    }
    .style5
    {
        height: 25px;
        text-align: center;
    }
    .style32
    {
        height: 1px;
        width: 0;
    }
    .style27
    {
        width: 186px;
        height: 52px;
    }
    .style28
    {
        width: 239px;
        height: 52px;
    }
    .style30
    {
        width: 116px;
        height: 52px;
    }
    .style22
    {
        width: 186px;
        height: 62px;
    }
    .style23
    {
        height: 62px;
    }
    .style25
    {
        height: 62px;
        text-align: left;
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

.dxgvHeader_BlackGlass td {
	white-space:nowrap;
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
    .style34
    {
        height: 1px;
        color: #000000;
        text-align: center;
        background-color: #006699;
    }
.dxgvFilterRow_BlackGlass 
{
	background-color: #eef2f5;
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
.dxeEditArea_BlackGlass
{
	font-family: Tahoma;
	font-size: 9pt;
	border: 1px solid #A0A0A0;
}
    
* {
	margin: 0px 2px 1px 0px;
	padding: 0px;
        text-align: center;
    }

.dxeBase
{
    font-family: Tahoma;
    font-size: 9pt;
}
    .style35
    {
        height: 52px;
    }
    .style36
    {}
    .style37
    {
        width: 6px;
        height: 62px;
        text-align: left;
    }
    .style38
    {
        width: 239px;
        height: 62px;
    }
</style>
<div>
    <table class="style1">
        <tr>
            <td align="center" bgcolor="#336699" class="style5" colspan="2" 
                style="color: #FFFFFF; font-size: large; font-weight: bold">
                BUSCADOR CLIENTE</td>
        </tr>
        <tr bgcolor="AliceBlue">
            
            <td align="center" class="style32" colspan="1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width: 100%; height: 129px;">
                    <tr>
                        <td class="style27">
                            <dxnb:ASPxNavBar ID="ASPxNavBar1" runat="server" 
                                CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                                CssPostfix="BlackGlass" GroupSpacing="0px" 
                                ImageFolder="~/App_Themes/BlackGlass/{0}/">
                                <Groups>
                                    <dxnb:NavBarGroup Text="Cliente">
                                        <Items>
                                            <dxnb:NavBarItem NavigateUrl="~/WebForm_Cliente.aspx" Text="Añadir">
                                            </dxnb:NavBarItem>
                                        </Items>
                                    </dxnb:NavBarGroup>
                                </Groups>
                                <GroupContentStyle ItemSpacing="1px">
                                </GroupContentStyle>
                                <CollapseImage Height="17px" Width="18px" 
                                    url="~/App_Themes/BlackGlass/Web/nbCollapse.gif" />
                                <ExpandImage Height="17px" Width="18px" 
                                    url="~/App_Themes/BlackGlass/Web/nbExpand.gif" />
                            </dxnb:ASPxNavBar>
                        </td>
                        <td class="style28">
                <asp:Image ID="Image1" runat="server" Height="79px" 
                    ImageUrl="~/images/cliente.jpeg" Width="123px" />
                        </td>
                        <td colspan="2">
                        </td>
                        <td class="style35">
                            <asp:Image ID="Image2" 
                    runat="server" Height="84px" 
                    ImageUrl="~/images/finanzas.jpg" Width="136px" />
                        </td>
                        
                        
                        
                        
                        
                        
                        
                    </tr>
                    <tr>
                        <td class="style22">
                        </td>
                        <td class="style38">
                                            <dxpc:ASPxPopupControl ID="ASPxPopupControlError" 
                    runat="server" AccessibilityCompliant="True" AppearAfter="0" 
                    CloseAction="CloseButton" CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                    CssPostfix="BlackGlass" DisappearAfter="10" FooterText="Error en la Factura" 
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
                                            <br />
                        </td>
                        <td>
                            <asp:TextBox ID="TextBoxBus" runat="server"></asp:TextBox>
                        </td>
                        <td class="style36" colspan="2">
                            <asp:DropDownList ID="DropDownListSelecc" runat="server" Height="23px" 
                                style="margin-left: 34px; text-align: left;" Width="98px">
                                <asp:ListItem>Codigo</asp:ListItem>
                                <asp:ListItem>Nombre</asp:ListItem>
                                <asp:ListItem>Apellido</asp:ListItem>
                                <asp:ListItem>Cedula</asp:ListItem>
                                <asp:ListItem>Celular</asp:ListItem>
                                <asp:ListItem>Direccion</asp:ListItem>
                            </asp:DropDownList>
                <asp:ImageButton ID="ImageButtonBuscar" runat="server" 
                    ImageUrl="~/images/buscar-32.png" Width="31px" 
                    onclick="ImageButtonBuscar_Click" BorderStyle="Solid" 
                                style="text-align: center; " Height="27px" />
                        </td>
                        
                        
                        
                        
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td colspan="4">
                <dxwgv:ASPxGridView ID="ASPxGridViewCliente" runat="server" 
                    AutoGenerateColumns="False"
                    style="text-align: center" 
                    CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                                Width="16px">
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
                        <LoadingPanel Height="20px" Width="20px" />
                    </Images>
                    <Columns>
                        <dxwgv:GridViewCommandColumn VisibleIndex="0">
                            <ClearFilterButton Visible="True">
                            </ClearFilterButton>
                        </dxwgv:GridViewCommandColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Código" FieldName="idCliente" 
                            VisibleIndex="1">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Nombre" FieldName="NombreCliente" 
                            VisibleIndex="2">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Apellido" FieldName="ApellidoCliente" 
                            VisibleIndex="3">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Dirección" FieldName="DireccCliente" 
                            VisibleIndex="4">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Movil" FieldName="Celular" 
                            VisibleIndex="5">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Teléfono" FieldName="Telefono" 
                            VisibleIndex="6">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Cédula" FieldName="CedulaCliente" 
                            VisibleIndex="7">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Activo" FieldName="Activo" 
                            VisibleIndex="8">
                        </dxwgv:GridViewDataTextColumn>
                    </Columns>
                    <Settings ShowFilterRow="True" />
                    <StylesEditors>
                        <ProgressBar Height="25px">
                        </ProgressBar>
                    </StylesEditors>
                </dxwgv:ASPxGridView>
                        </td>
                        
                        
                        
                        
                        
                        
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td class="style38">
                                            &nbsp;</td>
                        <td class="style23">
                            <asp:Button ID="ButtonMostrar" runat="server" Height="23px" 
                                style="text-align: center" Text="Mostrar Registros" Width="132px" 
                                onclick="ButtonMostrar_Click" BackColor="#D5EAFF" ForeColor="#006699"  />
                        </td>
                        <td class="style37">
                            &nbsp;</td>
                        <td class="style25">
                            &nbsp;</td>
                        
                        
                        
                        
                        
                        
                        
                    </tr>
                </table>
            </td>
            
        </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
<br />
