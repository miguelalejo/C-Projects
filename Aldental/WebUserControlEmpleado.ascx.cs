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
    public partial class WebUserControlempleado : System.Web.UI.UserControl
    {
        empleado empleado;
        public empleado Empleado
        {
            get { return this.empleado; }
            set
            {
                this.empleado = value;
            }
        }
     
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
                empleado.Guardarempleado(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);


            }
            if (e.Item.Name == "Modificar")
            {
                empleado.Modificarempleado(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Eliminar")
            {
                empleado.Eliminarempleado(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Buscar")
            {
                try
                {
                this.Mostrar(empleado.BuscarRegistros_idEmpleado(int.Parse(this.txtBuscar.Text))[0]);
                this.ActivarG(false);
                this.ActivaModfE(true);
                }
                catch(Exception error)
                {
                    this.ASPxLabelMe.Text = error.Message;
                    this.ASPxPopupControlError.ShowOnPageLoad = true;
                    this.ASPxPopupControlError.DataBind();
                }
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
            this.txtNombreV.Text = "";
            this.txtApellidoV.Text = "";
            this.txtCelularV.Text = "";
            this.txtCiV.Text = "";
            this.txtFonoV.Text = "";
            this.txtSalarioV.Text = "";
            this.txtCodigoV.Text = "";
            this.txtEdadV.Text = "";
            this.txtDirecV.Text = "";
        }
        public empleado Leer()
        {
            cargo carg = cargo.BuscarRegistros_idCargo(int.Parse(this.DropDownListCargo.SelectedItem.Value))[0];
            return new empleado(int.Parse(this.txtCodigoV.Text), carg, this.txtNombreV.Text, this.txtDirecV.Text, int.Parse(this.txtEdadV.Text), float.Parse(this.txtSalarioV.Text), this.txtCelularV.Text, this.txtFonoV.Text, this.txtCiV.Text, this.CheckBoxActvio.Checked, this.txtApellidoV.Text);
           
        }
        public void Mostrar(empleado emp)
        {

            this.txtNombreV.Text = emp.NombreEmp;
            this.txtApellidoV.Text = emp.ApellidoEmp;
            this.txtCelularV.Text = emp.Movil;
            this.txtCiV.Text = emp.Cedula;
            this.txtFonoV.Text = emp.TelefEmp;
            this.txtSalarioV.Text = emp.Salario.ToString();
            this.txtCodigoV.Text = emp.idEmpleado.ToString();
            this.txtEdadV.Text = emp.Edad.ToString();
            this.CheckBoxActvio.Checked = emp.Activo;
            this.txtDirecV.Text = emp.DireccEmp;
            this.DropDownListCargo.SelectedItem.Text = emp.cargo.NombreCargo.ToString();
        }

        protected void ASPxNavBar4_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }

        protected void DropDownListCargo_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }     

    }
}