<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_FacturaVent.aspx.cs" Inherits="Aldental.Formulario_FacturaVent" Title="Página sin título" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>
<%@ Register src="WebUserControlFacturaVent.ascx" tagname="WebUserControlFacturaVent" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlFacturaVent ID="WebUserControlFacturaVent1" runat="server" />
    </asp:Content>
