<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarMaterialProducto.aspx.cs" Inherits="Aldental.WebForm_BuscarMaterialProducto" Title="Página sin título" %>
<%@ Register src="WebUserControlBuscarMaterial.ascx" tagname="WebUserControlBuscarMaterial" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlBuscarMaterial ID="WebUserControlBuscarMaterial1" 
    runat="server" />
</asp:Content>
