<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_OrdenCompra.aspx.cs" Inherits="Aldental.WebForm_OrdenCompra" Title="Página sin título" %>
<%@ Register src="WebUserControlOdenCompra.ascx" tagname="WebUserControlOdenCompra" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlOdenCompra ID="WebUserControlOdenCompra1" runat="server" />
</asp:Content>
