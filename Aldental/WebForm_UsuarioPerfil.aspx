<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_UsuarioPerfil.aspx.cs" Inherits="Aldental.Formulario_Perfil" Title="Página sin título" %>
<%@ Register src="WebUserControlUsuarioPerfil.ascx" tagname="WebUserControlUsuarioPerfil" tagprefix="uc2" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolderForma">
    <uc2:WebUserControlUsuarioPerfil ID="WebUserControlUsuarioPerfil1" 
    runat="server" />




</asp:Content>
