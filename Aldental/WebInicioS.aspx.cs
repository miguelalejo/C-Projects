using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using ClasesAldental;

namespace Aldental
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login2_Authenticate(object sender, AuthenticateEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void ButtonIniciarSesion_Click(object sender, EventArgs e)
        {
            try
            {
                usuarioperfil user = usuarioperfil.BuscarRegistros_NombreNick(this.LoginUser.UserName)[0];
                if (user.Contraseña == this.LoginUser.Password)
                {
                    this.Session.Add("usuario", user);
                    this.Response.Redirect("~/WebForm_Bienve.aspx");

                }
                else
                {
                    this.ASPxLabelMe0.Text = "Usuario y contraseña no válidas";
                    this.ASPxPopupControlError.ShowOnPageLoad = true;
                    this.ASPxPopupControlError.DataBind();
                }
            }
            catch(Exception error)
            {
                this.ASPxLabelMe0.Text = "Usuario y contraseña no válidas";
                this.ASPxPopupControlError.ShowOnPageLoad = true;
                this.ASPxPopupControlError.DataBind();
            }



        }
    }
}
