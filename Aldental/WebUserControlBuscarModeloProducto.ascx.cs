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
    public partial class WebUserControlBuscarModeloProducto : System.Web.UI.UserControl
    {

        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            this.PasarGridView(modelo.Registrosmodelo());
        }

        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {
            if (this.DropDownListSelecc.Items[0] == this.DropDownListSelecc.SelectedItem)
            {
                int codigo = int.Parse(this.TextBoxBus.Text);
                this.PasarGridView(modelo.BuscarRegistros_idModelo(codigo));
            }
            if (this.DropDownListSelecc.Items[1] == this.DropDownListSelecc.SelectedItem)
            {
                this.PasarGridView(modelo.BuscarRegistros_NombreModelo(this.TextBoxBus.Text + "%"));

            }
            if (this.DropDownListSelecc.Items[2] == this.DropDownListSelecc.SelectedItem)
            {
                int codigom = int.Parse(this.TextBoxBus.Text);
                this.PasarGridView(modelo.BuscarRegistros_idMarca(codigom));

            }
        }
        protected void ButtonMostrar_Click(object sender, EventArgs e)
        {
            this.PasarGridView(modelo.Registrosmodelo());
        }
        public void PasarGridView(modelo[] unos_modelosprod)
        {
            this.ASPxGridViewModeloProd.DataSource = unos_modelosprod;
            this.ASPxGridViewModeloProd.DataBind();
        }
    }
}