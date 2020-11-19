<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl_RepoteEmpleadoFacDet.ascx.cs" Inherits="Aldental.WebUserControl_RepoteEmpleadoFacDet" %>
<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>
<%@ Register assembly="DevExpress.XtraReports.v9.1.Web, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraReports.Web" tagprefix="dxxr" %>
<dxxr:ReportViewer ID="ReportViewer1" runat="server" 
    Report="<%# new Aldental.XtraReportEFD() %>" 
    ReportName="Aldental.XtraReportEFD">
</dxxr:ReportViewer>
