<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_Cliente.aspx.cs" Inherits="Aldental.WebForm_Cliente" Title="Página sin título" %>
<%@ Register src="WebUserControlClien.ascx" tagname="WebUserControlClien" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlClien ID="WebUserControlClien1" runat="server" />
</asp:Content>
