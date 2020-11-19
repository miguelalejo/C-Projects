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
    public partial class WebUserControlPerfilUsuario : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ASPxMenuOperaciones1_ItemClick(object source, DevExpress.Web.ASPxMenu.MenuItemEventArgs e)
        {
            if (e.Item.Name == "Nuevo")
            {
                this.TextBoxPerfilNombre.Visible = false;
                this.DropDownListPerfil.Visible = true;
                this.txtContraseñaPer.Visible = true;
                this.txtLoginPer.Visible = true;
                this.ResetearText();
                this.ActivarG(true);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Guardar")
            {
                usuarioperfil.Guardarusuarioperfil(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);


            }
            if (e.Item.Name == "Modificar")
            {
                usuarioperfil.Modificarusuarioperfil(this.Leer());
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Eliminar")
            {
                usuarioperfil.Eliminarusuarioperfil(usuarioperfil.BuscarRegistros_idUsuario(int.Parse(this.txtCodigoPer.Text))[0]);
                this.ActivarG(false);
                this.ActivaModfE(false);
            }
            if (e.Item.Name == "Buscar")
            {
                this.TextBoxPerfilNombre.Visible = true;
                this.DropDownListPerfil.Visible = false;
                this.txtContraseñaPer.Visible = false;
                this.txtLoginPer.Visible = false;
                
                usuarioperfil userperf = usuarioperfil.BuscarRegistros_idUsuario(int.Parse(this.txtBuscarPer.Text))[0];
                this.Mostrar(userperf);
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
            this.txtCodigoPer.Text = "";
            this.txtNombrePer.Text = "";
            this.txtApellidoPer.Text = "";
            this.txtDirecPer.Text = "";
            this.txtCedularPer.Text = "";
            this.txtMoviPer.Text = "";
            this.TexTelefPer.Text = "";
            this.txtLoginPer.Text = "";
            this.txtContraseñaPer.Text = "";
            this.TextBoxPerfilNombre.Text = "";
            this.CheckBoxActivoPerf.Checked = false;

        }
        public usuarioperfil Leer()
        {
            perfil per = perfil.BuscarRegistros_idPerfil(int.Parse(this.DropDownListPerfil.SelectedValue))[0];
            return new usuarioperfil(int.Parse(this.txtCodigoPer.Text), per, this.txtNombrePer.Text, this.txtApellidoPer.Text, this.txtDirecPer.Text, this.txtCedularPer.Text, this.txtMoviPer.Text, this.TexTelefPer.Text,this.txtLoginPer.Text,this.txtContraseñaPer.Text, this.CheckBoxActivoPerf.Checked);

        }

        public void Mostrar(usuarioperfil uperfil)
        {
            this.txtCodigoPer.Text = uperfil.idUsuario.ToString();
            this.txtNombrePer.Text = uperfil.NombreUsuario;
            this.txtApellidoPer.Text = uperfil.ApellidoUsuario;
            this.txtDirecPer.Text = uperfil.DireccUsuario;
            this.txtCedularPer.Text = uperfil.Cedula;
            this.txtMoviPer.Text = uperfil.Movil;
            this.TexTelefPer.Text = uperfil.Telefono;
            this.txtLoginPer.Text = uperfil.NombreNick;
            this.txtLoginPer.Text = uperfil.Contraseña;
          
            this.CheckBoxActivoPerf.Checked = uperfil.Activo;
            this.TextBoxPerfilNombre.Text = uperfil.perfil.NombrePerfil;

        }

        protected void txtBuscarPer_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ASPxNavBar1_ItemClick(object source, DevExpress.Web.ASPxNavBar.NavBarItemEventArgs e)
        {

        }      
    }
}