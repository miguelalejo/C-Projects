<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarDescuento.aspx.cs" Inherits="Aldental.WebForm_BuscarDescuento" Title="Página sin título" %>
<%@ Register src="WebUserControlBuscarDescuento.ascx" tagname="WebUserControlBuscarDescuento" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlBuscarDescuento ID="WebUserControlBuscarDescuento1" 
    runat="server" />
</asp:Content>
