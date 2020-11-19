<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarTipoProducto.aspx.cs" Inherits="Aldental.WebForm_BuscarTipoProducto" Title="Página sin título" %>
<%@ Register src="WebUserControlBuscarTipoProducto.ascx" tagname="WebUserControlBuscarTipoProducto" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlBuscarTipoProducto ID="WebUserControlBuscarTipoProducto1" 
    runat="server" />
</asp:Content>
