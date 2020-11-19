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
    public partial class WebUserControlProducto : System.Web.UI.UserControl
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
                this.MostarDrops(true);
                this.MostrarTexBox(false);
            }
            if (e.Item.Name == "Guardar")
            {
                producto.Guardarproducto(this.Leer());
                this.MostarDrops(false);
                this.MostrarTexBox(true);
                this.ActivarG(false);
                this.ActivaModfE(false);


            }
            if (e.Item.Name == "Modificar")
            {
                producto.Modificarproducto(this.Leer());
                this.MostarDrops(false);
                this.MostrarTexBox(true);
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Eliminar")
            {
                producto.Eliminarproducto(producto.BuscarRegistros_idTipProd(int.Parse(this.txtCodPro.Text))[0]);
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Buscar")
            {
                this.Mostrar(producto.BuscarRegistros_idProducto(int.Parse(this.TextBoxBuscar.Text))[0]);
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
            this.txtCodPro.Text = "";
            this.txtnombrepro.Text = "";
            this.txtprecio.Text = "";
            this.txtStock.Text = "";
            this.txtBoxDescrip.Text = "";
            this.CheckBoxDescuento.Checked = false;
            this.CheckBoxImpuesto.Checked = false;

        }
        public producto Leer()
        {

            int codmod = int.Parse(this.DropDownListModel.SelectedItem.Value);
            modelo m = modelo.BuscarRegistros_idModelo(codmod)[0];
            int codtipo = int.Parse(this.DropDownListTipoProd.SelectedItem.Value);
            tipoproducto tp = tipoproducto.BuscarRegistros_idTipProd(codtipo)[0];
            int codmat = int.Parse(this.DropDownListMater.SelectedItem.Value);
            material mat = material.BuscarRegistros_idMaterial(codmat)[0];
            int codprov = int.Parse(this.DropDownProvee.SelectedItem.Value);
            proveedor pro = proveedor.BuscarRegistros_idProveedor(codprov)[0];

            return new producto(int.Parse(this.txtCodPro.Text), m, tp, pro, mat, this.txtnombrepro.Text, int.Parse(this.txtStock.Text), float.Parse(this.txtprecio.Text), this.txtBoxDescrip.Text);
        }
        public void Mostrar(producto un_producto)
        {

            this.txtCodPro.Text = un_producto.idProducto.ToString();
            this.txtnombrepro.Text = un_producto.NombreProducto;
            this.txtprecio.Text = un_producto.Precio.ToString();
            this.txtBoxDescrip.Text = un_producto.Descripcion;
            this.TextBoxMaterial.Text = un_producto.material.NombreMaterial;
            this.TextBoxModelo.Text = un_producto.modelo.NombreModelo;
            this.TextBoxProveedor.Text = un_producto.proveedor.NombreProvee;
            this.TextBoxTipo.Text = un_producto.tipoproducto.NombreTipProd;
            this.txtStock.Text = un_producto.Stock.ToString();
        }
        public void MostarDrops(bool valor)
        {
            this.DropDownListMater.Visible = valor;
            this.DropDownListModel.Visible = valor;
            this.DropDownListTipoProd.Visible = valor;
            this.DropDownProvee.Visible = valor;
        }
        public void MostrarTexBox(bool valor)
        {
            this.TextBoxMaterial.Visible = valor;
            this.TextBoxModelo.Visible = valor;
            this.TextBoxProveedor.Visible = valor;
            this.TextBoxTipo.Visible = valor;

        }        
    }
}