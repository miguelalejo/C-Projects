<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarCargo.aspx.cs" Inherits="Aldental.WebForm_BuscarCargo" Title="Página sin título" %>
<%@ Register src="WebUserControBuscarCargo.ascx" tagname="WebUserControBuscarCargo" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControBuscarCargo ID="WebUserControBuscarCargo1" runat="server" />
</asp:Content>
