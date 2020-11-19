<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_EntregaBodega.aspx.cs" Inherits="Aldental.Formulario_EntregaBodega" Title="Página sin título" %>
<%@ Register src="WebUserControlEntregaBodega.ascx" tagname="WebUserControlEntregaBodega" tagprefix="uc1" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolderForma">
    <uc1:WebUserControlEntregaBodega ID="WebUserControlEntregaBodega1" 
    runat="server" />




</asp:Content>
