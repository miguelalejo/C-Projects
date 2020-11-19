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
    public partial class WebUserControlFacturaVent : System.Web.UI.UserControl
    {
        //conexionBase conec = new conexionBase();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButtonAgregar_Click(object sender, ImageClickEventArgs e)
        {
            this.ResetearTexBoxes();
        }
        public void ResetearTexBoxes()
        {
            this.txtNoFact.Text = "";
            this.txtCodC.Text = "";
            this.txtCodEmp.Text = "";
            this.txtCodEstFact.Text = "";
            this.txtCredFact.Text = "";
        


        }

        protected void ImageButtonModificar_Click(object sender, ImageClickEventArgs e)
        {
            facturacliente.Modificarfacturacliente(this.LeerTextBoxs());
        }
        public facturacliente LeerTextBoxs()
        {
            cliente clien = cliente.BuscarRegistros_idCliente(int.Parse(this.txtCodC.Text))[0];
            formapago formapago = formapago.BuscarRegistros_idFormaPago(int.Parse(this.DropDownFpago.Text))[0];
            empleado emple = empleado.BuscarRegistros_idEmpleado(int.Parse(this.txtCodEmp.Text))[0];
            estadofactura estafac = estadofactura.BuscarRegistros_idEstadoFac(int.Parse(this.txtCodEstFact.Text))[0];
            creditofactura crefact = creditofactura.BuscarRegistros_idCreditoFactura(int.Parse(this.txtCredFact.Text))[0];
            

            return new facturacliente(int.Parse(this.txtNoFact.Text), clien, formapago, emple, estafac, crefact, new DateTime(),"");
        }



        protected void ImageButtonGuardar_Click(object sender, ImageClickEventArgs e)
        {
            facturacliente.Guardarfacturacliente(this.LeerTextBoxs());
        }

        protected void ImageButtonEliminar_Click(object sender, ImageClickEventArgs e)
        {
            facturacliente.Eliminarfacturacliente(facturacliente.BuscarRegistros_idFacClien(int.Parse(this.txtNoFact.Text))[0]);
        }

        protected void ImageButtonBuscar_Click1(object sender, ImageClickEventArgs e)
        {
            this.Mostrar(facturacliente.BuscarRegistros_idFacClien(int.Parse(this.txtBuscar.Text))[0]);

        }
        public void Mostrar(facturacliente factclie)
        {
            this.txtNoFact.Text = factclie.idFacClien.ToString();
            this.txtCodC.Text = factclie.cliente.idCliente.ToString();
            this.DropDownFpago.Text = factclie.formapago.idFormaPago.ToString();
            this.txtCodEmp.Text = factclie.empleado.idEmpleado.ToString();
            this.txtCodEstFact.Text = factclie.estadofactura.idEstadoFac.ToString();
            this.txtCredFact.Text = factclie.creditofactura.idCreditoFactura.ToString();
           // this.ASPxDateFecha.Value = factclie.FechaFacClien;


        }

        protected void txtCiC_TextChanged(object sender, EventArgs e)
        {

        }
    }
}