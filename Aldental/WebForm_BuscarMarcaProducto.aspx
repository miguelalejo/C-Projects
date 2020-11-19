<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarMarcaProducto.aspx.cs" Inherits="Aldental.WebForm_BuscarMarcaProducto" Title="Página sin título" %>
<%@ Register src="WebUserControl_BuscarMarcaProducto.ascx" tagname="WebUserControl_BuscarMarcaProducto" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControl_BuscarMarcaProducto ID="WebUserControl_BuscarMarcaProducto1" 
    runat="server" />
</asp:Content>
