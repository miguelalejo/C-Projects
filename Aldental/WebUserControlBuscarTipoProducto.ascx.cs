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
    public partial class WebUserControlBuscarTipoProducto : System.Web.UI.UserControl
    {
        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            this.PasarGridView(tipoproducto.Registrostipoproducto());
        }

        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {
            if (this.DropDownListSelecc.Items[0] == this.DropDownListSelecc.SelectedItem)
            {
                int codigo = int.Parse(this.TextBoxBus.Text);
                this.PasarGridView(tipoproducto.BuscarRegistros_idTipProd(codigo));
            }
            if (this.DropDownListSelecc.Items[1] == this.DropDownListSelecc.SelectedItem)
            {
                this.PasarGridView(tipoproducto.BuscarRegistros_NombreTipProd(this.TextBoxBus.Text + "%"));

            }
           
        }
        protected void ButtonMostrar_Click(object sender, EventArgs e)
        {
            this.PasarGridView(tipoproducto.Registrostipoproducto());
        }
        public void PasarGridView(tipoproducto[] unos_tiposprod)
        {
            this.ASPxGridViewTipoProd.DataSource = unos_tiposprod;
            this.ASPxGridViewTipoProd.DataBind();
        }
    }
}