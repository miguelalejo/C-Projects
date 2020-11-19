<%@ Page Language="C#" MasterPageFile="~/Sistema.Master" AutoEventWireup="true" CodeBehind="WebForm_BuscarEmplea.aspx.cs" Inherits="Aldental.Formulario_BuscarEmplea" Title="Página sin título" %>
<%@ Register src="WebUserControlBuscarEmpleado.ascx" tagname="WebUserControlBuscarEmpleado" tagprefix="uc2" %>
  


    <asp:Content ID="Content1" runat="server" 
    contentplaceholderid="ContentPlaceHolderForma">
  <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <uc2:WebUserControlBuscarEmpleado ID="WebUserControlBuscarEmpleado1" 
                 runat="server" EnableViewState="True" />
            </ContentTemplate>
        </asp:UpdatePanel> 
</asp:Content>
 