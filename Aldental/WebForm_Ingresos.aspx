<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_Ingresos.aspx.cs" Inherits="Aldental.Formulario_Ingresos" Title="Página sin título" %>
<%@ Register src="WebUserControlIngresos.ascx" tagname="WebUserControlIngresos" tagprefix="uc1" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolderForma">
    <uc1:WebUserControlIngresos ID="WebUserControlIngresos1" 
    runat="server" />




</asp:Content>
