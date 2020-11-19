<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscaProductos.aspx.cs" Inherits="Aldental.WebForm_ListaProductos" Title="Página sin título" %>
<%@ Register src="WebUserControlBuscarProd.ascx" tagname="WebUserControlBuscarProd" tagprefix="uc2" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolderForma">
                <uc2:WebUserControlBuscarProd ID="WebUserControlBuscarProd1" 
    runat="server" />


</asp:Content>
