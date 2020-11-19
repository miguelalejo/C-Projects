<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_Impuesto.aspx.cs" Inherits="Aldental.WebForm_BuscarImpiesto" Title="Página sin título" %>
<%@ Register src="WebUserControlImpuesto.ascx" tagname="WebUserControlImpuesto" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlImpuesto ID="WebUserControlImpuesto1" runat="server" />
</asp:Content>
