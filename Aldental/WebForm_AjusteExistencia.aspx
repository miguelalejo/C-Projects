<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_AjusteExistencia.aspx.cs" Inherits="Aldental.WebForm_AjusteExistencia" Title="Página sin título" %>
<%@ Register src="WebUserControlAjustedeExistencia.ascx" tagname="WebUserControlAjustedeExistencia" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlAjustedeExistencia ID="WebUserControlAjustedeExistencia1" 
        runat="server" />
</asp:Content>
