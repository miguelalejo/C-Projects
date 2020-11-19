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
using System.Web.UI.MobileControls;
using System.Collections.Generic;
using DevExpress.Web.ASPxPopupControl;
namespace Aldental
{
    public partial class WebUserControlFacturaCliente : System.Web.UI.UserControl
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           

        }

        protected void ImageButtonNuevo_Click(object sender, ImageClickEventArgs e)
        {
            
            facturacliente.Guardarfacturacliente(this.Leer());
        }
        public facturacliente Leer()
        {
            cliente cli=cliente.BuscarRegistros_NombreCliente(this.DropDownListCliente.SelectedItem.Text)[0];
            formapago forma=formapago.BuscarRegistros_NombreFormaPago(this.DropDownListFormaPago.SelectedItem.Text)[0];
            creditofactura cre=creditofactura.BuscarRegistros_NombreCredito(this.DropDownListCredito.SelectedItem.Text)[0];
            estadofactura est=estadofactura.BuscarRegistros_NombreEstado(this.DropDownListEstadoFact.SelectedItem.Text)[0];
            empleado emp=empleado.BuscarRegistros_NombreEmp(this.DropDownListEmpleado.SelectedItem.Text)[0];
            string Ruc = this.TextBoxRuc.Text;
            return new facturacliente(int.Parse(this.TextBoxCodFactura.Text),cli,forma,emp,est,cre,this.ASPxCalendarFac.SelectedDate,Ruc);

        }

       

        protected void DropDownListCliente_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        public static detallefacclien[] listadetalle;

        protected void ImageButtonAgregarDetalle_Click(object sender, ImageClickEventArgs e)
        {
            if (this.TextBoxCantidad.Text =="")
            {
                this.ASPxLabelMe.Text = "Primero Agrege la cantidad";
                this.ASPxPopupControlError.ShowOnPageLoad = true;
                this.ASPxPopupControlError.DataBind();
            }
            else
            {

                if (listadetalle == null)
                {
                    producto p = producto.BuscarRegistros_idProducto(int.Parse(this.DropDownListProd.SelectedValue))[0];
                    listadetalle = new detallefacclien[1];
                    detallefacclien detalle = new detallefacclien(1, p, this.Leer(), int.Parse(this.TextBoxCantidad.Text), p.Precio);
                    listadetalle[0] = detalle;
                    this.LlenarAspGridViewProd(listadetalle);

                }
                else
                {
                    producto p = producto.BuscarRegistros_idProducto(int.Parse(this.DropDownListProd.SelectedValue))[0];
                    detallefacclien[] temp = listadetalle;
                    detallefacclien detalle = new detallefacclien(listadetalle.Length + 1, p, this.Leer(), int.Parse(this.TextBoxCantidad.Text), p.Precio);
                    listadetalle = this.AgregarDetalle(temp, detalle);
                    this.LlenarAspGridViewProd(listadetalle);
                }

                this.CalculoTotales(listadetalle);
            }
        }
        public detallefacclien[] AgregarDetalle(detallefacclien[] listadetalle, detallefacclien detalle)
        {

            detallefacclien[] lista = new detallefacclien[listadetalle.Length + 1];
            for (int i = 0; i < lista.Length-1; i++)
            {
                lista[i] = listadetalle[i];
            }
            lista[listadetalle.Length] = detalle;
            return lista;

        }
        public void LlenarAspGridViewProd(detallefacclien[] lista)
        {
            this.ASPxGridViewProducto.DataSource = lista;
            this.ASPxGridViewProducto.DataBind();
        }
        protected void ButtonBorrarItems_Click(object sender, EventArgs e)
        {
            List<object> keyvalues = this.ASPxGridViewProducto.GetSelectedFieldValues("idFC");
            if (keyvalues.Count > 0)
            {
               listadetalle= this.QuitarDetalles(keyvalues);
               this.LlenarAspGridViewProd(listadetalle);
               this.ASPxGridViewProducto.Selection.UnselectAll();
               this.CalculoTotales(listadetalle);
            }
            

        }
        public void CalculoTotales(detallefacclien[] detalle)
        {
            float subtotal = detallefacclien.SubTotal(detalle);
            this.TextBoxSubTotal.Text = subtotal.ToString();
            impuesto imp = impuesto.BuscarRegistros_NombreImpuesto("iva")[0];
            float ivafac = subtotal * imp.ValorImpuesto;
            this.TextBoxIva.Text = ivafac.ToString();
            this.TextBoxTotal.Text = (subtotal + ivafac).ToString();
        }
        public detallefacclien[] QuitarDetalles(List<object> keyvalues)
        {

            detallefacclien[] lista = new detallefacclien[listadetalle.Length -keyvalues.Count];
           
                for (int i = 0,j=0,k=0; i < listadetalle.Length; i++)
                {
                    if (k == keyvalues.Count)
                        k = keyvalues.Count - 1;
                    if (listadetalle[i].idFC != (int)keyvalues[k])
                    {
                        lista[j] = listadetalle[i];
                        lista[j].idFC = j + 1;
                        j++;

                    }
                    else
                    {
                        k++;
                       
                    }
                }

            
            return lista;

        }

        protected void ASPxMenuOperaciones1_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e)
        {
            if (e.Item.Name == "Facturar")
            {
                try
                {
                    if (listadetalle != null)
                    {
                        this.bloquear(false);
                        this.GuardarFactura();
                        this.ActivarFacturar(false);
                    }
                    else
                    {
                        this.ASPxLabelMe.Text = "Primero Agrege productos al detalle";
                        this.ASPxPopupControlError.ShowOnPageLoad = true;
                        this.ASPxPopupControlError.DataBind();
                    }
                }
                catch (Exception error)
                {
                    if (listadetalle != null)
                    {
                        this.ASPxLabelMe.Text = error.Message;
                        this.ASPxPopupControlError.ShowOnPageLoad = true;
                        this.ASPxPopupControlError.DataBind();
                    }
                    else
                    {
                        this.ASPxLabelMe.Text = "Primero Agrege productos al detalle";
                        this.ASPxPopupControlError.ShowOnPageLoad = true;
                        this.ASPxPopupControlError.DataBind();
                    }



                }

            }
            if (e.Item.Name == "Nuevo")
            {
                this.limpiar();
                this.ConjuntoDropDownList(true);
                this.ConjuntoTextBox(false);
                this.bloquear(true);
                listadetalle = null;
                this.LlenarAspGridViewProd(listadetalle);
                this.ActivarFacturar(true);
                this.ImageButtonAgregarDetalle.Visible = true;
                this.TextBoxCantidad.Enabled = true;
                ButtonBorrarItems.Visible = true;
                
                
            }
            if (e.Item.Name == "Buscar")
            {
                try{

                this.ConjuntoDropDownList(false);
                this.ConjuntoTextBox(true);
                this.TextBoxCantidad.Enabled = false;
                this.ButtonBorrarItems.Visible = false;
                this.ImageButtonAgregarDetalle.Visible = false;
                facturacliente una_facturacliente = facturacliente.BuscarRegistros_idFacClien(int.Parse(this.TextBoxBuscar.Text))[0];
                this.Mostrar(una_facturacliente);
                this.ActivarFacturar(false);
                      detallefacclien[]detalle= BuscardetallefaClien(una_facturacliente.idFacClien);
                 this.ASPxGridViewProducto.DataSource = null;
            this.ASPxGridViewProducto.DataSource =detalle;
            this.ASPxGridViewProducto.DataBind();
                this.CalculoTotales(detalle);
                
                 }
                catch (Exception error)
                {
                    this.ASPxLabelMe.Text = error.Message;
                    this.ASPxPopupControlError.ShowOnPageLoad = true;
                    this.ASPxPopupControlError.DataBind();
                }

            }
        }

        public void limpiar()
        {
            this.TextBoxBuscar.Text = "";
            this.TextBoxCodFactura.Text = "";
            this.TextBoxCliente.Text="";
            this.TextBoxFormapago.Text = "";
            this.TextBoxFechaFactura.Text = "";
            this.TextBoxCreditofactura.Text= "";
            this.TextBoxEmpleado.Text ="";
            this.TextBoxEstadofactura.Text ="";
            this.TextBoxCantidad.Text = "";
            this.TextBoxIva.Text = "";
            this.TextBoxSubTotal.Text = "";
            this.TextBoxTotal.Text = "";
            this.TextBoxRuc.Text = "";

        }
        public void ConjuntoTextBox(bool activar)
        {
            this.TextBoxCliente.Visible=activar;
            this.TextBoxFormapago.Visible = activar;
            this.TextBoxFechaFactura.Visible = activar;
            this.TextBoxCreditofactura.Visible = activar;
            this.TextBoxEmpleado.Visible = activar;
            this.TextBoxEstadofactura.Visible = activar;
            
        }
        public void ConjuntoDropDownList(bool activar)
        {
            this.DropDownListCliente.Visible = activar;
            this.DropDownListFormaPago.Visible = activar;
            this.ASPxCalendarFac.Visible = activar;
            this.DropDownListCredito.Visible = activar;
            this.DropDownListEmpleado.Visible = activar;
            this.DropDownListProd.Visible = activar;
            this.DropDownListEstadoFact.Visible = activar;
        }
        public void Mostrar(facturacliente una_facturacliente)
        {
            this.TextBoxCodFactura.Text = una_facturacliente.idFacClien.ToString();
            this.TextBoxCliente.Text = una_facturacliente.cliente.ApellidoCliente;
            this.TextBoxFormapago.Text = una_facturacliente.formapago.NombreFormaPago;
            this.TextBoxFechaFactura.Text = una_facturacliente.FechaFacClien.ToString();
            this.TextBoxCreditofactura.Text = una_facturacliente.creditofactura.NombreCredito;
            this.TextBoxEmpleado.Text = una_facturacliente.empleado.ApellidoEmp;
            this.TextBoxEstadofactura.Text = una_facturacliente.estadofactura.NombreEstado;
            this.TextBoxRuc.Text = una_facturacliente.Ruc;
          
        }
        public detallefacclien[] BuscardetallefaClien(int unIdfac)
        {
            return detallefacclien.BuscarRegistros_idFacClien(unIdfac);
        }
        public void bloquear(bool valor)
        {
            this.TextBoxCodFactura.Enabled = valor;
            this.DropDownListCliente.Enabled = valor;
            this.DropDownListFormaPago.Enabled = valor;
            this.ASPxCalendarFac.Enabled = valor;
            this.DropDownListCredito.Enabled = valor;
            this.DropDownListEstadoFact.Enabled = valor;
            this.DropDownListEmpleado.Enabled = valor;
            this.DropDownListProd.Enabled = valor;
            this.TextBoxCantidad.Enabled = valor;
            this.TextBoxRuc.Enabled = valor;
         
        }
        public void GuardarFactura()
        {
            facturacliente fac=this.Leer();
            facturacliente.Guardarfacturacliente(fac);
            detallefacclien.GuardarListadetallefacclien(listadetalle, fac);

        }
        public void ActivarFacturar(bool activo)
        {
            this.ASPxMenuOperaciones1.Items[1].ClientEnabled = activo;


        }

        protected void TextBoxBuscar_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBoxFormapago_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownListEmpleado_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ObjectDataSourceCredito_Selecting(object sender, ObjectDataSourceSelectingEventArgs e)
        {

        }

        protected void TextBoxRuc_TextChanged(object sender, EventArgs e)
        {

        }

         
      
    }
}