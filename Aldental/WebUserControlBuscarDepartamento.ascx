<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlBuscarDepartamento.ascx.cs" Inherits="Aldental.WebUserControlBuscarDepartamento1" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPanel" tagprefix="dxp" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxRoundPanel" tagprefix="dxrp" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dxm" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dxnb" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>
<%@ Register assembly="DevExpress.Web.ASPxGridView.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxGridView" tagprefix="dxwgv" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dxpc" %>
<style type="text/css">


    .style1
    {
        width: 46%;
        height: 327px;
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
        width: 148px;
        height: 52px;
    }
    .style30
    {
        width: 116px;
        height: 52px;
    }
    .style22
    {
        width: 168px;
        height: 62px;
    }
    .style23
    {
        height: 62px;
    }
    .style24
    {
        width: 148px;
        height: 62px;
    }
    .style25
    {
        width: 116px;
        height: 62px;
    }
    .dxrpHeader, .dxrpHeader td.dxrp
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
.dxmControl_Aqua a, .dxmMenu_Aqua a, .dxmVerticalMenu_Aqua a, .dxmSubMenu_Aqua a
{
	color: #283B56;
	text-decoration: none;
}
    
.dxeButtonEdit_BlackGlass
{
    border: solid 1px #9F9F9F;
}
.dxeButtonEdit_BlackGlass 
{
	background-color: white;
	width: 170px;
}
.dxeButtonEditButton_BlackGlass
{
	background-image: url('App_Themes/BlackGlass/Editors/edtButtonBack_16.gif');	
    background-repeat:repeat-x;
    background-position:50% top;
	border: solid 1px Black;    
	background-color: #303030;	
	padding: 0px 1px;
}

.dxeButtonEditButton_BlackGlass, .dxeCalendarButton_BlackGlass,
.dxeSpinIncButton_BlackGlass, .dxeSpinDecButton_BlackGlass,
.dxeSpinLargeIncButton_BlackGlass, .dxeSpinLargeDecButton_BlackGlass
{	
	background-color: #f0f0f0;	
	vertical-align: middle;
	cursor: pointer;
	cursor: hand;
} 
    .dxgvGroupPanel_BlackGlass
{
	white-space:nowrap;
	background: #CDD7DE url('App_Themes/BlackGlass/GridView/gvGroupPanelBackground.gif') repeat-x left top;
	border-bottom: solid 1px #4E4F51;
	padding: 7px 4px 8px 9px;
}
        
* {
	margin: 0px 2px 1px 0px;
	padding: 0px;
        text-align: center;
    }

</style>
<div>
    <table class="style1">
        <tr>
            <td align="center" bgcolor="#336699" class="style5" colspan="3" 
                style="color: #FFFFFF; font-size: large; font-weight: bold">
                BUSCADOR&nbsp; DEPARTAMENTO</td>
        </tr>
        <tr>
            <td align="center" class="style13">
            </td>
            <td align="center" class="style32" bgcolor="#F0FAFF">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<table style="width: 100%; height: 91px;">
                    <tr>
                        <td class="style27">
                            <dxnb:ASPxNavBar ID="ASPxNavBar1" runat="server" 
                                CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                                CssPostfix="BlackGlass" GroupSpacing="0px" 
                                ImageFolder="~/App_Themes/BlackGlass/{0}/" 
                                onitemclick="ASPxNavBar1_ItemClick" Height="68px" Width="86px">
                                <Groups>
                                    <dxnb:NavBarGroup Text="Departamento">
                                        <Items>
                                            <dxnb:NavBarItem NavigateUrl="~/WebForm_Departamento.aspx" Text="Añadir">
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
                        <td class="style29">
                        </td>
                        <td class="style30">
                            <asp:Image ID="Image2" 
                    runat="server" Height="84px" 
                    ImageUrl="~/images/finanzas.jpg" Width="136px" />
                        </td>
                        
                        
                    </tr>
                    <tr>
                        <td class="style22">
                        </td>
                        <td class="style23">
                            <asp:DropDownList ID="DropDownListDepartamento" runat="server" Height="19px" 
                                Width="111px">
                                <asp:ListItem Value="codigo">Código</asp:ListItem>
                                <asp:ListItem Value="nombre">Nombre</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class="style24">
                            <asp:TextBox ID="TextBoxBus" runat="server" style="width: 128px"></asp:TextBox>
                        </td>
                        <td class="style25">
                <asp:ImageButton ID="ImageButtonBuscar" runat="server" 
                    ImageUrl="~/images/buscar-32.png" Width="31px" 
                    onclick="ImageButtonBuscar_Click" BorderStyle="Solid" 
                                style="text-align: center; " Height="27px" />
                        </td>
                        
                        
                    </tr>
                    <tr>
                        <td class="style22">
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
                            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="BuscarRegistros_idCargo" 
                                TypeName="ClasesAldental.cargo">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="0" Name="idCargo" 
                                        SessionField="idCargo" Type="Int32" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                            <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                                SelectMethod="BuscarRegistros_idCargo" TypeName="ClasesAldental.empleado">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="0" Name="idCargo" SessionField="idCargo" 
                                        Type="Int32" />
                                </SelectParameters>
                            </asp:ObjectDataSource>
                        </td>
                        <td class="style23" colspan="3">
                <dxwgv:ASPxGridView ID="ASPxGridViewDepartamento" runat="server" 
                    AutoGenerateColumns="False" 
                    style="text-align: center" 
                    CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" 
                    CssPostfix="BlackGlass" KeyFieldName="idDep" Width="328px">
                    <Templates>
                        <DetailRow>
                            <dxwgv:ASPxGridView ID="ASPxGridViewPerfil0" runat="server" 
                                AutoGenerateColumns="False" 
                                CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                                DataSourceID="ObjectDataSource1" KeyFieldName="idCargo" 
                                onbeforeperformdataselect="ASPxGridViewPerfil0_BeforePerformDataSelect" 
                                style="text-align: center" Width="182px">
                                <Templates>
                                    <DetailRow>
                                        <dxwgv:ASPxGridView ID="ASPxGridViewEmpleado" runat="server" 
                                            AutoGenerateColumns="False" 
                                            CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                                            DataSourceID="ObjectDataSource2" 
                                            onbeforeperformdataselect="ASPxGridViewEmpleado_BeforePerformDataSelect" 
                                            style="text-align: center" Width="182px">
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
                                                <AddButton Height="12px" Width="12px" />
                                                <AddButtonHot Height="12px" Width="12px" />
                                                <RemoveButton Height="12px" Width="12px" />
                                                <RemoveButtonHot Height="12px" Width="12px" />
                                                <AddCondition Height="12px" Width="12px" />
                                                <AddGroup Height="12px" Width="12px" />
                                                <RemoveGroup Height="12px" Width="12px" />
                                                <GroupTypeAnd Height="12px" Width="12px" />
                                                <GroupTypeOr Height="12px" Width="12px" />
                                                <GroupTypeNotAnd Height="12px" Width="12px" />
                                                <GroupTypeNotOr Height="12px" Width="12px" />
                                                <OperationAnyOf Height="12px" Width="12px" />
                                                <OperationBeginsWith Height="12px" Width="12px" />
                                                <OperationBetween Height="12px" Width="12px" />
                                                <OperationContains Height="12px" Width="12px" />
                                                <OperationDoesNotContain Height="12px" Width="12px" />
                                                <OperationDoesNotEqual Height="12px" Width="12px" />
                                                <OperationEndsWith Height="12px" Width="12px" />
                                                <OperationEquals Height="12px" Width="12px" />
                                                <OperationGreater Height="12px" Width="12px" />
                                                <OperationGreaterOrEqual Height="12px" Width="12px" />
                                                <OperationIsNotNull Height="12px" Width="12px" />
                                                <OperationIsNull Height="12px" Width="12px" />
                                                <OperationLess Height="12px" Width="12px" />
                                                <OperationLessOrEqual Height="12px" Width="12px" />
                                                <OperationLike Height="12px" Width="12px" />
                                                <OperationNoneOf Height="12px" Width="12px" />
                                                <OperationNotBetween Height="12px" Width="12px" />
                                                <OperationNotLike Height="12px" Width="12px" />
                                                <LoadingPanel Height="12px" Width="12px" />
                                            </ImagesFilterControl>
                                            <Images ImageFolder="~/App_Themes/BlackGlass/{0}/">
                                                <LoadingPanelOnStatusBar Height="12px" Width="12px" />
                                                <CollapsedButton Height="12px" Width="12px" />
                                                <ExpandedButton Height="12px" Width="12px" />
                                                <DetailCollapsedButton Height="12px" Width="12px" />
                                                <DetailExpandedButton Height="12px" Width="12px" />
                                                <HeaderFilter Height="12px" Width="12px" />
                                                <HeaderActiveFilter Height="12px" Width="12px" />
                                                <HeaderSortDown Height="12px" Width="12px" />
                                                <HeaderSortUp Height="12px" Width="12px" />
                                                <DragAndDropArrowDown Height="12px" Width="12px" />
                                                <DragAndDropArrowUp Height="12px" Width="12px" />
                                                <DragAndDropColumnHide Height="12px" Width="12px" />
                                                <ParentGroupRows Height="12px" Width="12px" />
                                                <FilterRowButton Height="13px" Width="13px" />
                                                <CustomizationWindowClose Height="12px" Width="12px" />
                                                <PopupEditFormWindowClose Height="12px" Width="12px" />
                                                <WindowResizer Height="12px" Width="12px" />
                                                <FilterBuilderClose Height="12px" Width="12px" />
                                                <LoadingPanel Height="20px" Width="20px" />
                                            </Images>
                                            <Columns>
                                                <dxwgv:GridViewDataTextColumn FieldName="idEmpleado" VisibleIndex="0">
                                                </dxwgv:GridViewDataTextColumn>
                                                <dxwgv:GridViewDataTextColumn FieldName="NombreEmp" VisibleIndex="1">
                                                </dxwgv:GridViewDataTextColumn>
                                                <dxwgv:GridViewDataTextColumn FieldName="DireccEmp" VisibleIndex="2">
                                                </dxwgv:GridViewDataTextColumn>
                                                <dxwgv:GridViewDataTextColumn FieldName="Edad" VisibleIndex="3">
                                                </dxwgv:GridViewDataTextColumn>
                                                <dxwgv:GridViewDataTextColumn FieldName="Salario" VisibleIndex="4">
                                                </dxwgv:GridViewDataTextColumn>
                                                <dxwgv:GridViewDataTextColumn FieldName="Movil" VisibleIndex="5">
                                                </dxwgv:GridViewDataTextColumn>
                                                <dxwgv:GridViewDataTextColumn FieldName="TelefEmp" VisibleIndex="6">
                                                </dxwgv:GridViewDataTextColumn>
                                                <dxwgv:GridViewDataTextColumn FieldName="Cedula" VisibleIndex="7">
                                                </dxwgv:GridViewDataTextColumn>
                                                <dxwgv:GridViewDataCheckColumn FieldName="Activo" VisibleIndex="8">
                                                </dxwgv:GridViewDataCheckColumn>
                                                <dxwgv:GridViewDataTextColumn FieldName="ApellidoEmp" VisibleIndex="9">
                                                </dxwgv:GridViewDataTextColumn>
                                            </Columns>
                                            <Settings ShowFilterRow="True" ShowGroupPanel="True" />
                                            <StylesEditors>
                                                <ProgressBar Height="25px">
                                                </ProgressBar>
                                            </StylesEditors>
                                            <SettingsDetail IsDetailGrid="True" />
                                            <ImagesEditors>
                                                <CalendarPrevYear Height="12px" Width="12px" />
                                                <CalendarPrevMonth Height="12px" Width="12px" />
                                                <CalendarNextMonth Height="12px" Width="12px" />
                                                <CalendarNextYear Height="12px" Width="12px" />
                                                <CalendarFastNavPrevYear Height="12px" Width="12px" />
                                                <CalendarFastNavNextYear Height="12px" Width="12px" />
                                                <CheckBoxChecked Height="12px" Width="12px" />
                                                <CheckBoxUnchecked Height="12px" Width="12px" />
                                                <CheckBoxUndefined Height="12px" Width="12px" />
                                                <RadioButtonChecked Height="12px" Width="12px" />
                                                <RadioButtonUnchecked Height="12px" Width="12px" />
                                                <RadioButtonUndefined Height="12px" Width="12px" />
                                                <ButtonEditEllipsis Height="12px" Width="12px" />
                                                <DropDownEditDropDown Height="12px" Width="12px" />
                                                <ImageEmpty Height="12px" Width="12px" />
                                                <ListEditItem Height="12px" Width="12px" />
                                                <SpinEditIncrement Height="12px" Width="12px" />
                                                <SpinEditDecrement Height="12px" Width="12px" />
                                                <SpinEditLargeIncrement Height="12px" Width="12px" />
                                                <SpinEditLargeDecrement Height="12px" Width="12px" />
                                                <LoadingPanel Height="12px" Width="12px" />
                                            </ImagesEditors>
                                        </dxwgv:ASPxGridView>
                                    </DetailRow>
                                </Templates>
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
                                    <AddButton Height="12px" Width="12px" />
                                    <AddButtonHot Height="12px" Width="12px" />
                                    <RemoveButton Height="12px" Width="12px" />
                                    <RemoveButtonHot Height="12px" Width="12px" />
                                    <AddCondition Height="12px" Width="12px" />
                                    <AddGroup Height="12px" Width="12px" />
                                    <RemoveGroup Height="12px" Width="12px" />
                                    <GroupTypeAnd Height="12px" Width="12px" />
                                    <GroupTypeOr Height="12px" Width="12px" />
                                    <GroupTypeNotAnd Height="12px" Width="12px" />
                                    <GroupTypeNotOr Height="12px" Width="12px" />
                                    <OperationAnyOf Height="12px" Width="12px" />
                                    <OperationBeginsWith Height="12px" Width="12px" />
                                    <OperationBetween Height="12px" Width="12px" />
                                    <OperationContains Height="12px" Width="12px" />
                                    <OperationDoesNotContain Height="12px" Width="12px" />
                                    <OperationDoesNotEqual Height="12px" Width="12px" />
                                    <OperationEndsWith Height="12px" Width="12px" />
                                    <OperationEquals Height="12px" Width="12px" />
                                    <OperationGreater Height="12px" Width="12px" />
                                    <OperationGreaterOrEqual Height="12px" Width="12px" />
                                    <OperationIsNotNull Height="12px" Width="12px" />
                                    <OperationIsNull Height="12px" Width="12px" />
                                    <OperationLess Height="12px" Width="12px" />
                                    <OperationLessOrEqual Height="12px" Width="12px" />
                                    <OperationLike Height="12px" Width="12px" />
                                    <OperationNoneOf Height="12px" Width="12px" />
                                    <OperationNotBetween Height="12px" Width="12px" />
                                    <OperationNotLike Height="12px" Width="12px" />
                                    <LoadingPanel Height="12px" Width="12px" />
                                </ImagesFilterControl>
                                <Images ImageFolder="~/App_Themes/BlackGlass/{0}/">
                                    <LoadingPanelOnStatusBar Height="12px" Width="12px" />
                                    <CollapsedButton Height="12px" Width="12px" />
                                    <ExpandedButton Height="12px" Width="12px" />
                                    <DetailCollapsedButton Height="12px" Width="12px" />
                                    <DetailExpandedButton Height="12px" Width="12px" />
                                    <HeaderFilter Height="12px" Width="12px" />
                                    <HeaderActiveFilter Height="12px" Width="12px" />
                                    <HeaderSortDown Height="12px" Width="12px" />
                                    <HeaderSortUp Height="12px" Width="12px" />
                                    <DragAndDropArrowDown Height="12px" Width="12px" />
                                    <DragAndDropArrowUp Height="12px" Width="12px" />
                                    <DragAndDropColumnHide Height="12px" Width="12px" />
                                    <ParentGroupRows Height="12px" Width="12px" />
                                    <FilterRowButton Height="13px" Width="13px" />
                                    <CustomizationWindowClose Height="12px" Width="12px" />
                                    <PopupEditFormWindowClose Height="12px" Width="12px" />
                                    <WindowResizer Height="12px" Width="12px" />
                                    <FilterBuilderClose Height="12px" Width="12px" />
                                    <LoadingPanel Height="20px" Width="20px" />
                                </Images>
                                <Columns>
                                    <dxwgv:GridViewDataTextColumn FieldName="idCargo" VisibleIndex="0">
                                    </dxwgv:GridViewDataTextColumn>
                                    <dxwgv:GridViewDataTextColumn FieldName="NombreCargo" VisibleIndex="1">
                                    </dxwgv:GridViewDataTextColumn>
                                </Columns>
                                <Settings ShowFilterRow="True" />
                                <StylesEditors>
                                    <ProgressBar Height="25px">
                                    </ProgressBar>
                                </StylesEditors>
                                <SettingsDetail IsDetailGrid="True" ShowDetailRow="True" />
                                <ImagesEditors>
                                    <CalendarPrevYear Height="12px" Width="12px" />
                                    <CalendarPrevMonth Height="12px" Width="12px" />
                                    <CalendarNextMonth Height="12px" Width="12px" />
                                    <CalendarNextYear Height="12px" Width="12px" />
                                    <CalendarFastNavPrevYear Height="12px" Width="12px" />
                                    <CalendarFastNavNextYear Height="12px" Width="12px" />
                                    <CheckBoxChecked Height="12px" Width="12px" />
                                    <CheckBoxUnchecked Height="12px" Width="12px" />
                                    <CheckBoxUndefined Height="12px" Width="12px" />
                                    <RadioButtonChecked Height="12px" Width="12px" />
                                    <RadioButtonUnchecked Height="12px" Width="12px" />
                                    <RadioButtonUndefined Height="12px" Width="12px" />
                                    <ButtonEditEllipsis Height="12px" Width="12px" />
                                    <DropDownEditDropDown Height="12px" Width="12px" />
                                    <ImageEmpty Height="12px" Width="12px" />
                                    <ListEditItem Height="12px" Width="12px" />
                                    <SpinEditIncrement Height="12px" Width="12px" />
                                    <SpinEditDecrement Height="12px" Width="12px" />
                                    <SpinEditLargeIncrement Height="12px" Width="12px" />
                                    <SpinEditLargeDecrement Height="12px" Width="12px" />
                                    <LoadingPanel Height="12px" Width="12px" />
                                </ImagesEditors>
                            </dxwgv:ASPxGridView>
                        </DetailRow>
                    </Templates>
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
                        <LoadingPanelOnStatusBar Height="12px" Width="12px" />
                        <CollapsedButton Height="12px" Width="12px" />
                        <ExpandedButton Height="12px" Width="12px" />
                        <DetailCollapsedButton Height="12px" Width="12px" />
                        <DetailExpandedButton Height="12px" Width="12px" />
                        <HeaderFilter Height="12px" Width="12px" />
                        <HeaderActiveFilter Height="12px" Width="12px" />
                        <HeaderSortDown Height="12px" Width="12px" />
                        <HeaderSortUp Height="12px" Width="12px" />
                        <DragAndDropArrowDown Height="12px" Width="12px" />
                        <DragAndDropArrowUp Height="12px" Width="12px" />
                        <DragAndDropColumnHide Height="12px" Width="12px" />
                        <ParentGroupRows Height="12px" Width="12px" />
                        <FilterRowButton Height="13px" Width="13px" />
                        <CustomizationWindowClose Height="12px" Width="12px" />
                        <PopupEditFormWindowClose Height="12px" Width="12px" />
                        <WindowResizer Height="12px" Width="12px" />
                        <FilterBuilderClose Height="12px" Width="12px" />
                        <LoadingPanel Height="20px" Width="20px" />
                    </Images>
                    <Columns>
                        <dxwgv:GridViewCommandColumn VisibleIndex="0">
                            <ClearFilterButton Visible="True">
                            </ClearFilterButton>
                        </dxwgv:GridViewCommandColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Código" FieldName="idDep" 
                            VisibleIndex="1">
                        </dxwgv:GridViewDataTextColumn>
                        <dxwgv:GridViewDataTextColumn Caption="Nombre" FieldName="NombreDep" 
                            VisibleIndex="2">
                        </dxwgv:GridViewDataTextColumn>
                    </Columns>
                    <Settings ShowFilterRow="True" />
                    <StylesEditors>
                        <ProgressBar Height="25px">
                        </ProgressBar>
                    </StylesEditors>
                    <SettingsDetail ShowDetailRow="True" />
                </dxwgv:ASPxGridView>
                        </td>
                        
                        
                    </tr>
                </table>
                <br />
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
                <br />
            </td>
            
        </tr>
        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>
<br />
