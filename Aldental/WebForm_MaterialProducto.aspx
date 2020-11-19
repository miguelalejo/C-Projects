<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_MaterialProducto.aspx.cs" Inherits="Aldental.WebForm_MaterialProducto" Title="Página sin título" %>
<%@ Register src="WebUserControlMaterialProducto.ascx" tagname="WebUserControlMaterialProducto" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlMaterialProducto ID="WebUserControlMaterialProducto1" 
        runat="server" />
</asp:Content>
