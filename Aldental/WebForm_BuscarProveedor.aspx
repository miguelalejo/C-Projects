<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarProveedor.aspx.cs" Inherits="Aldental.WebForm_BuscarProveedor" Title="Página sin título" %>
<%@ Register src="WebUserControlBuscarProveedor.ascx" tagname="WebUserControlBuscarProveedor" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlBuscarProveedor ID="WebUserControlBuscarProveedor1" 
    runat="server" />
</asp:Content>
