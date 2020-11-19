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
    public partial class WebUserControBuscarCargo : System.Web.UI.UserControl
    {
        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            this.PasarGridView(cargo.Registroscargo());
        }
        public void PasarGridView(cargo[] cargo)
        {

            this.ASPxGridViewCargo.DataSource = cargo;
            this.ASPxGridViewCargo.DataBind();
        }
        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {
           
                if (this.DropDownListCargo.SelectedIndex == 0)
                {
                    cargo[] car = cargo.BuscarRegistros_idCargo(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(car);
                }
                if (this.DropDownListCargo.SelectedIndex == 1)
                {
                    cargo[] car = cargo.BuscarRegistros_NombreCargo(this.TextBoxBus.Text);
                    this.PasarGridView(car);
                }
                if (this.DropDownListCargo.SelectedIndex == 2)
                {
                    cargo[] car = cargo.BuscarRegistros_idDep(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(car);
                }
            }
            
        
        protected void ASPxMenu1_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e)
        {
            this.PasarGridView(cargo.Registroscargo());
        }

        protected void ASPxNavBar1_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }

        protected void ASPxGridViewCargo0_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["idCargo"] = (sender as ASPxGridView).GetMasterRowKeyValue();

        }
    }
}