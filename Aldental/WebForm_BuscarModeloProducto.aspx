<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarModeloProducto.aspx.cs" Inherits="Aldental.WebForm_BuscarModeloProducto" Title="Página sin título" %>
<%@ Register src="WebUserControlBuscarModeloProducto.ascx" tagname="WebUserControlBuscarModeloProducto" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlBuscarModeloProducto ID="WebUserControlBuscarModeloProducto1" 
    runat="server" />
</asp:Content>
