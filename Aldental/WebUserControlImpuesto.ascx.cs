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
    public partial class WebUserControlImpuesto : System.Web.UI.UserControl
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
                impuesto.Guardarimpuesto(this.Leer());
                

                this.ActivarG(false);
                this.ActivaModfE(false);


            }
            if (e.Item.Name == "Modificar")
            {
                impuesto.Modificarimpuesto(this.Leer());
                

                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Eliminar")
            {
                impuesto.Eliminarimpuesto(this.Leer());
                
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Buscar")
            {
                
                this.Mostrar(impuesto.BuscarRegistros_idImpuesto(int.Parse(this.TextBoxBuscar.Text))[0]);
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
            this.TextBoxCodimpuesto.Text = " ";
            this.TextBoxNomImpuesto.Text = " ";
            this.TextBoxValorimpuesto.Text = " ";

        }
        public impuesto Leer()
        {
            return new impuesto(int.Parse(this.TextBoxCodimpuesto.Text), this.TextBoxNomImpuesto.Text,float.Parse(this.TextBoxValorimpuesto.Text));
        }
        public void Mostrar(impuesto imp)
        {
            this.TextBoxCodimpuesto.Text = imp.idImpuesto.ToString();
            this.TextBoxNomImpuesto.Text = imp.NombreImpuesto;
            this.TextBoxValorimpuesto.Text = imp.ValorImpuesto.ToString();
         

            
        }

        protected void ASPxNavBar4_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }

       
        


    }
}