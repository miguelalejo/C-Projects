<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_MarcaProducto.aspx.cs" Inherits="Aldental.WebForm_MarcaProducto" Title="Página sin título" %>
<%@ Register src="WebUserControlMarcaProducto.ascx" tagname="WebUserControlMarcaProducto" tagprefix="uc1" %>

    
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxMenu" tagprefix="dxm" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxNavBar" tagprefix="dxnb" %>

    
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
 
    <uc1:WebUserControlMarcaProducto ID="WebUserControlMarcaProducto1" 
        runat="server" />
 
</asp:Content>
