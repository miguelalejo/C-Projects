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
    public partial class WebUserControlModelo : System.Web.UI.UserControl
    {
       // conexionBase cone = new conexionBase();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ImageButtonAgregar_Click(object sender, ImageClickEventArgs e)
        {
            this.ResetearBOxes();
        }
            
        public void ResetearBOxes()
        {
            this.TextBoxCodModelo.Text = "";
            this.TextBoxMarca.Text = "";
            this.TextBoxNomModelo.Text = "";
            this.TextBoxBuscar.Text = "";

        }
        protected void ImageButtonModificar_Click(object sender, ImageClickEventArgs e)
        {
            modelo.Modificarmodelo(this.LeerBoxes());
        }
        public modelo LeerBoxes()
        {
            marca mar = marca.BuscarRegistros_idMarca(int.Parse(this.TextBoxMarca.Text))[0];
            return new modelo(int.Parse(this.TextBoxCodModelo.Text),mar , this.TextBoxNomModelo.Text);
        }


        protected void ImageButtonGuardar_Click(object sender, ImageClickEventArgs e)
        {
            modelo.Guardarmodelo(this.LeerBoxes());
        }

        protected void ImageButtonEliminar_Click(object sender, ImageClickEventArgs e)
        {
            modelo.Eliminarmodelo(modelo.BuscarRegistros_idModelo(int.Parse(this.TextBoxCodModelo.Text))[0]);
        }

        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {
            this.Mostrar(modelo.BuscarRegistros_idModelo(int.Parse(this.TextBoxBuscar.Text))[0]);
        }
        public void Mostrar(modelo modeloart)
        {
            this.TextBoxCodModelo.Text = modeloart.idModelo.ToString();
            this.TextBoxMarca.Text = modeloart.marca.idMarca.ToString();
            this.TextBoxNomModelo.Text = modeloart.NombreModelo;

        }
    }
}