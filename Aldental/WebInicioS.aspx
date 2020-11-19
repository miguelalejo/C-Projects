<%@ Page Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="WebInicioS.aspx.cs" Inherits="Aldental.Formulario_web1" Title="Página sin título" %>
<%@ Register assembly="DevExpress.Web.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxPopupControl" tagprefix="dxpc" %>
<%@ Register assembly="DevExpress.Web.ASPxEditors.v9.1, Version=9.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dxe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <tr>
    <td>
        <table align="center" 
            style="width: 87%; background-image: url('images/fondo1.jpg');">
            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>
            <tr>
                <td>
                    <table class="style2" style="height: 245px; width: 101%">
                        <tr>
                            <td colspan="2">
                               <p align="center"> <b><font  color="White"2" >LE DAMOS LA BIENVENIDOS A ALDENTAL<br />
                                   POR FAVOR INGRESE LOS SIGUIENTES DATOS: </font></b></p> </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                    <img alt="" src="images/personal-128.png" /></td>
                            <td style="margin-left: 160px">
                                <asp:Login ID="LoginUser" runat="server" BackColor="#F7F7DE" BorderColor="#CCCC99" 
                                    BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                                    Font-Size="10pt">
                                    <TitleTextStyle BackColor="#6B696B" Font-Bold="True" ForeColor="#FFFFFF" />
                                    <LayoutTemplate>
                                        <table border="0" cellpadding="1" cellspacing="0" 
                                            style="border-collapse: collapse;">
                                            <tr>
                                                <td>
                                                    <table border="0" cellpadding="0">
                                                        <tr>
                                                            <td align="center" colspan="2" 
                                                                style="color: White; background-color: #6B696B; font-weight: bold;">
                                                                Iniciar sesión</td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Nombre 
                                                                de usuario:</asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" 
                                                                    ControlToValidate="UserName" 
                                                                    ErrorMessage="El nombre de usuario es obligatorio." 
                                                                    ToolTip="El nombre de usuario es obligatorio." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right">
                                                                <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Contraseña:</asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                                                <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" 
                                                                    ControlToValidate="Password" ErrorMessage="La contraseña es obligatoria." 
                                                                    ToolTip="La contraseña es obligatoria." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td colspan="2">
                                                                <asp:CheckBox ID="RememberMe" runat="server" 
                                                                    Text="Recordármelo la próxima vez." />
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="center" colspan="2" style="color: Red;">
                                                                <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td align="right" colspan="2">
                                                                <asp:Button ID="ButtonIniciarSesion" runat="server" 
                                                                    Text="Iniciar Sesion" onclick="ButtonIniciarSesion_Click" />
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </LayoutTemplate>
                                </asp:Login>
                            </td>
                        </tr>
                    </table>
                            <dxpc:ASPxPopupControl ID="ASPxPopupControlError" runat="server" 
                    AccessibilityCompliant="True" AppearAfter="0" CloseAction="CloseButton" 
                    CssFilePath="~/App_Themes/BlackGlass/{0}/styles.css" CssPostfix="BlackGlass" 
                    DisappearAfter="10" FooterText="Error en la Factura" HeaderText="Información" 
                    Height="42px" ImageFolder="~/App_Themes/BlackGlass/{0}/" Left="600" 
                    Modal="True" PopupHorizontalAlign="WindowCenter" 
                    PopupVerticalAlign="WindowCenter" ShowFooter="True" Top="600" Width="147px">
                    <ContentStyle HorizontalAlign="Left" VerticalAlign="Top">
                    </ContentStyle>
                    <FooterImage Height="12px" Width="12px" />
                    <SizeGripImage Height="12px" Url="~/App_Themes/BlackGlass/Web/pcSizeGrip.gif" 
                        Width="12px" />
                    <ContentCollection>
                        <dxpc:PopupControlContentControl runat="server">
                            <dxe:ASPxLabel ID="ASPxLabelMe0" runat="server">
                            </dxe:ASPxLabel>
                        </dxpc:PopupControlContentControl>
                    </ContentCollection>
                    <CloseButtonImage Height="12px" 
                        Url="~/App_Themes/BlackGlass/web/pcItemCloseButton.gif" Width="12px" />
                    <HeaderStyle>
                    <Paddings PaddingBottom="6px" PaddingLeft="15px" PaddingRight="6px" 
                        PaddingTop="3px" />
                    </HeaderStyle>
                    <HeaderImage Height="12px" Width="12px" />
                </dxpc:ASPxPopupControl>
                </td>
            </tr>
        </table>
    </td>
</tr>
</asp:Content>
