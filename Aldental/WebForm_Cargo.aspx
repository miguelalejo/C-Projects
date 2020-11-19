<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_Cargo.aspx.cs" Inherits="Aldental.WebForm_Cargo" Title="Página sin título" %>
<%@ Register src="WebUserControlCargo.ascx" tagname="WebUserControlCargo" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControlCargo ID="WebUserControlCargo1" runat="server" />
</asp:Content>
