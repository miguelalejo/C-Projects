<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_Departamento.aspx.cs" Inherits="Aldental.WebForm_Departamento" Title="Página sin título" %>
<%@ Register src="WebUserControlDepartamento.ascx" tagname="WebUserControlDepartamento" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlDepartamento ID="WebUserControlDepartamento1" 
        runat="server" />
</asp:Content>
