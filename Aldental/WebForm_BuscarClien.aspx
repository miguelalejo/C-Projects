<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarClien.aspx.cs" Inherits="Aldental.FormularioBuscarClien" Title="Página sin título" %>
<%@ Register src="WebUserControlBuscarCliente.ascx" tagname="WebUserControlBuscarCliente" tagprefix="uc1" %>
<asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolderForma">
                <uc1:WebUserControlBuscarCliente ID="WebUserControlBuscarCliente1" 
    runat="server" />


</asp:Content>
