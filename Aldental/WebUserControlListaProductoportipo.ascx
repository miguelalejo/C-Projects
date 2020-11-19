<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlListaProductoportipo.ascx.cs" Inherits="Aldental.WebUserControlReporteProductoportipo" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="DevExpress.XtraReports.v9.1.Web, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraReports.Web" tagprefix="dxxr" %>
<%@ Register assembly="CrystalDecisions.Web, Version=10.5.3700.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
    TypeName="BaseAldental.DataSetProductoTableAdapters.listaproductosTableAdapter">
</asp:ObjectDataSource>
<rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" 
    Font-Size="8pt" Height="720px" style="text-align: center" Width="813px">
    <LocalReport ReportPath="Lista Productos por tipo.rdlc">
        <DataSources>
            <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" 
                Name="listaproductos" />
        </DataSources>
    </LocalReport>
</rsweb:ReportViewer>
