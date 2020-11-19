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
    public partial class WebUserControlProveedor : System.Web.UI.UserControl
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxNavBar4_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
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
            this.txtCodigoP.Text = "";
            this.txtNombreP.Text = "";
            this.txtDireccionP.Text = "";
            this.txtRucP.Text = "";
            this.txtTelefonoPrP.Text = "";
            this.txtTelefonoSecP.Text = "";
            this.CheckBoxActivo.Checked = false;
          
        }
        public proveedor Leer()
        {
            return new proveedor(int.Parse(this.txtCodigoP.Text), this.txtNombreP.Text, this.txtDireccionP.Text, this.txtRucP.Text, this.txtTelefonoPrP.Text, this.txtTelefonoSecP.Text,this.CheckBoxActivo.Checked);

        }
        public void Mostrar(proveedor prov )
        {
            this.txtCodigoP.Text = prov.idProveedor.ToString();
            this.txtNombreP.Text = prov.NombreProvee;
            this.txtDireccionP.Text = prov.DireccionProvee;
            this.txtRucP.Text = prov.RUC;
            this.txtTelefonoPrP.Text = prov.TelefPProvee;
            this.txtTelefonoSecP.Text = prov.TelefSProvee;
            this.CheckBoxActivo.Checked = prov.Activo;
            
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
                proveedor.Guardarproveedor(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);


            }
            if (e.Item.Name == "Modificar")
            {
                proveedor.Modificarproveedor(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Eliminar")
            {
                proveedor.Eliminarproveedor(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Buscar")
            {
                this.Mostrar(proveedor.BuscarRegistros_idProveedor(int.Parse(this.txtBuscar.Text))[0]);
                this.ActivarG(false);
                this.ActivaModfE(true);
            }

        }

        

        
    }
}