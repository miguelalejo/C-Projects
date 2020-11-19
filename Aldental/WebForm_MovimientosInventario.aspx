<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_MovimientosInventario.aspx.cs" Inherits="Aldental.Formulario_Tipo" Title="Página sin título" %>
<%@ Register src="WebUserControlMovimientosInventario.ascx" tagname="WebUserControlMovimientosInventario" tagprefix="uc1" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolderForma">
    <uc1:WebUserControlMovimientosInventario ID="WebUserControlMovimientosInventario1" 
    runat="server" />




</asp:Content>
