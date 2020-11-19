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
    public partial class WebUserControlBucarUsuarioPerfil : System.Web.UI.UserControl
    {
        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            this.PasarGridView(usuarioperfil.Registrosusuarioperfil());
          
           
                
        }

      protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
      {
            try
            {

                if (this.DropDownListUsuario.Items[0] == this.DropDownListUsuario.SelectedItem)
                {
                    usuarioperfil[] usu = usuarioperfil.BuscarRegistros_idUsuario(int.Parse(this.TextBoxBus.Text));
                    
                    this.PasarGridView(usu);

                }
                if (this.DropDownListUsuario.Items[1] == this.DropDownListUsuario.SelectedItem)
                {
                    usuarioperfil[] usu = usuarioperfil.BuscarRegistros_NombreUsuario(this.TextBoxBus.Text);
                    this.PasarGridView(usu);
                }
                if (this.DropDownListUsuario.Items[2] == this.DropDownListUsuario.SelectedItem)
                {
                    usuarioperfil[] usu = usuarioperfil.BuscarRegistros_ApellidoUsuario(this.TextBoxBus.Text);
                    this.PasarGridView(usu);
                }
                if (this.DropDownListUsuario.Items[3] == this.DropDownListUsuario.SelectedItem)
                {
                    usuarioperfil[] usu = usuarioperfil.BuscarRegistros_DireccUsuario(this.TextBoxBus.Text);
                    this.PasarGridView(usu);
                }
                if (this.DropDownListUsuario.Items[4] == this.DropDownListUsuario.SelectedItem)
                {
                    usuarioperfil[] usu = usuarioperfil.BuscarRegistros_Cedula(this.TextBoxBus.Text);
                    this.PasarGridView(usu);
                }
                if (this.DropDownListUsuario.Items[5] == this.DropDownListUsuario.SelectedItem)
                {
                    usuarioperfil[] usu = usuarioperfil.BuscarRegistros_Movil(this.TextBoxBus.Text);
                    this.PasarGridView(usu);
                }
                if (this.DropDownListUsuario.Items[6] == this.DropDownListUsuario.SelectedItem)
                {
                    usuarioperfil[] usu = usuarioperfil.BuscarRegistros_Telefono(this.TextBoxBus.Text);
                    this.PasarGridView(usu);
                }
                if (this.DropDownListUsuario.Items[7] == this.DropDownListUsuario.SelectedItem)
                {
                    usuarioperfil[] usu = usuarioperfil.BuscarRegistros_VecesIngreso(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(usu);
                }
             
            }
            catch (Exception error)
            {
                this.ASPxLabelMe.Text = error.Message;
                this.ASPxPopupControlError.ShowOnPageLoad = true;
                this.ASPxPopupControlError.DataBind();
            }  
       }
        public void PasarGridView(usuarioperfil[] usuarioperfil)
        {

            this.ASPxGridViewUsuario.DataSource = usuarioperfil;
            this.ASPxGridViewUsuario.DataBind();
        }

        protected void ASPxMenu1_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e)
        {
            this.PasarGridView(usuarioperfil.Registrosusuarioperfil());

        }

        
        protected void ASPxNavBar2_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }
    }
}