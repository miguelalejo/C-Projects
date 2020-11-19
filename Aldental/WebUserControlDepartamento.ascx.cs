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
    public partial class WebUserControlBuscarDepartamento : System.Web.UI.UserControl
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
                departamento.Guardardepartamento(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);


            }
            if (e.Item.Name == "Modificar")
            {
                departamento.Modificardepartamento(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Eliminar")
            {
                departamento.Eliminardepartamento(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Buscar")
            {
                this.Mostrar(departamento.BuscarRegistros_idDep(int.Parse(this.TextBoxBuscar.Text))[0]);
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
            this.TextBoxCodDepartamento.Text = "";
            this.TextBoxNomDepartamento.Text = "";
        }
        public departamento Leer()
        {
            return new departamento(int.Parse(this.TextBoxCodDepartamento.Text), this.TextBoxNomDepartamento.Text);
        }
        public void Mostrar(departamento dep )
        {
            this.TextBoxCodDepartamento.Text = dep.idDep.ToString();
            this.TextBoxNomDepartamento.Text = dep.NombreDep;
        }

        protected void ASPxNavBar4_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }     

    }
}