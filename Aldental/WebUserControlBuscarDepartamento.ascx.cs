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
using DevExpress.Web.ASPxGridView;
namespace Aldental
{
    public partial class WebUserControlBuscarDepartamento1 : System.Web.UI.UserControl
    {
        static usuarioperfil usuario;
        protected void Page_Load(object sender, EventArgs e)
        {
            usuario = this.Session["usuario"] as usuarioperfil;
            if (usuario == null)
            {
                this.Response.Redirect("~/WebInicioS.aspx");
            }
            this.PasarGridView(departamento.Registrosdepartamento());
        }

        protected void ImageButtonBuscar_Click(object sender, ImageClickEventArgs e)
        {

            try
            {
                
                if (this.DropDownListDepartamento.SelectedIndex == 0)
                {
                    departamento[] dep = departamento.BuscarRegistros_idDep(int.Parse(this.TextBoxBus.Text));
                    this.PasarGridView(dep);
                }
                else
                {
                    departamento[] dep = departamento.BuscarRegistros_NombreDep(this.TextBoxBus.Text);
                    this.PasarGridView(dep);
                }
            }
            catch (Exception error)
            {
                this.ASPxLabelMe.Text = error.Message;
                this.ASPxPopupControlError.ShowOnPageLoad = true;
                this.ASPxPopupControlError.DataBind();
            }  

        }
        public void PasarGridView(departamento[] departamento)
        {
          
            this.ASPxGridViewDepartamento.DataSource = departamento;
            this.ASPxGridViewDepartamento.DataBind();
        }

        protected void ASPxMenu1_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e)
        {
            this.PasarGridView(departamento.Registrosdepartamento());
        }

        protected void ASPxNavBar1_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }

        protected void ASPxRoundPanel1_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxGridViewPerfil0_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["idCargo"] = (sender as ASPxGridView).GetMasterRowKeyValue();

        }

        protected void ASPxGridViewEmpleado_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["idEmpleado"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }

      
       
        }
    }