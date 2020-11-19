<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_ListaProporProvee.aspx.cs" Inherits="Aldental.WebFormListaProporProvee" Title="Página sin título" %>
<%@ Register src="WebUserControlListaPorudtosporProveedo.ascx" tagname="WebUserControlListaPorudtosporProveedo" tagprefix="uc1" %>

<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolderForma">
                <uc1:WebUserControlListaPorudtosporProveedo ID="WebUserControlListaPorudtosporProveedo1" 
    runat="server" />


</asp:Content>
