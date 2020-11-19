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
    public partial class WebUserControlBuscarMaterial : System.Web.UI.UserControl
    {
        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            this.PasarGridView(material.Registrosmaterial());
        }

        protected void ASPxNavBar1_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }


        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {
            try
            {

                if (this.DropDownListMaterial.SelectedIndex == 0)
                {
                    material[] mat = material.BuscarRegistros_idMaterial(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(mat);
                }
                else
                {
                    material[] mat = material.BuscarRegistros_NombreMaterial(this.TextBoxBus.Text);
                    this.PasarGridView(mat);
                }
            }
            catch (Exception error)
            {

                this.ASPxRoundPanel1.Visible = true;
                this.ASPxLabel1.Text = error.Message;
            }

        }
        public void PasarGridView(material[] material)
        {

            this.ASPxGridViewMaterialProducto.DataSource = material;
            this.ASPxGridViewMaterialProducto.DataBind();
        }

        protected void ASPxMenu1_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e)
        {
            this.PasarGridView(material.Registrosmaterial());
        }

       
    }
}