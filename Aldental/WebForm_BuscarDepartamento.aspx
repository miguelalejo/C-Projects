<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarDepartamento.aspx.cs" Inherits="Aldental.WebForm_BuscarDepartamento" Title="Página sin título" %>
<%@ Register src="WebUserControlBuscarDepartamento.ascx" tagname="WebUserControlBuscarDepartamento" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlBuscarDepartamento ID="WebUserControlBuscarDepartamento1" 
    runat="server" />
</asp:Content>
