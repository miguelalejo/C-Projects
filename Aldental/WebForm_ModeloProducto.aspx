<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_ModeloProducto.aspx.cs" Inherits="Aldental.WebFormModelo" Title="Página sin título" %>

<%@ Register src="WebUserControlModeloProducto.ascx" tagname="WebUserControlModeloProducto" tagprefix="uc1" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolderForma">
                <uc1:WebUserControlModeloProducto ID="WebUserControlModeloProducto1" 
    runat="server" />


</asp:Content>
