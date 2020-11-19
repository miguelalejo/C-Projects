<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_Proveedor.aspx.cs" Inherits="Aldental.WebForm_Proveedor" Title="Página sin título" %>
<%@ Register src="WebUserControlProveedor.ascx" tagname="WebUserControlProveedor" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlProveedor ID="WebUserControlProveedor1" runat="server" />
</asp:Content>
