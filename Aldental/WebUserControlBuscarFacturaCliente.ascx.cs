using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using ClasesAldental;
using DevExpress.Web.ASPxGridView;
namespace Aldental
{
    public partial class WebUserControlBuscarFacturaCliente : System.Web.UI.UserControl
    {
        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            this.PasarGridView(facturacliente.Registrosfacturacliente());
        }

        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                if (this.DropDownListSelecc.Items[0] == this.DropDownListSelecc.SelectedItem)
                {
                    int codigo = int.Parse(this.TextBoxBus.Text);
                    this.PasarGridView(facturacliente.BuscarRegistros_idFacClien(codigo));
                }

                if (this.DropDownListSelecc.Items[1] == this.DropDownListSelecc.SelectedItem)
                {
                    int codigo = int.Parse(this.TextBoxBus.Text);
                    this.PasarGridView(facturacliente.BuscarRegistros_idFormaPago(codigo));

                }
                if (this.DropDownListSelecc.Items[2] == this.DropDownListSelecc.SelectedItem)
                {
                    int codigo = int.Parse(this.TextBoxBus.Text);
                    this.PasarGridView(facturacliente.BuscarRegistros_idEmpleado(codigo));
                }
                if (this.DropDownListSelecc.Items[3] == this.DropDownListSelecc.SelectedItem)
                {
                    int codigo = int.Parse(this.TextBoxBus.Text);
                    this.PasarGridView(facturacliente.BuscarRegistros_idCliente(codigo));

                }
                if (this.DropDownListSelecc.Items[4] == this.DropDownListSelecc.SelectedItem)
                {
                    DateTime fecha = DateTime.Parse(this.TextBoxBus.Text);
                    this.PasarGridView(facturacliente.BuscarRegistros_FechaFacClien(fecha));

                }
            }

            catch (Exception error)
            {
                this.ASPxLabelMe.Text = error.Message;
                this.ASPxPopupControlError.ShowOnPageLoad = true;
                this.ASPxPopupControlError.DataBind();
            }
        }

        protected void ASPxMenu1_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e)
        {

        }
        public void PasarGridView(facturacliente[] unas_facturasCliente)
        {
            this.ASPxGridViewFacturaCliente.DataSource = unas_facturasCliente;
            this.ASPxGridViewFacturaCliente.DataBind();
        }

        protected void ASPxNavBar1_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }

        protected void ASPxGridViewDetalle_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["idFacClien"] = (sender as ASPxGridView).GetMasterRowKeyValue();

        }
    }
}