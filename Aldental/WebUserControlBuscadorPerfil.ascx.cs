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
    public partial class WebUserControlBuscadorPerfil : System.Web.UI.UserControl
    {
        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            this.PasarGridView(perfil.Registrosperfil());
        }

        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {
            try
            {

                if (this.DropDownListPerfil.SelectedIndex == 0)
                {
                    perfil[] perf = perfil.BuscarRegistros_idPerfil(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(perf);
                }
                if (this.DropDownListPerfil.SelectedIndex == 1)
                {
                    perfil[] perf = perfil.BuscarRegistros_NombrePerfil(this.TextBoxBus.Text);
                    this.PasarGridView(perf);
                }
                
            }
            catch (Exception error)
            {

                this.ASPxRoundPanel1.Visible = true;
                this.ASPxLabel1.Text = error.Message;
            }


        }


        public void PasarGridView(perfil[] perfil)
        {

            this.ASPxGridViewPerfil.DataSource = perfil;
            this.ASPxGridViewPerfil.DataBind();
        }

        protected void ASPxMenu1_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e)
        {
            this.PasarGridView(perfil.Registrosperfil());
        }

        protected void ASPxNavBar1_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }

        protected void ASPxGridViewPerfil0_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["idPerfil"] = (sender as ASPxGridView).GetMasterRowKeyValue();

        }

   







    }
}