<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlBuscarEmpleado.ascx.cs" Inherits="Aldental.WebUserControlPersonal" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>
<%@ Register assembly="DevExpress.Xpo.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Xpo" tagprefix="dxxpo" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxDataView" tagprefix="dxdv" %>
<%@ Register assembly="DevExpress.Web.ASPxScheduler.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxScheduler" tagprefix="dxwschs" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges" tagprefix="dxg" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges" tagprefix="dxg" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Linear" tagprefix="dxg" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Circular" tagprefix="dxg" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.State" tagprefix="dxg" %>
<%@ Register assembly="DevExpress.Web.ASPxGauges.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGauges.Gauges.Digital" tagprefix="dxg" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1.Export, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView.Export" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.ASPxPivotGrid.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPivotGrid" tagprefix="dxwpg" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSiteMapControl" tagprefix="dxsm" %>
<%@ Register assembly="DevExpress.Data.v9.1.Linq, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Data.Linq" tagprefix="dxdtlnq" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dxnb" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dxpc" %>
<style type="text/css">
    .style1
    {
        width: 100%;
        height: 270px;
        background-color: #EAF4FF;
    }
    .style5
    {
        height: 25px;
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
    .style22
    {
    }
    .style25
    {
        width: 16px;
        }
    .style27
    {
        height: 10px;
        text-align: center;
        }
    .style30
    {
        height: 52px;
        width: 183px;
    }
    .style32
    {
        height: 20px;
    }
    .style36
    {
        height: 400px;
    }
    .style37
    {
        text-align: left;
    }
    
* {
	margin: 0px 2px 1px 0px;
	padding: 0px;
	}

.dxeBase
{
    font-family: Tahoma;
    font-size: 9pt;
}
    </style>
   
<div>
    <table class="style1">
        <tr>
            <td align="center" bgcolor="#336699" class="style5" 
                style="color: #FFFFFF; font-size: large; font-weight: bold">
                BUSCADOR EMPLEADO</td>
        </tr>
        <tr bgcolor="AliceBlue">
            
            <td align="center" class="style36">
                <table style="width: 40%; height: 80px;">
                    <tr>
                     <td class="style27" height="1">
                           &nbsp;</td>
                        
                        <td class="style30" height="1" colspan="2">
                           <asp:Image ID="Image1" runat="server" Height="79px" 
                    ImageUrl="~/images/detec1.jpeg" Width="123px" />
                        </td>
                        
                        <td class="style30" height="1" colspan="2">
                            &nbsp;</td>
                        
                        <td class="style30" height="1">
                            <asp:Image ID="Image2" 
                    runat="server" Height="84px" 
                    ImageUrl="~/images/personal.jpeg" Width="143px" 
                                style="text-align: center; margin-left: 73px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style22" colspan="1" height="1" width="1">
                            <dxnb:ASPxNavBar ID="ASPxNavBar1" runat="server" 
                                CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                                CssPostfix="BlackGlass" GroupSpacing="0px" 
                                ImageFolder="~/App_Themes/BlackGlass/{0}/">
                                <Groups>
                                    <dxnb:NavBarGroup Text="Empleado">
                                        <Items>
                                            <dxnb:NavBarItem NavigateUrl="~/WebForm_Empleado.aspx" Text="Añadir">
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
                        
                        <td class="style37" height="1">
                            &nbsp;</td>
                        
                        <td class="style37" height="1" style="width: 0" colspan="2">
                            <asp:TextBox ID="TextBoxBus" runat="server" Height="20px" Width="80px" 
                                style="text-align: right; float: right;"></asp:TextBox>
                        </td>
                        
                        <td class="style37" height="1" style="width: 0" width="1">
                            <asp:DropDownList ID="DropDownListSelecc" runat="server" Height="19px" 
                                style="margin-left: 34px" Width="93px" AutoPostBack="True">
                                <asp:ListItem>Codigo</asp:ListItem>
                                <asp:ListItem>Nombre</asp:ListItem>
                                <asp:ListItem>Apellido</asp:ListItem>
                                <asp:ListItem>Direccion</asp:ListItem>
                                <asp:ListItem>Codigo Cargo</asp:ListItem>
                                <asp:ListItem>Salario</asp:ListItem>
                                <asp:ListItem>Celular</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        
                        <td class="style37" height="1">
                <asp:ImageButton ID="ImageButtonBuscar" runat="server" 
                    ImageUrl="~/images/buscar-32.png" Width="31px" 
                    onclick="ImageButtonBuscar_Click" BorderStyle="Solid" style="text-align: center" 
                                Height="23px" />
                        </td>
                        <td class="style25">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22" colspan="6" height="1" width="1">
                            <dxwgv:ASPxGridView ID="ASPxGridViewEmpleado" runat="server" 
                    AutoGenerateColumns="False" 
                    style="text-align: center" 
                    onafterperformcallback="ASPxGridViewEmpleado_AfterPerformCallback" 
                    CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                    CssPostfix="BlackGlass" Width="10px">
                    <Styles CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                        CssPostfix="BlackGlass">
                        <Header ImageSpacing="5px" SortingImageSpacing="5px">
                        </Header>
                    </Styles>
                    <SettingsPager AlwaysShowPager="True">
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
                    </SettingsPager>
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
                        <LoadingPanel Height="10px" Width="10px" />
                        
                    </Images>
                    <Columns>
                        <dxwgv:GridViewCommandColumn VisibleIndex="0">
                            <clearfilterbutton visible="True">
                            </clearfilterbutton>
                        </dxwgv:GridViewCommandColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Código" FieldName="idEmpleado" 
                            VisibleIndex="1">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Nombre" FieldName="NombreEmp" 
                            VisibleIndex="2">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Apellido" FieldName="ApellidoEmp" 
                            VisibleIndex="3">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Dirección" FieldName="DireccEmp" 
                            VisibleIndex="4">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Edad" FieldName="Edad" VisibleIndex="5">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Salario" FieldName="Salario" 
                            VisibleIndex="6">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Movil" FieldName="Movil" 
                            VisibleIndex="7">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Teléfono" FieldName="TelefEmp" 
                            VisibleIndex="8">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Cédula" FieldName="Cedula" 
                            VisibleIndex="9">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Activo" FieldName="Activo" 
                            VisibleIndex="10">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Cargo" FieldName="cargo.NombreCargo" 
                            VisibleIndex="11">
                        </dxwgv:GridViewDataTextColumn>
                    </Columns>
                    <StylesPager EnableDefaultAppearance="False">
                        <CurrentPageNumber Height="10px" Width="10px">
                        </CurrentPageNumber>
                    </StylesPager>
                    <settings showfilterrow="True" />
                    <StylesEditors>
                        <ProgressBar Height="25px">
                        </ProgressBar>
                    </StylesEditors>
                </dxwgv:ASPxGridView>
                        </td>
                        
                        <td class="style25">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22" colspan="1" height="1" width="1">
                            &nbsp;</td>
                        
                        <td class="style37" height="1">
                            &nbsp;</td>
                        
                        <td class="style37" height="1" style="width: 0" colspan="2">
                            &nbsp;</td>
                        
                        <td height="1" style="width: 0; text-align: center;" width="1">
                            <asp:Button ID="ButtonMostrar" runat="server" Height="23px" 
                                Text="Mostrar Registros" Width="132px" 
                                onclick="ButtonMostrar_Click" BackColor="AliceBlue" 
                    ForeColor="#006699" />
                        </td>
                        
                        <td class="style37" height="1">
                            &nbsp;</td>
                        <td class="style25">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22" colspan="1" height="1" width="1">
                            &nbsp;</td>
                        
                        <td class="style37" height="1">
                            &nbsp;</td>
                        
                        <td class="style37" height="1" style="width: 0" colspan="2">
                            &nbsp;</td>
                        
                        <td class="style37" height="1" style="width: 0" width="1">
                            &nbsp;</td>
                        
                        <td class="style37" height="1">
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
                        <td class="style25">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style22" colspan="1" height="1" width="1">
                            &nbsp;</td>
                        
                        <td class="style37" height="1">
                            &nbsp;</td>
                        
                        <td class="style37" height="1" style="width: 0" colspan="2">
                            &nbsp;</td>
                        
                        <td class="style37" height="1" style="width: 0" width="1">
                            &nbsp;</td>
                        
                        <td class="style37" height="1">
                            &nbsp;</td>
                        <td class="style25">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            
        </tr>
        <tr bgcolor="AliceBlue">
            
            <td align="center" class="style32" bgcolor="#006699">
                &nbsp;</td>
            
        </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                            </div>
<br />
