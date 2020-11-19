<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarOrdenCompra.aspx.cs" Inherits="Aldental.WebForm_BuscarOrdenCompra" Title="Página sin título" %>
<%@ Register src="WebUserControlBuscarOrdenCompra.ascx" tagname="WebUserControlBuscarOrdenCompra" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlBuscarOrdenCompra ID="WebUserControlBuscarOrdenCompra1" 
    runat="server" />
</asp:Content>
