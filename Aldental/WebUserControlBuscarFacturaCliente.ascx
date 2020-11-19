<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlBuscarFacturaCliente.ascx.cs" Inherits="Aldental.WebUserControlBuscarFacturaCliente" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dxp" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dxrp" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dxnb" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dxm" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dxpc" %>
<style type="text/css">



    .style1
    {
        width: 63%;
        height: 352px;
    }
    .style5
    {
        height: 25px;
    }
    .style13
    {
        width: 20px;
        height: 217px;
    }
    .style32
    {
        height: 217px;
    }
    .style27
    {
        width: 168px;
        height: 52px;
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
    .style28
    {
        width: 142px;
        height: 52px;
    }
    .style29
    {
        width: 120px;
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
        height: 62px;
    }
    .style23
    {
        height: 62px;
    }
    .style24
    {
        width: 120px;
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
    .dxrpHeader, .dxrpHeader td.dxrp
{
    font-size: 9pt;
	font-family: Tahoma, Verdana, Arial;    
	color: #313131;
}
    .dxrpHeader
{
    font-size: 9pt;
	font-family: Tahoma, Verdana, Arial;    
	color: #313131;
}
.dxrpControl td.dxrp
{
	font-size: 9pt;
	font-family: Tahoma, Verdana, Arial;
	color: #000000;	
}
.dxrpControl td.dxrp
{
	font-size: 9pt;
	font-family: Tahoma, Verdana, Arial;
	color: #000000;	
}
    .dxrpHeader td.dxrp
{
    font-size: 9pt;
	font-family: Tahoma, Verdana, Arial;    
	color: #313131;
}
.dxeBase
{
    font-family: Tahoma;
    font-size: 9pt;
}
.dxeBase
{
    font-family: Tahoma;
    font-size: 9pt;
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

.dxgvFilterRow_BlackGlass 
{
	background-color: #eef2f5;
}

.dxgvFilterRow_BlackGlass 
{
	background-color: #eef2f5;
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

.dxgvFilterRow_BlackGlass td.dxgv
{
	border-bottom: solid 1px #c2d4da;
	border-right: 1px solid #c2d4da;
	border-top: 0;
	border-left: 0;
	padding: 2px 2px 2px 2px;
}

.dxgvFilterRow_BlackGlass td.dxgv
{
	border-bottom: solid 1px #c2d4da;
	border-right: 1px solid #c2d4da;
	border-top: 0;
	border-left: 0;
	padding: 2px 2px 2px 2px;
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
.dxgvCommandColumn_BlackGlass
{
	padding: 2px 2px 2px 2px;
}
.dxgvCommandColumn_BlackGlass
{
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
.dxeTextBox_BlackGlass
{
	background-color: white;
    border: Solid 1px #9F9F9F;
}
.dxeTextBox_BlackGlass
{
	background-color: white;
    border: Solid 1px #9F9F9F;
}
.dxeTextBox_BlackGlass
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
.dxeTextBox_BlackGlass td.dxic
{
	width: 100%;
}
.dxeTextBox_BlackGlass td.dxic
{
	padding: 1px 2px;
}
.dxeTextBox_BlackGlass td.dxic
{
	padding: 1px 2px;
}
.dxeTextBox_BlackGlass td.dxic
{
	width: 100%;
}
.dxeTextBox_BlackGlass td.dxic
{
	padding: 1px 2px;
}
.dxeTextBox_BlackGlass td.dxic
{
	width: 100%;
}
.dxeEditArea_BlackGlass
{
	font-family: Tahoma;
	font-size: 9pt;
	border: 1px solid #A0A0A0;
}

.dxeEditArea_BlackGlass
{
	font-family: Tahoma;
	font-size: 9pt;
	border: 1px solid #A0A0A0;
}

.dxeEditArea_BlackGlass
{
	font-family: Tahoma;
	font-size: 9pt;
	border: 1px solid #A0A0A0;
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

.dxmMenu_Aqua
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

.dxmMenuItem_Aqua
{
	font: 9pt Tahoma;
	color: black;
	white-space: nowrap;
	
	background-image: url('App_Themes/Aqua/Web/mItemBack.gif');	
    background-repeat:repeat-x;	
    background-position:50% top;
    }

.dxmMenuItem_Aqua
{
	padding-top: 4px;
	padding-right: 13px;
	padding-bottom: 5px;
	padding-left: 9px;	
}

.dxmMenuItem_Aqua
{
	padding-right: 13px;
	padding-left: 13px;	    
}

.dxmControl_Aqua a, .dxmMenu_Aqua a, .dxmVerticalMenu_Aqua a, .dxmSubMenu_Aqua a
{
	color: #283B56;
	text-decoration: none;
}
.dxmMenu_Aqua a
{
	color: #283B56;
	text-decoration: none;
}
    .style33
    {
        height: 1%;
        white-space: nowrap;
        vertical-align: Top;
        font-size: 9pt;
        font-family: Tahoma, Verdana, Arial;
        color: #313131;
        border-bottom: 1px Solid #C6C6C6;
        padding-left: 6px;
        padding-right: 6px;
        padding-top: 1px;
        padding-bottom: 5px;
        background-color: #DEDEDE;
    }

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

</style>
<div>
    <table class="style1">
        <tr>
            <td align="center" bgcolor="#336699" class="style5" colspan="3" 
                style="color: #FFFFFF; font-size: large; font-weight: bold">
                BUSCAR FACTURA CLIENTE</td>
        </tr>
        <tr bgcolor="AliceBlue">
            
            <td align="center" class="style32" bgcolor="AliceBlue">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width: 100%; height: 91px;">
                    <tr>
                        <td class="style27">
                            <dxnb:ASPxNavBar ID="ASPxNavBar1" runat="server" 
                                CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                                CssPostfix="BlackGlass" GroupSpacing="0px" 
                                ImageFolder="~/App_Themes/BlackGlass/{0}/" 
                                onitemclick="ASPxNavBar1_ItemClick" Height="74px" Width="101px">
                                <Groups>
                                    <dxnb:NavBarGroup Text="Factura">
                                        <Items>
                                            <dxnb:NavBarItem NavigateUrl="~/WebForm_FacturaCliente.aspx" Text="Añadir">
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
                <asp:Image ID="Image1" runat="server" Height="96px" 
                    ImageUrl="~/images/material2.jpg" Width="134px" />
                        </td>
                        <td class="style29">
                            <asp:Image ID="Image2" 
                    runat="server" Height="91px" 
                    ImageUrl="~/images/prod.jpeg" Width="139px" />
                        </td>
                        <td class="style30">
                            &nbsp;</td>
                        
                        
                    </tr>
                    <tr>
                        <td class="style22">
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                            <dxpc:ASPxPopupControl ID="ASPxPopupControlError" runat="server" 
                    AccessibilityCompliant="True" AppearAfter="0" CloseAction="CloseButton" 
                    CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                    DisappearAfter="10" FooterText="Error en la Factura" HeaderText="Información" 
                    Height="42px" ImageFolder="~/App_Themes/BlackGlass/{0}/" Left="600" 
                    Modal="True" PopupHorizontalAlign="WindowCenter" 
                    PopupVerticalAlign="WindowCenter" ShowFooter="True" Top="600" Width="147px">
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
                        <td class="style23">
                            <asp:DropDownList ID="DropDownListSelecc" runat="server" Height="19px" 
                                Width="111px">
                                <asp:ListItem Value="codigo">Código</asp:ListItem>
                                <asp:ListItem Value="Codigo de pago">Codigo de pago</asp:ListItem>
                                <asp:ListItem Value="CodigoEmpleado">Codigo Empleado</asp:ListItem>
                                <asp:ListItem Value="CodigoCliente">Codigo Cliente</asp:ListItem>
                                <asp:ListItem>Fecha</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style24">
                            <asp:TextBox ID="TextBoxBus" runat="server" style="width: 80px" Height="20px" 
                                Width="72px"></asp:TextBox>
                <asp:ImageButton ID="ImageButtonBuscar" runat="server" 
                    ImageUrl="~/images/buscar-32.png" Width="31px" 
                    onclick="ImageButtonBuscar_Click" BorderStyle="Solid" 
                                style="text-align: left; " Height="27px" />
                        </td>
                        <td class="style25">
                            &nbsp;</td>
                        
                        
                    </tr>
                   
                    <tr>
                        <td class="style22" colspan="4">
                <dxwgv:ASPxGridView ID="ASPxGridViewFacturaCliente" runat="server" 
                    AutoGenerateColumns="False" 
                    style="text-align: center" 
                    CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                    CssPostfix="BlackGlass" Width="16px" 
                    KeyFieldName="idFacClien">
                    <Templates>
                        <DetailRow>
                            <dxwgv:ASPxGridView ID="ASPxGridViewDetalle" runat="server" 
                                AutoGenerateColumns="False" DataSourceID="ObjectDataSourceDetalleFac" 
                                onbeforeperformdataselect="ASPxGridViewDetalle_BeforePerformDataSelect">
                                <Images>
                                    <FilterRowButton Height="10px" Width="10px" />
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
                                    <dxwgv:GridViewDataTextColumn FieldName="idFC" VisibleIndex="0">
                                    </dxwgv:GridViewDataTextColumn>
                                    <dxwgv:GridViewDataTextColumn FieldName="producto.idProducto" VisibleIndex="1" 
                                        Caption="ID Producto">
                                    </dxwgv:GridViewDataTextColumn>
                                    <dxwgv:GridViewDataTextColumn FieldName="producto.NombreProducto" 
                                        VisibleIndex="2" Caption="Nombre del Producto">
                                    </dxwgv:GridViewDataTextColumn>
                                    <dxwgv:GridViewDataTextColumn FieldName="Cantidad" VisibleIndex="1">
                                    </dxwgv:GridViewDataTextColumn>
                                    <dxwgv:GridViewDataTextColumn FieldName="PrecioUnitario" VisibleIndex="4">
                                    </dxwgv:GridViewDataTextColumn>
                                    <dxwgv:GridViewDataTextColumn FieldName="Total" VisibleIndex="5">
                                    </dxwgv:GridViewDataTextColumn>
                                </Columns>
                                <SettingsDetail IsDetailGrid="True" />
                            </dxwgv:ASPxGridView>
                        </DetailRow>
                    </Templates>
                    <SettingsCustomizationWindow Height="60px" Width="60px" />
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
                    <ImagesFilterControl>
                        <AddButton Height="10px" Width="10px" />
                        <AddButtonHot Height="10px" Width="10px" />
                        <RemoveButton Height="10px" Width="10px" />
                        <RemoveButtonHot Height="10px" Width="10px" />
                        <AddCondition Height="10px" Width="10px" />
                        <AddGroup Height="10px" Width="10px" />
                        <RemoveGroup Height="10px" Width="10px" />
                        <GroupTypeAnd Height="10px" Width="10px" />
                        <GroupTypeOr Height="10px" Width="10px" />
                        <GroupTypeNotAnd Height="10px" Width="10px" />
                        <GroupTypeNotOr Height="10px" Width="10px" />
                        <OperationAnyOf Height="10px" Width="10px" />
                        <OperationBeginsWith Height="10px" Width="10px" />
                        <OperationBetween Height="10px" Width="10px" />
                        <OperationContains Height="10px" Width="10px" />
                        <OperationDoesNotContain Height="10px" Width="10px" />
                        <OperationDoesNotEqual Height="10px" Width="10px" />
                        <OperationEndsWith Height="10px" Width="10px" />
                        <OperationEquals Height="10px" Width="10px" />
                        <OperationGreater Height="10px" Width="10px" />
                        <OperationGreaterOrEqual Height="10px" Width="10px" />
                        <OperationIsNotNull Height="10px" Width="10px" />
                        <OperationIsNull Height="10px" Width="10px" />
                        <OperationLess Height="10px" Width="10px" />
                        <OperationLessOrEqual Height="10px" Width="10px" />
                        <OperationLike Height="10px" Width="10px" />
                        <OperationNoneOf Height="10px" Width="10px" />
                        <OperationNotBetween Height="10px" Width="10px" />
                        <OperationNotLike Height="10px" Width="10px" />
                        <LoadingPanel Height="10px" Width="10px" />
                    </ImagesFilterControl>
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
                        <LoadingPanel Height="20px" Width="20px" />
                    </Images>
                    <Columns>
                        <dxwgv:GridViewCommandColumn VisibleIndex="0">
                            <ClearFilterButton Visible="True">
                                <Image Height="10px" Width="10px" />
                            </ClearFilterButton>
                            <EditButton>
                                <Image Height="10px" Width="10px" />
                            </EditButton>
                            <NewButton>
                                <Image Height="10px" Width="10px" />
                            </NewButton>
                            <DeleteButton>
                                <Image Height="10px" Width="10px" />
                            </DeleteButton>
                            <SelectButton>
                                <Image Height="10px" Width="10px" />
                            </SelectButton>
                            <CancelButton>
                                <Image Height="10px" Width="10px" />
                            </CancelButton>
                            <UpdateButton>
                                <Image Height="10px" Width="10px" />
                            </UpdateButton>
                        </dxwgv:GridViewCommandColumn>
                        <dxwgv:GridViewDataTextColumn FieldName="idFacClien" 
                            VisibleIndex="1">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Nombre Cliente" FieldName="cliente.NombreCliente" 
                            VisibleIndex="2">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Forma de Pago" 
                            FieldName="formapago.NombreFormaPago" VisibleIndex="3">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Nombre Empleado" 
                            FieldName="empleado.NombreEmp" VisibleIndex="4">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Estado" 
                            FieldName="estadofactura.NombreEstado" VisibleIndex="5">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Tipo de Credito" 
                            FieldName="creditofactura.NombreCredito" VisibleIndex="6">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Fecha Emisión" FieldName="FechaFacClien" 
                            VisibleIndex="7">
                        </dxwgv:GridViewDataTextColumn>
                    </Columns>
                    <Settings ShowFilterRow="True" />
                    <StylesEditors>
                        <ProgressBar Height="25px">
                        </ProgressBar>
                    </StylesEditors>
                    <SettingsDetail ShowDetailRow="True" />
                    <ImagesEditors>
                        <CalendarPrevYear Height="10px" Width="10px" />
                        <CalendarPrevMonth Height="10px" Width="10px" />
                        <CalendarNextMonth Height="10px" Width="10px" />
                        <CalendarNextYear Height="10px" Width="10px" />
                        <CalendarFastNavPrevYear Height="10px" Width="10px" />
                        <CalendarFastNavNextYear Height="10px" Width="10px" />
                        <CheckBoxChecked Height="10px" Width="10px" />
                        <CheckBoxUnchecked Height="10px" Width="10px" />
                        <CheckBoxUndefined Height="10px" Width="10px" />
                        <RadioButtonChecked Height="10px" Width="10px" />
                        <RadioButtonUnchecked Height="10px" Width="10px" />
                        <RadioButtonUndefined Height="10px" Width="10px" />
                        <ButtonEditEllipsis Height="10px" Width="10px" />
                        <DropDownEditDropDown Height="10px" Width="10px" />
                        <ImageEmpty Height="10px" Width="10px" />
                        <ListEditItem Height="10px" Width="10px" />
                        <SpinEditIncrement Height="10px" Width="10px" />
                        <SpinEditDecrement Height="10px" Width="10px" />
                        <SpinEditLargeIncrement Height="10px" Width="10px" />
                        <SpinEditLargeDecrement Height="10px" Width="10px" />
                        <LoadingPanel Height="10px" Width="10px" />
                    </ImagesEditors>
                </dxwgv:ASPxGridView>
                        </td>
                        
                    </tr>
                   
                    <tr>
                        <td class="style22" colspan="4">
                <asp:ObjectDataSource ID="ObjectDataSourceDetalleFac" runat="server" 
                    SelectMethod="BuscarRegistros_idFacClien" 
                    TypeName="ClasesAldental.detallefacclien" 
                    OldValuesParameterFormatString="original_{0}">
                    <SelectParameters>
                        <asp:SessionParameter DefaultValue="1" Name="idFacClien" 
                            SessionField="idFacClien" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <dxm:ASPxMenu ID="ASPxMenu1" runat="server" AccessibilityCompliant="True" 
                    ApplyItemStyleToTemplates="True" AutoPostBack="True" AutoSeparators="All" 
                    BorderBetweenItemAndSubMenu="HideRootOnly" 
                    CssFilePath="~/App_Themes/Aqua/{0}/styles.css" CssPostfix="Aqua" 
                    EnableCallbackCompression="True" EnableCallBacks="True" 
                    EnableClientSideAPI="True" GutterImageSpacing="7px" 
                    ImageFolder="~/App_Themes/Aqua/{0}/" ItemAutoWidth="False" ItemSpacing="0px" 
                    onitemclick="ASPxMenu1_ItemClick" SeparatorColor="#AECAF0" 
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
                        
                    </tr>
                   
                </table>
                <br />
                <br />
            </td>
            
        </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
<br />
