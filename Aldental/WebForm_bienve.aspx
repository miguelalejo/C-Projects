<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_bienve.aspx.cs" Inherits="Aldental.WebForm_bienve" Title="Página sin título" %>
<%@ Register src="WebUserControlBie.ascx" tagname="WebUserControlBie" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlBie ID="WebUserControlBie1" runat="server" />
</asp:Content>
