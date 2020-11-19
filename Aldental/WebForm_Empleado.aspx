<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_Empleado.aspx.cs" Inherits="Aldental.WebForm_Empleado" Title="Página sin título" %>
<%@ Register src="WebUserControlEmpleado.ascx" tagname="WebUserControlEmpleado" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlEmpleado ID="WebUserControlEmpleado1" runat="server" />
</asp:Content>
