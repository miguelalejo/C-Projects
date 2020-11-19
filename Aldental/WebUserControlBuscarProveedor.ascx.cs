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
    public partial class WebUserControlBuscarProveedor : System.Web.UI.UserControl
    {
        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            this.PasarGridView(proveedor.Registrosproveedor());
            
        }

        public void PasarGridView(proveedor[] proveedor)
        {
            this.ASPxGridViewProveedor.DataSource = proveedor;

            this.ASPxGridViewProveedor.DataBind();
        }

      

        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                if (this.DropDownListProveedor.SelectedIndex == 0)
                {
                    proveedor[] pro = proveedor.BuscarRegistros_idProveedor(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(pro);
                }
                if (this.DropDownListProveedor.SelectedIndex==1)
                {
                    proveedor []pro = proveedor.BuscarRegistros_NombreProvee(this.TextBoxBus.Text);
                    this.PasarGridView(pro);
                }
                if (this.DropDownListProveedor.SelectedIndex == 2)
                {
                    proveedor []pro = proveedor.BuscarRegistros_DireccionProvee(this.TextBoxBus.Text);
                    this.PasarGridView(pro);
                }
                if (this.DropDownListProveedor.SelectedIndex == 3)
                {
                    proveedor [] pro = proveedor.BuscarRegistros_RUC(this.TextBoxBus.Text);
                    this.PasarGridView(pro);
                }
                if (this.DropDownListProveedor.SelectedIndex == 4)
                {
                    proveedor [] pro = proveedor.BuscarRegistros_TelefSProvee(this.TextBoxBus.Text);
                    this.PasarGridView(pro);
                }
                if (this.DropDownListProveedor.SelectedIndex == 5)
                {
                    proveedor [] pro = proveedor.BuscarRegistros_Activo(bool.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(pro);
                }

            }
            catch (Exception error)
            {

                
                this.ASPxRoundPanel1.Visible = true;
                this.ASPxLabel1.Text = error.Message;
            }
        }

        protected void ASPxNavBar2_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }

        protected void ASPxMenuProveedor_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e)
        {
            this.PasarGridView(proveedor.Registrosproveedor());
        }
       
    }
}