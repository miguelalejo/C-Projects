<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_Kardex.aspx.cs" Inherits="Aldental.Formulario_Kardex" Title="Página sin título" %>
<%@ Register src="WebUserControlKardex.ascx" tagname="WebUserControlKardex" tagprefix="uc1" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolderForma">
    <uc1:WebUserControlKardex ID="WebUserControlKardex1" 
    runat="server" />




</asp:Content>
