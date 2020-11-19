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
    public partial class WebUserControlPersonal : System.Web.UI.UserControl
    {
        static usuarioperfil usuario;
         protected void Page_Load(object sender, EventArgs e)
        {

            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            this.PasarGridView(empleado.Registrosempleado());
           
        }



        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {
           try
            {
            if (this.DropDownListSelecc.Items[0] == this.DropDownListSelecc.SelectedItem)
            {
                int codigo=int.Parse(this.TextBoxBus.Text);
                this.PasarGridView( empleado.BuscarRegistros_idEmpleado(codigo));
            }
            if (this.DropDownListSelecc.Items[1]== this.DropDownListSelecc.SelectedItem)
            {
                this.PasarGridView(empleado.BuscarRegistros_NombreEmp(this.TextBoxBus.Text + "%"));
               
            }
            if (this.DropDownListSelecc.Items[2] == this.DropDownListSelecc.SelectedItem)
            {
                this.PasarGridView(empleado.BuscarRegistros_ApellidoEmp(this.TextBoxBus.Text + "%"));
                
            }            
            if (this.DropDownListSelecc.Items[3]== this.DropDownListSelecc.SelectedItem)
            {
                this.PasarGridView(empleado.BuscarRegistros_DireccEmp(this.TextBoxBus.Text + "%"));               
            }
            if (this.DropDownListSelecc.Items[4] == this.DropDownListSelecc.SelectedItem)
            {
                int codigocargo = int.Parse(this.TextBoxBus.Text);
               this.PasarGridView( empleado.BuscarRegistros_idCargo(codigocargo));
                
            }
            if (this.DropDownListSelecc.Items[5] == this.DropDownListSelecc.SelectedItem)
            {
                float salario = float.Parse(this.TextBoxBus.Text);
                this.PasarGridView( empleado.BuscarRegistros_Salario(salario));
             
            }
            if (this.DropDownListSelecc.Items[6] == this.DropDownListSelecc.SelectedItem)
            {
                this.PasarGridView(empleado.BuscarRegistros_Movil(this.TextBoxBus.Text + "%"));
           
            }
           }
            catch(Exception error)
               {
                   this.ASPxLabelMe.Text = error.Message;
                   this.ASPxPopupControlError.ShowOnPageLoad = true;
                   this.ASPxPopupControlError.DataBind();
               }
        }
       
       

       

        protected void ButtonMostrar_Click(object sender, EventArgs e)
        {
            this.PasarGridView(empleado.Registrosempleado());
        
        }
        public void PasarGridView(empleado[]unos_empleados)
        {
            this.ASPxGridViewEmpleado.DataSource = unos_empleados;
            this.ASPxGridViewEmpleado.DataBind();
        }

        protected void ASPxGridViewEmpleado_AfterPerformCallback(object sender, DevExpress.Web.ASPxGridView.ASPxGridViewAfterPerformCallbackEventArgs e)
        {

        }

    

      
    }
}