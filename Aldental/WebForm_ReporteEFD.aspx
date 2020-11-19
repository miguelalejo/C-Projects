<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_ReporteEFD.aspx.cs" Inherits="Aldental.WebForm_ReporteEFD" Title="Página sin título" %>
<%@ Register src="WebUserControl_RepoteEmpleadoFacDet.ascx" tagname="WebUserControl_RepoteEmpleadoFacDet" tagprefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderForma" runat="server">
    <uc1:WebUserControl_RepoteEmpleadoFacDet ID="WebUserControl_RepoteEmpleadoFacDet1" 
    runat="server" />
</asp:Content>
