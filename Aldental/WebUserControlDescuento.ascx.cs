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
    public partial class WebUserControlDescuento : System.Web.UI.UserControl
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
                descuento.Guardardescuento(this.Leer());
                
                this.ActivarG(false);
                this.ActivaModfE(false);


            }
            if (e.Item.Name == "Modificar")
            {
                descuento.Modificardescuento(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Eliminar")
            {
                descuento.Eliminardescuento(this.Leer());
                
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Buscar")
            {

                this.Mostrar(descuento.BuscarRegistros_idDescuento(int.Parse(this.TextBoxBuscar.Text))[0]);
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
            this.TextBoxCoddescuento.Text = "";
            this.TextBoxNomDescuento.Text = "";
            this.TextBoxValorDescuento.Text = "";

        }
        public descuento Leer()
        {
            return new descuento(int.Parse(this.TextBoxCoddescuento.Text), this.TextBoxNomDescuento.Text,float.Parse(this.TextBoxValorDescuento.Text));
        }
        public void Mostrar(descuento des)
        {
            this.TextBoxCoddescuento.Text = des.idDescuento.ToString();
            this.TextBoxNomDescuento.Text = des.NombreDescuento;
            this.TextBoxValorDescuento.Text = des.ValorDescuento.ToString();
            
        }

        protected void ASPxNavBar4_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }       

    }
}