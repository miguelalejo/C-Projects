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
using DevExpress.Web.ASPxPopupControl;

namespace Aldental
{
    public partial class WebUserControlClien : System.Web.UI.UserControl
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Activo_CheckedChanged(object sender, EventArgs e)
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
                cliente.Guardarcliente(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Modificar")
            {
                cliente.Modificarcliente(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Eliminar")
            {
                cliente.Eliminarcliente(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Buscar")
            {
                try
                {
                
                this.Mostrar(cliente.BuscarRegistros_idCliente(int.Parse(this.TextBoxBuscar.Text))[0]);
                this.ActivarG(false);
                this.ActivaModfE(true);

                }
                 catch (Exception error)
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
            this.txtApellidoC.Text = "";
            this.txtCelularC.Text = "";
            this.txtCiC.Text = "";
            this.txtCodigoC.Text = "";
            this.txtDirecC.Text = "";
            this.txtFonoC.Text = "";
            this.txtNombreC.Text = "";
            this.CheckBoxActivo.Checked = true;

        }
        public cliente Leer()
        {
            return new cliente(int.Parse(this.txtCodigoC.Text), this.txtApellidoC.Text, this.txtNombreC.Text, this.txtCelularC.Text, this.txtDirecC.Text, this.txtFonoC.Text, this.txtCelularC.Text,this.CheckBoxActivo.Checked);           
        }

        public void Mostrar(cliente un_cliente)
        {

            this.txtCodigoC.Text = un_cliente.idCliente.ToString();
            this.txtApellidoC.Text = un_cliente.ApellidoCliente;
            this.txtCelularC.Text = un_cliente.Celular;
            this.txtCiC.Text = un_cliente.CedulaCliente;
            this.txtDirecC.Text = un_cliente.DireccCliente;
            this.txtFonoC.Text = un_cliente.Telefono;
            this.txtNombreC.Text = un_cliente.NombreCliente;
            this.CheckBoxActivo.Checked = un_cliente.Activo;
        }

        protected void ASPxNavBar4_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }

    }
}