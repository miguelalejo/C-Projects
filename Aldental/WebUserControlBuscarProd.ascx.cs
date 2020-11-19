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
    public partial class WebUserControlListaProd : System.Web.UI.UserControl
    {
        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            this.PasarGridView(producto.Registrosproducto());
        }

        protected void ButtonMostrar_Click(object sender, EventArgs e)
        {
            this.PasarGridView(producto.Registrosproducto());
        }

        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {
            if (this.DropDownListSelecc.Items[0] == this.DropDownListSelecc.SelectedItem)
            {
                int codigo = int.Parse(this.TextBoxBus.Text);
                this.PasarGridView(producto.BuscarRegistros_idProducto(codigo));
            }
            if (this.DropDownListSelecc.Items[1] == this.DropDownListSelecc.SelectedItem)
            {
                this.PasarGridView(producto.BuscarRegistros_NombreProducto(this.TextBoxBus.Text + "%"));

            }
            if (this.DropDownListSelecc.Items[2] == this.DropDownListSelecc.SelectedItem)
            {
                int stock = int.Parse(this.TextBoxBus.Text);
                this.PasarGridView(producto.BuscarRegistros_Stock(stock));

            }
            if (this.DropDownListSelecc.Items[3] == this.DropDownListSelecc.SelectedItem)
            {
                float precio = float.Parse(this.TextBoxBus.Text);
                this.PasarGridView(producto.BuscarRegistros_Precio(precio)); 
                
            }
           
        }
        public void PasarGridView(producto[] unos_produ)
        {
            this.ASPxGridViewProd.DataSource = unos_produ;
            this.ASPxGridViewProd.DataBind();
        }
    }
}