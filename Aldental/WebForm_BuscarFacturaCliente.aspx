<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarFacturaCliente.aspx.cs" Inherits="Aldental.WebForm_BuscarFacturaCliente" Title="Página sin título" %>
<%@ Register src="WebUserControlBuscarFacturaCliente.ascx" tagname="WebUserControlBuscarFacturaCliente" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlBuscarFacturaCliente ID="WebUserControlBuscarFacturaCliente1" 
    runat="server" />
</asp:Content>
