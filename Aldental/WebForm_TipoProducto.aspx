<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_TipoProducto.aspx.cs" Inherits="Aldental.WebForm_TipoProducto" Title="Página sin título" %>
<%@ Register src="WebUserControlTipoProducto.ascx" tagname="WebUserControlTipoProducto" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlTipoProducto ID="WebUserControlTipoProducto1" 
        runat="server" />
</asp:Content>
