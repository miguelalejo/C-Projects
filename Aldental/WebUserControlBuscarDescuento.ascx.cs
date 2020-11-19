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
    public partial class WebUserControlBuscarDescuento : System.Web.UI.UserControl
    {
        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            this.PasarGridView(descuento.Registrosdescuento());
        }

        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {
            try
            {

                if (this.DropDownListDescuento.SelectedIndex == 0)
                {
                    descuento[] des = descuento.BuscarRegistros_idDescuento(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(des);
                }
                if (this.DropDownListDescuento.SelectedIndex == 1)
                {
                    descuento[] des = descuento.BuscarRegistros_NombreDescuento(this.TextBoxBus.Text);
                    this.PasarGridView(des);
                }
                if (this.DropDownListDescuento.SelectedIndex == 2)
                {
                    descuento[] des = descuento.BuscarRegistros_ValorDescuento(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(des);
                }
            }
            catch (Exception error)
            {
                this.ASPxLabelMe.Text = error.Message;
                this.ASPxPopupControlError.ShowOnPageLoad = true;
                this.ASPxPopupControlError.DataBind();
            }  

        }

        public void PasarGridView(descuento[] descuento)
        {

            this.ASPxGridViewDescuento.DataSource = descuento;
            this.ASPxGridViewDescuento.DataBind();
        }

        protected void ASPxMenu1_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e)
        {
            this.PasarGridView(descuento.Registrosdescuento());
        }

        protected void ASPxNavBar1_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }

   

       

    }
}