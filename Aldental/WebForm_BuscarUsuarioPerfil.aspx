<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarUsuarioPerfil.aspx.cs" Inherits="Aldental.WebForm_BuscarUsuarioPerfil" Title="Página sin título" %>
<%@ Register src="WebUserControlBucarUsuarioPerfil.ascx" tagname="WebUserControlBucarUsuarioPerfil" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlBucarUsuarioPerfil ID="WebUserControlBucarUsuarioPerfil1" 
        runat="server" />
</asp:Content>
