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
    public partial class WebUserControlTipoProducto : System.Web.UI.UserControl
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxMenuOperaciones1_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e)
        {
            if (e.Item.Name == "Nuevo")
            {
                this.ResetearText();
                this.ActivarG(true);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Guardar")
            {
                tipoproducto.Guardartipoproducto(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);


            }
            if (e.Item.Name == "Modificar")
            {
                tipoproducto.Modificartipoproducto(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Eliminar")
            {
                tipoproducto.Eliminartipoproducto(tipoproducto.BuscarRegistros_idTipProd(int.Parse(this.TextBoxCodigoTiPro.Text))[0]);
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Buscar")
            {
                this.Mostrar(tipoproducto.BuscarRegistros_idTipProd(int.Parse(this.TextBoxBuscar.Text))[0]);
                this.ActivarG(false);
                this.ActivaModfE(true);
            }
        }
        public void ActivarG(bool activo)
        {
            this.ASPxMenuOperaciones1.Items[1].ClientEnabled = activo;


        }
        public void ActivaModfE(bool activo)
        {
            this.ASPxMenuOperaciones1.Items[2].ClientEnabled = activo;
            this.ASPxMenuOperaciones1.Items[3].ClientEnabled = activo;


        }
        public void ResetearText()
        {
            this.TextBoxCodigoTiPro.Text = "";
            this.TextBoxNomTipPro.Text = "";
            this.TextBoxBuscar.Text = "";
        }
        public tipoproducto Leer()
        {
            return new tipoproducto(int.Parse(this.TextBoxCodigoTiPro.Text), this.TextBoxNomTipPro.Text);

        }
        public void Mostrar(tipoproducto tipoprod)
        {
            this.TextBoxCodigoTiPro.Text = tipoprod.idTipProd.ToString();
            this.TextBoxNomTipPro.Text = tipoprod.NombreTipProd;

        }

        protected void ASPxNavBar1_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {


        }

       
    }
}