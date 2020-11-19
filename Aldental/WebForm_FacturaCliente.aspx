<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_FacturaCliente.aspx.cs" Inherits="Aldental.WebForm_FacturaCliente" Title="Página sin título" %>
<%@ Register src="WebUserControlFacturaCliente.ascx" tagname="WebUserControlFacturaCliente" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlFacturaCliente ID="WebUserControlFacturaCliente1" 
        runat="server" />
</asp:Content>
