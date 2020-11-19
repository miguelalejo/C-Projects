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
    public partial class WebUserControl_BuscarMarcaProducto : System.Web.UI.UserControl
    {
        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;            
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            
            this.PasarGridView(marca.Registrosmarca());
        }

        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                
                if (this.DropDownListMarca.SelectedIndex == 0)
                {
                    marca[] mar = marca.BuscarRegistros_idMarca(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(mar);
                }
                else
                {
                    marca[] mar = marca.BuscarRegistros_NombreMarca(this.TextBoxBus.Text);
                    this.PasarGridView(mar);
                }
            }
            catch (Exception error)
            {
            
                this.ASPxRoundPanel1.Visible = true;
                this.ASPxLabel1.Text = error.Message;
            }

        }
        public void PasarGridView(marca[] marca)
        {
          
            this.ASPxGridViewMarcaProd.DataSource = marca;
            this.ASPxGridViewMarcaProd.DataBind();
        }

        protected void ASPxMenu1_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e)
        {
            this.PasarGridView(marca.Registrosmarca());
        }

        protected void ASPxNavBar1_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }

        protected void ASPxRoundPanel1_Load(object sender, EventArgs e)
        {

        }   
    }
}