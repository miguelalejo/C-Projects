<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarPerfil.aspx.cs" Inherits="Aldental.WebForm_BuscarPerfil" Title="Página sin título" %>
<%@ Register src="WebUserControlBuscadorPerfil.ascx" tagname="WebUserControlBuscadorPerfil" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlBuscadorPerfil ID="WebUserControlBuscadorPerfil1" 
        runat="server" />
</asp:Content>
