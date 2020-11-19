<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_CuentasPorPagar.aspx.cs" Inherits="Aldental.Formulario_PorPagar" Title="Página sin título" %>
<%@ Register src="WebUserControlCuentasPorpagar.ascx" tagname="WebUserControlCuentasPorpagar" tagprefix="uc1" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolderForma">
    <uc1:WebUserControlCuentasPorpagar ID="WebUserControlCuentasPorpagar1" 
    runat="server" />




</asp:Content>
