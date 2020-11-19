<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_Descuento.aspx.cs" Inherits="Aldental.WebForm_Descuento" Title="Página sin título" %>
<%@ Register src="WebUserControlDescuento.ascx" tagname="WebUserControlDescuento" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlDescuento ID="WebUserControlDescuento1" runat="server" />
</asp:Content>
