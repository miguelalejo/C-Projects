<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlBuscarProveedor.ascx.cs" Inherits="Aldental.WebUserControlBuscarProveedor" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dxnb" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dxm" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dxp" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dxrp" %>
<style type="text/css">



    .style1
    {
        width: 100%;
        height: 270px;
    }
    .style5
    {
        height: 25px;
    }
    .style13
    {
        width: 102px;
        height: 217px;
    }
    .style32
    {
        height: 217px;
    }
    .style27
    {
        width: 186px;
        height: 52px;
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
.dxnbGroupHeader_Office2003_Olive table.dxnb
{
	font: bold 9pt Tahoma;
	color: black;
}
.dxnbGroupHeader_Office2003_Olive td.dxnb
{
	white-space: nowrap;
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
.dxnbControl_Office2003_Olive a
{
	color: black;
}
    .style28
    {
        width: 143px;
        height: 52px;
    }
    .style29
    {
        width: 170px;
        height: 52px;
    }
    .style30
    {
        width: 116px;
        height: 52px;
    }
    .style31
    {
        height: 52px;
    }
    .style22
    {
        width: 186px;
        height: 62px;
    }
    .style23
    {
        width: 143px;
        height: 62px;
    }
    .style24
    {
        width: 170px;
        height: 62px;
    }
    .style25
    {
        width: 116px;
        height: 62px;
    }
    .style26
    {
        height: 62px;
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
    
    .dxgvControl_BlackGlass
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

.dxgvHeader_BlackGlass 
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

.dxgvHeader_BlackGlass td {
	white-space:nowrap;
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
.dxeTextBox_BlackGlass, .dxeMemo_BlackGlass
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
	background-color: #FFFFFF;
}

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
    .style33
    {
        width: 251px;
    }
.dxmMenu_Aqua, .dxmVerticalMenu_Aqua
{
	font: 9pt Tahoma;
	color: #283B56;
	background-color: #E2F0FF;
	
	padding: 0px 0px 0px 0px;
	
	background-image: url('App_Themes/Aqua/Web/mItemBack.gif');	
    background-repeat:repeat-x;	
    background-position:50% top;
    }

.dxmMenuItem_Aqua
{
	padding-right: 13px;
	padding-left: 13px;	    
}

.dxmMenuItem_Aqua, .dxmMenuItemWithImage_Aqua
{
	padding-top: 4px;
	padding-right: 13px;
	padding-bottom: 5px;
	padding-left: 9px;	
}

.dxmMenuItem_Aqua, .dxmMenuItemWithImage_Aqua, .dxmMenuItemWithPopOutImage_Aqua, .dxmMenuItemWithImageWithPopOutImage_Aqua,
.dxmVerticalMenuItem_Aqua, .dxmVerticalMenuItemWithImage_Aqua, .dxmVerticalMenuItemWithPopOutImage_Aqua, .dxmVerticalMenuItemWithImageWithPopOutImage_Aqua, 
.dxmMenuLargeItem_Aqua, .dxmMenuLargeItemWithImage_Aqua, .dxmMenuLargeItemWithPopOutImage_Aqua, .dxmMenuLargeItemWithImageWithPopOutImage_Aqua,
.dxmVerticalMenuLargeItem_Aqua, .dxmVerticalMenuLargeItemWithImage_Aqua, .dxmVerticalMenuLargeItemWithPopOutImage_Aqua, .dxmVerticalMenuLargeItemWithImageWithPopOutImage_Aqua
{
	font: 9pt Tahoma;
	color: black;
	white-space: nowrap;
	
	background-image: url('App_Themes/Aqua/Web/mItemBack.gif');	
    background-repeat:repeat-x;	
    background-position:50% top;
    }
    .style34
    {
        width: 979px;
    }
.dxeBase
{
    font-family: Tahoma;
    font-size: 9pt;
}
    .style38
    {
        height: 257px;
    }
    .style39
    {
        width: 251px;
        height: 257px;
    }
    .style40
    {
        width: 979px;
        height: 257px;
    }
    .style41
    {
        height: 29px;
    }
    .style42
    {
        width: 251px;
        height: 29px;
    }
    .style43
    {
        width: 979px;
        height: 29px;
    }
    .style44
    {
        height: 29px;
        width: 480px;
    }
</style>
<div>
    <table class="style1">
        <tr>
            <td align="center" bgcolor="#336699" class="style5" colspan="11" 
                style="color: #FFFFFF; font-size: large; font-weight: bold">
                BUSCADOR PROVEEDOR</td>
        </tr>
        <tr>
            <td align="center" class="style13">
            </td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style32">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width: 100%; height: 129px;">
                    <tr>
                        <td class="style27">
                            &nbsp;</td>
                        <td class="style28">
                <asp:Image ID="Image1" runat="server" Height="79px" 
                    ImageUrl="~/images/dentalgeneral.gif" Width="123px" />
                        </td>
                        <td class="style29">
                        </td>
                        <td class="style30">
                            <asp:Image ID="Image2" 
                    runat="server" Height="84px" 
                    ImageUrl="~/images/prod1.jpeg" Width="136px" />
                        </td>
                        <td class="style30">
                        </td>
                        <td class="style31">
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;</td>
                        <td class="style23">
                            <asp:TextBox ID="TextBoxBus" runat="server"></asp:TextBox>
                        </td>
                        <td class="style24">
                            <asp:DropDownList ID="DropDownListProveedor" runat="server" Height="25px" 
                                style="margin-left: 34px" Width="100px">
                                <asp:ListItem>Codigo</asp:ListItem>
                                <asp:ListItem>Nombre</asp:ListItem>
                                <asp:ListItem>Dureccion</asp:ListItem>
                                <asp:ListItem>Ruc</asp:ListItem>
                                <asp:ListItem>Telefono</asp:ListItem>
                                <asp:ListItem>Activo</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style25">
                <asp:ImageButton ID="ImageButtonBuscar" runat="server" 
                    ImageUrl="~/images/buscar-32.png" Width="31px" 
                    onclick="ImageButtonBuscar_Click" BorderStyle="Solid" 
                                style="text-align: center; height: 31px;" />
                        </td>
                        <td class="style25">
                            &nbsp;</td>
                        <td class="style26">
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            <dxnb:ASPxNavBar ID="ASPxNavBar2" runat="server" 
                                CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                                CssPostfix="BlackGlass" GroupSpacing="0px" 
                                ImageFolder="~/App_Themes/BlackGlass/{0}/" 
                                onitemclick="ASPxNavBar2_ItemClick" Width="100px">
                                <Groups>
                                    <dxnb:NavBarGroup Text="Proveedor">
                                        <Items>
                                            <dxnb:NavBarItem NavigateUrl="~/WebForm_Proveedor.aspx" Text="Añadir">
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
                        <td class="style23">
                            &nbsp;</td>
                        <td class="style24">
                            <dxrp:ASPxRoundPanel ID="ASPxRoundPanel1" runat="server" BackColor="#F7F7F7" 
                                Visible="False" Width="200px">
                                <BottomRightCorner Height="5px" 
                                    Url="~/Images/ASPxRoundPanel/606710530/BottomRightCorner.png" Width="5px" />
                                <NoHeaderTopRightCorner Height="5px" 
                                    Url="~/Images/ASPxRoundPanel/606710530/NoHeaderTopRightCorner.png" 
                                    Width="5px" />
                                <HeaderRightEdge>
                                    <BackgroundImage HorizontalPosition="right" 
                                        ImageUrl="~/Images/ASPxRoundPanel/606710530/HeaderRightEdge.png" 
                                        Repeat="NoRepeat" VerticalPosition="bottom" />
                                </HeaderRightEdge>
                                <Border BorderColor="#8B8B8B" BorderStyle="Solid" BorderWidth="1px" />
                                <HeaderLeftEdge>
                                    <BackgroundImage HorizontalPosition="left" 
                                        ImageUrl="~/Images/ASPxRoundPanel/606710530/HeaderLeftEdge.png" 
                                        Repeat="NoRepeat" VerticalPosition="bottom" />
                                </HeaderLeftEdge>
                                <HeaderStyle BackColor="#DEDEDE">
                                <BorderLeft BorderStyle="None" />
                                <BorderRight BorderStyle="None" />
                                <BorderBottom BorderStyle="None" />
                                </HeaderStyle>
                                <TopRightCorner Height="5px" 
                                    Url="~/Images/ASPxRoundPanel/606710530/TopRightCorner.png" Width="5px" />
                                <HeaderContent>
                                    <BackgroundImage HorizontalPosition="left" 
                                        ImageUrl="~/Images/ASPxRoundPanel/606710530/HeaderContent.png" Repeat="RepeatX" 
                                        VerticalPosition="bottom" />
                                </HeaderContent>
                                <NoHeaderTopLeftCorner Height="5px" 
                                    Url="~/Images/ASPxRoundPanel/606710530/NoHeaderTopLeftCorner.png" Width="5px" />
                                <PanelCollection>
<dxp:PanelContent runat="server">
    <dxe:ASPxLabel ID="ASPxLabel1" runat="server">
    </dxe:ASPxLabel>
                                    </dxp:PanelContent>
</PanelCollection>
                                <TopLeftCorner Height="5px" 
                                    Url="~/Images/ASPxRoundPanel/606710530/TopLeftCorner.png" Width="5px" />
                                <BottomLeftCorner Height="5px" 
                                    Url="~/Images/ASPxRoundPanel/606710530/BottomLeftCorner.png" Width="5px" />
                            </dxrp:ASPxRoundPanel>
                        </td>
                        <td class="style25">
                            &nbsp;</td>
                        <td class="style25">
                            &nbsp;</td>
                        <td class="style26">
                            &nbsp;</td>
                    </tr>
                </table>
                <table style="width: 100%;">
                    <tr>
                        <td class="style38" colspan="6">
                <dxwgv:ASPxGridView ID="ASPxGridViewProveedor" runat="server" 
                    AutoGenerateColumns="False" 
                    CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                    style="text-align: center" Width="620px">
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
                    <TotalSummary>
                        <dxwgv:ASPxSummaryItem DisplayFormat="Suma Stock" ShowInColumn="Stock" 
                            SummaryType="Sum" />
                    </TotalSummary>
                    <Images ImageFolder="~/App_Themes/BlackGlass/{0}/">
                        <FilterRowButton Height="13px" Width="13px" />
                        <LoadingPanel Height="20px" Width="20px" />
                    </Images>
                    <Columns>
                        <dxwgv:GridViewCommandColumn VisibleIndex="0">
                            <ClearFilterButton Visible="True">
                            </ClearFilterButton>
                        </dxwgv:GridViewCommandColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Código" FieldName="idProveedor" 
                            VisibleIndex="1">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Nombre" FieldName="NombreProvee" 
                            VisibleIndex="2">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Dirección" FieldName="DireccionProvee" 
                            VisibleIndex="3">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Ruc" FieldName="RUC" 
                            VisibleIndex="4">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Telefono" FieldName="TelefPProvee" 
                            VisibleIndex="5">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Activo" FieldName="Activo" 
                            VisibleIndex="6">
                        </dxwgv:GridViewDataTextColumn>
                    </Columns>
                    <Settings ShowFilterRow="True" />
                    <StylesEditors>
                        <ProgressBar Height="25px">
                        </ProgressBar>
                    </StylesEditors>
                </dxwgv:ASPxGridView>
                            </td>
                        <td class="style39">
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                        <td class="style40">
                            &nbsp;</td>
                        <td class="style38">
                            </td>
                        <td class="style38">
                            </td>
                    </tr>
                    <tr>
                        <td class="style44">
                            </td>
                        <td class="style44">
                            </td>
                        <td class="style44">
                <dxm:ASPxMenu ID="ASPxMenuProveedor" runat="server" AccessibilityCompliant="True" 
                    ApplyItemStyleToTemplates="True" AutoPostBack="True" AutoSeparators="All" 
                    BorderBetweenItemAndSubMenu="HideRootOnly" 
                    CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua" 
                    EnableCallbackCompression="True" EnableCallBacks="True" 
                    EnableClientSideAPI="True" GutterImageSpacing="7px" 
                    ImageFolder="~/App_Themes/Aqua/{0}/" ItemAutoWidth="False" ItemSpacing="0px" 
                    onitemclick="ASPxMenuProveedor_ItemClick" SeparatorColor="#AECAF0" 
                    SeparatorHeight="100%" SeparatorWidth="1px" ShowPopOutImages="True">
                    <RootItemSubMenuOffset FirstItemX="-1" FirstItemY="-1" X="-1" Y="-1" />
                    <Items>
                        <dxm:MenuItem Name="ListarRegistros" Text="Listar Registros" 
                            ToolTip="Lista todas las marcas de los productos ">
                        </dxm:MenuItem>
                    </Items>
                    <VerticalPopOutImage Height="11px" Width="11px" />
                    <ItemStyle ImageSpacing="5px" PopOutImageSpacing="18px" 
                        VerticalAlign="Middle" />
                    <SubMenuStyle BackColor="#F9F9F9" GutterWidth="0px" SeparatorColor="#AECAF0" />
                    <SubMenuItemStyle ImageSpacing="7px">
                    </SubMenuItemStyle>
                    <Border BorderColor="#AECAF0" BorderStyle="Solid" BorderWidth="1px" />
                    <HorizontalPopOutImage Height="7px" Width="7px" />
                </dxm:ASPxMenu>
                        </td>
                        <td class="style44">
                            </td>
                        <td class="style41">
                            &nbsp;</td>
                        <td class="style41">
                            </td>
                        <td class="style42">
                            </td>
                        <td class="style43">
                        </td>
                        <td class="style41">
                            </td>
                        <td class="style41">
                            </td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            &nbsp;</td>
                        <td class="style33">
                            &nbsp;</td>
                        <td class="style34">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="6">
                            &nbsp;</td>
                        <td class="style33">
                            &nbsp;</td>
                        <td class="style34">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td align="center" class="style32">
            </td>
        </tr>
        <tr>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style13">
                &nbsp;</td>
            <td align="center" class="style32">
                &nbsp;</td>
            <td align="center" class="style32">
                &nbsp;</td>
        </tr>
        </table>
&nbsp;&nbsp;</div>
