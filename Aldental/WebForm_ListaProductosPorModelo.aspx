<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_ListaProductosPorModelo.aspx.cs" Inherits="Aldental.WebForm_ProductosPorModelo" Title="Página sin título" %>

<%@ Register src="WebUserControlListaProductosPormodelo.ascx" tagname="WebUserControlListaProductosPormodelo" tagprefix="uc2" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolderForma">

    <uc2:WebUserControlListaProductosPormodelo ID="WebUserControlListaProductosPormodelo1" 
    runat="server" />

</asp:Content>
