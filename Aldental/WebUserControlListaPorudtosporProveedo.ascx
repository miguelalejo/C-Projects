<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlListaPorudtosporProveedo.ascx.cs" Inherits="Aldental.WebUserControlListaPorudtosporProveedo" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
    Font-Size="8pt" Height="704px" Width="838px">
    <LocalReport ReportPath="Lista Productos por Proveedor.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" 
                Name="listaproductos" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
    TypeName="BaseAldental.DataSetProductoTableAdapters.listaproductosTableAdapter">
</asp:ObjectDataSource>
