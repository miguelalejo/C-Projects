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
    public partial class WebUserControlBuscarImpuesto : System.Web.UI.UserControl
    {
        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            this.PasarGridView(impuesto.Registrosimpuesto());
        }

        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {
            try
            {

                if (this.DropDownListImpuesto.SelectedIndex == 0)
                {
                    impuesto[] imp = impuesto.BuscarRegistros_idImpuesto(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(imp);
                }
                if (this.DropDownListImpuesto.SelectedIndex == 1)
                {
                    impuesto[] imp = impuesto.BuscarRegistros_NombreImpuesto(this.TextBoxBus.Text);
                    this.PasarGridView(imp);
                }
                if (this.DropDownListImpuesto.SelectedIndex == 2)
                {
                    impuesto[] imp = impuesto.BuscarRegistros_ValorImpuesto(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(imp);
                }
            }
            catch (Exception error)
            {

                this.ASPxRoundPanel1.Visible = true;
                this.ASPxLabel1.Text = error.Message;
            }
        }

        public void PasarGridView(impuesto[] impuesto)
        {

            this.ASPxGridViewImpuesto.DataSource = impuesto;
            this.ASPxGridViewImpuesto.DataBind();
        }

        protected void ASPxMenu1_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e)
        {
            this.PasarGridView(impuesto.Registrosimpuesto());
        }

        protected void ASPxNavBar1_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }
    }
}