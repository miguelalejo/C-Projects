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
using System.Collections.Generic;
namespace Aldental
{
    public partial class WebUserControlOdenCompra : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public detalleordencompra[] AgregarDetalle(detalleordencompra[] listadetalle, detalleordencompra detalle)
        {

            detalleordencompra[] lista = new detalleordencompra[listadetalle.Length + 1];
            for (int i = 0; i < lista.Length - 1; i++)
            {
                lista[i] = listadetalle[i];
            }
            lista[listadetalle.Length] = detalle;
            return lista;
            
        }
        protected void ImageButtonNuevo_Click(object sender, ImageClickEventArgs e)
        {
            if (this.TextBoxCantidad.Text == "")
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
                    listadetalle = new detalleordencompra[1];
                    detalleordencompra detalle = new detalleordencompra(1,this.Leer(),p, int.Parse(this.TextBoxCantidad.Text), p.Precio);
                    listadetalle[0] = detalle;
                    this.LlenarAspGridViewOrdenCompra(listadetalle);

                }
                else
                {
                    producto p = producto.BuscarRegistros_idProducto(int.Parse(this.DropDownListProd.SelectedValue))[0];
                    detalleordencompra[] temp = listadetalle;
                    detalleordencompra detalle = new detalleordencompra(listadetalle.Length + 1,this.Leer(),p, int.Parse(this.TextBoxCantidad.Text), p.Precio);
                    listadetalle = this.AgregarDetalle(temp, detalle);
                    this.LlenarAspGridViewOrdenCompra(listadetalle);
                    
                }

                this.CalculoTotales(listadetalle);
            }

        }
        public void limpiar()
        {
            this.TextBoxIdOrdenCompra.Text = "";
            this.TextBoxProveedor.Text = "";
            this.TextBoxFormaPago.Text = "";
            this.TextBoxEmpleado.Text = "";
            this.TextBoxCreditoFactura.Text = "";
            this.TextBoxEstadoFactura.Text = "";
            this.TextBoxFechaPedido.Text = "";
            this.TextBoxBuscar.Text = "";
            this.TextBoxCantidad.Text = "";
            this.TextBoxSubTotal.Text = "";
            this.TextBoxIva.Text = "";
            this.TextBoxTotal.Text = "";

        }
        public void bloquear(bool valor)
        {
            this.TextBoxIdOrdenCompra.Enabled = valor;
            this.DropDownListProvee.Enabled = valor;
            this.TextBoxProveedor.Enabled = valor;
            this.DropDownListFormaPago.Enabled = valor;
            this.TextBoxFormaPago.Enabled = valor;
            this.DropDownListEmplado.Enabled = valor;
            this.TextBoxEmpleado.Enabled = valor;
            this.DropDownListCreditp.Enabled = valor;
            this.TextBoxCreditoFactura.Enabled = valor;
            this.ASPxCalendarFac.Enabled = valor;
            this.TextBoxFechaPedido.Enabled = valor;
            this.DropDownListProd.Enabled = valor;
            this.TextBoxCantidad.Enabled = valor;
            this.DropDownListEstadoFactura.Enabled = valor;
            this.TextBoxEstadoFactura.Enabled = valor;

        }
        public void ConjuntoDropDownList(bool activar)
        {
            this.DropDownListProvee.Visible = activar;
            this.DropDownListFormaPago.Visible = activar;
            this.DropDownListEmplado.Visible = activar;
            this.DropDownListCreditp.Visible = activar;
            this.ASPxCalendarFac.Visible = activar;
            this.DropDownListProd.Visible = activar;
            this.DropDownListEstadoFactura.Visible = activar;

        }
        public void ConjuntoTextBox(bool activar)
        {
            this.TextBoxProveedor.Visible = activar;
            this.TextBoxFormaPago.Visible = activar;
            this.TextBoxEmpleado.Visible = activar;
            this.TextBoxCreditoFactura.Visible = activar;
            this.TextBoxFechaPedido.Visible = activar;
            this.TextBoxEstadoFactura.Visible = activar;
        }
        public void Mostrar(ordendecompra una_OrdenCompra)
        {
            this.TextBoxIdOrdenCompra.Text = una_OrdenCompra.idFacOrdenCompra.ToString();
            this.TextBoxProveedor.Text = una_OrdenCompra.proveedor.NombreProvee;
            this.TextBoxFormaPago.Text = una_OrdenCompra.formapago.NombreFormaPago;
            this.TextBoxEmpleado.Text = una_OrdenCompra.empleado.NombreEmp;
            this.TextBoxCreditoFactura.Text = una_OrdenCompra.creditofactura.NombreCredito;
            this.TextBoxFechaPedido.Text = una_OrdenCompra.FechaFacProvee.ToString();
            this.CheckBoxCondicion.Text = una_OrdenCompra.Condicion.ToString();
            this.TextBoxEstadoFactura.Text = una_OrdenCompra.estadofactura.NombreEstado;

        }

        
        public ordendecompra  Leer()
        {
            proveedor pro = proveedor.BuscarRegistros_NombreProvee(this.DropDownListProvee.SelectedItem.Text)[0];
            formapago forma = formapago.BuscarRegistros_NombreFormaPago(this.DropDownListFormaPago.SelectedItem.Text)[0];
            empleado emp = empleado.BuscarRegistros_NombreEmp(this.DropDownListEmplado.SelectedItem.Text)[0];
            creditofactura cre = creditofactura.BuscarRegistros_NombreCredito(this.DropDownListCreditp.SelectedItem.Text)[0];
            estadofactura esta=estadofactura.BuscarRegistros_NombreEstado(this.DropDownListEstadoFactura.SelectedItem.Text)[0];
            return new ordendecompra(int.Parse(this.TextBoxIdOrdenCompra.Text),pro,forma,emp,esta,cre,this.ASPxCalendarFac.SelectedDate,this.CheckBoxCondicion.Checked);

        }
        public static detalleordencompra[] listadetalle;

        public void GuardarOrdenCompra()
        {
            ordendecompra orden = this.Leer();
            ordendecompra.Guardarordendecompra(orden);
            detalleordencompra.GuardarListadetalleOrdenCompra(listadetalle, orden);

          
        }

        public void LlenarAspGridViewOrdenCompra(detalleordencompra [] lista)
        {
            this.ASPxGridViewOrdenCompra.DataSource = lista;
            this.ASPxGridViewOrdenCompra.DataBind();
        }


        public void ActivarOrdenCompra(bool activo)
        {
            this.ASPxMenuOperaciones1.Items[1].ClientEnabled = activo;
            
        }
        public detalleordencompra[] BuscarDetalleOrden(int unIdOrdenCompra)
        {
            return detalleordencompra.BuscarRegistros_idFacOrdenCompra(unIdOrdenCompra);
            
        }

        public void CalculoTotales(detalleordencompra[] detalle)
        {
            float subtotal=detalleordencompra.SubTotal(detalle);
            this.TextBoxSubTotal.Text = subtotal.ToString();
            impuesto imp = impuesto.BuscarRegistros_NombreImpuesto("iva")[0];
            float ivafac = subtotal * imp.ValorImpuesto;
            this.TextBoxIva.Text = ivafac.ToString();
            this.TextBoxTotal.Text = (subtotal + ivafac).ToString();
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
                        this.GuardarOrdenCompra();
                        this.ActivarOrdenCompra(false);
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
                this.LlenarAspGridViewOrdenCompra(listadetalle);
                this.ActivarOrdenCompra(true);
                this.ImageButtonAgregarDetalle.Visible = true;
                this.TextBoxCantidad.Enabled = true;
                this.ButtonBorrarItems.Visible = true;
                
            }

            if (e.Item.Name == "Buscar")
            {
                try
                {

                    this.ConjuntoDropDownList(false);
                    this.ConjuntoTextBox(true);
                    this.TextBoxCantidad.Enabled = false;
                    this.ButtonBorrarItems.Visible = false;
                    this.ImageButtonAgregarDetalle.Visible = false;
                    ordendecompra uma_OrdenCompra = ordendecompra.BuscarRegistros_idFacOrdenCompra(int.Parse(this.TextBoxBuscar.Text))[0];
                    this.Mostrar(uma_OrdenCompra);
                    this.ActivarOrdenCompra(false);
                    detalleordencompra[] detalle = BuscarDetalleOrden(uma_OrdenCompra.idFacOrdenCompra);
                    this.ASPxGridViewOrdenCompra.DataSource = null;
                    this.ASPxGridViewOrdenCompra.DataSource = detalle;
                    this.ASPxGridViewOrdenCompra.DataBind();
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

        protected void TextBoxBuscar_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ButtonBorrarItems_Click(object sender, EventArgs e)
        {

            List<object> keyvalues = this.ASPxGridViewOrdenCompra.GetSelectedFieldValues("idFP");
            if (keyvalues.Count > 0)
            {
                
                listadetalle = this.QuitarDetalles(keyvalues);
                this.LlenarAspGridViewOrdenCompra(listadetalle);
                this.ASPxGridViewOrdenCompra.Selection.UnselectAll();
                this.CalculoTotales(listadetalle);
            }
        }
        public detalleordencompra[] QuitarDetalles(List<object> keyvalues)
        {

            detalleordencompra[] lista = new detalleordencompra[listadetalle.Length - keyvalues.Count];

            for (int i = 0, j = 0, k = 0; i < listadetalle.Length; i++)
            {
                if (k == keyvalues.Count)
                    k = keyvalues.Count - 1;
                if (listadetalle[i].idFP != (int)keyvalues[k])
                {
                    lista[j] = listadetalle[i];
                    lista[j].idFP = j + 1;
                    j++;

                }
                else
                {
                    k++;

                }
            }
            return lista;
        }  
      }

    }
