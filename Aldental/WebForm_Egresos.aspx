<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_Egresos.aspx.cs" Inherits="Aldental.Formulario_Egresos" Title="Página sin título" %>
<%@ Register src="WebUserControlEgresos.ascx" tagname="WebUserControlEgresos" tagprefix="uc1" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolderForma">
    <uc1:WebUserControlEgresos ID="WebUserControlEgresos1" 
    runat="server" />




</asp:Content>
