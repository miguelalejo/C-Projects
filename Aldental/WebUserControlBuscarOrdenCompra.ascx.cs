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

namespace Aldental
{
    public partial class WebUserControlBuscarOrdenCompra : System.Web.UI.UserControl
    {
        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            this.PasarGridView(ordendecompra.Registrosordendecompra());
          
        }

        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                if (this.DropDownListOrdenCompra.SelectedIndex == 0)
                {
                    ordendecompra[] ord = ordendecompra.BuscarRegistros_idCreditoFactura(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(ord);
                }
                if (this.DropDownListOrdenCompra.SelectedIndex == 1)
                {
                    ordendecompra[] ord = ordendecompra.BuscarRegistros_idProveedor(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(ord);
                }
                if (this.DropDownListOrdenCompra.SelectedIndex == 2)
                {
                    ordendecompra[] ord = ordendecompra.BuscarRegistros_idFormaPago(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(ord);
                }
                if (this.DropDownListOrdenCompra.SelectedIndex == 3)
                {
                    ordendecompra[] ord = ordendecompra.BuscarRegistros_idEmpleado(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(ord);
                }
                if (this.DropDownListOrdenCompra.SelectedIndex == 4)
                {
                    ordendecompra[] ord = ordendecompra.BuscarRegistros_idEstadoFac(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(ord);
                }
                if (this.DropDownListOrdenCompra.SelectedIndex == 5)
                {
                    ordendecompra[] ord = ordendecompra.BuscarRegistros_idCreditoFactura(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(ord);
                }
                if (this.DropDownListOrdenCompra.SelectedIndex == 6)
                {
                    ordendecompra[] ord = ordendecompra.BuscarRegistros_FechaFacProvee(DateTime.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(ord);
                }
                if (this.DropDownListOrdenCompra.SelectedIndex == 7)
                {
                  //  ordendecompra[] ord = ordendecompra.BuscarRegistros_Condicion(bool.Parse(this.TextBoxBus.Text));
                    //this.PasarGridView(ord);
                }
            }
            catch (Exception error)
            {

                this.ASPxRoundPanel1.Visible = true;
                this.ASPxLabel1.Text = error.Message;
            }
        }

        public void PasarGridView(ordendecompra[] ordendecompra)
        {

            this.ASPxGridViewOrdenCompra.DataSource = ordendecompra;
            this.ASPxGridViewOrdenCompra.DataBind();
        }

        protected void ASPxMenu1_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e)
        {
            this.PasarGridView(ordendecompra.Registrosordendecompra());
        }

        protected void ASPxNavBar1_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }

        protected void ASPxRoundPanel1_Load(object sender, EventArgs e)
        {

        }
    }
}
