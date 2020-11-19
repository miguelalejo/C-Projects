<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_Perfil.aspx.cs" Inherits="Aldental.WebForm_Perfil" Title="Página sin título" %>
<%@ Register src="WebUserControlPerfil.ascx" tagname="WebUserControlPerfil" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlPerfil ID="WebUserControlPerfil1" runat="server" />
</asp:Content>
