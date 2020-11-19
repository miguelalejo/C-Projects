<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarImpuesto.aspx.cs" Inherits="Aldental.WebForm_BuscarImpuesto" Title="Página sin título" %>
<%@ Register src="WebUserControlBuscarImpuesto.ascx" tagname="WebUserControlBuscarImpuesto" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlBuscarImpuesto ID="WebUserControlBuscarImpuesto1" 
        runat="server" />
</asp:Content>
