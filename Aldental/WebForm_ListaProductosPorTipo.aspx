<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_ListaProductosPorTipo.aspx.cs" Inherits="Aldental.WebForm_ProductosPorTipo" Title="Página sin título" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register src="WebUserControlListaProductoportipo.ascx" tagname="WebUserControlListaProductoportipo" tagprefix="uc2" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolderForma">
                <uc2:WebUserControlListaProductoportipo ID="WebUserControlListaProductoportipo1" 
    runat="server" />
</asp:Content>
