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
using DevExpress.Web.ASPxMenu;
using ClasesAldental;

namespace Aldental
{
    public partial class WebUserControlMarcaProducto : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
            this.TextBoxCodMarca.Text = "";
            this.TextBoxNomMarca.Text = "";
        }
        public marca Leer()
        {
            return new marca(int.Parse(this.TextBoxCodMarca.Text), this.TextBoxNomMarca.Text);
        }
        public void Mostrar(marca mar)
        {
            this.TextBoxCodMarca.Text = mar.idMarca.ToString();
            this.TextBoxNomMarca.Text = mar.NombreMarca;
        }

        protected void ASPxNavBar4_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }

        protected void ASPxMenuOperaciones1_ItemClick(object source, MenuItemEventArgs e)
        {
            
            if (e.Item.Name == "Nuevo")
            {
                this.ResetearText();
                this.ActivarG(true);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Guardar")
            {
                marca.Guardarmarca(this.Leer());

                this.ActivarG(false);
                this.ActivaModfE(false);
                

            }
            if (e.Item.Name == "Modificar")
            {
                marca.Modificarmarca(this.Leer());

                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Eliminar")
            {
                marca.Eliminarmarca(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Buscar")
            {
                this.Mostrar(marca.BuscarRegistros_idMarca(int.Parse(this.TextBoxBuscar.Text))[0]);
                this.ActivarG(false);
                this.ActivaModfE(true);
            }

            
        }

        
    }
}