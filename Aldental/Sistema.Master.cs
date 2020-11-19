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
using DevExpress.Web.ASPxNavBar;

namespace Aldental
{
    public partial class Sistema : System.Web.UI.MasterPage
    {
        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            else
            {
                this.BloquearUser(usuario);
            }
        }

        protected void ASPxNavBar2_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }
        public void BloquearUser(usuarioperfil user)
        {
            NavBarGroupCollection coleccion = this.ASPxNavBar2.Groups;
            switch (user.perfil.NombrePerfil)
            {
                
                case "Usuario":
                    
                    for (int i = 0; i < coleccion.Count; i++)
                    {
                        if (coleccion[i].Text.Contains("PERFIL"))
                        {
                            this.ASPxNavBar2.Groups[i].Enabled = false;
                        }
                    }
                    break;
                case "Invitado":
                    for (int i = 0; i < coleccion.Count; i++)
                    {
                        if (coleccion[i].Text.Contains("PERFIL"))
                        {
                            this.ASPxNavBar2.Groups[i].Enabled = false;
                        }
                        if (coleccion[i].Text.Contains("VENTAS"))
                        {
                            this.ASPxNavBar2.Groups[i].Enabled = false;
                        }
                        if (coleccion[i].Text.Contains("COMPRAS"))
                        {
                            NavBarItemCollection coleccionItems = this.ASPxNavBar2.Groups[i].Items;
                            for (int j = 0; j < coleccionItems.Count; j++)
                            {
                                if (coleccionItems[j].Index==1)
                                {
                                    coleccionItems[j].Enabled = false;
                                }
                                if (coleccionItems[j].Text == "Ingresos de Bodega")
                                {
                                    coleccionItems[j].Enabled = false;         
                                }
                            }
                        }

                    }
                    break;
            }
        }

     
    }
}
