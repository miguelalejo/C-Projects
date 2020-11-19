using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using InformacionSistema;
using ASOCKETLib;
using Proyecto.Protocolos.Chat.Entidades;

namespace Proyecto.Protocolos.Chat.UI.WinFormServidor
{
    public partial class FormDescripcionBasica : Form
    {
        public FormDescripcionBasica()
        {
            InitializeComponent();
        }
        string _ipequipo;
        public string Ipequipo
        {
            get {
                return this._ipequipo;
            }
            set {
                this._ipequipo = value;
            }
        }
        equipo _equipo;
        public equipo equipo
        {
            get {
                return this._equipo;
            }
            set {
                this._equipo = value;
            }
        }
        ClassConexionSnmp conexion = new ClassConexionSnmp("127.0.0.1");
        private void FormDescripcionBasica_Load(object sender, EventArgs e)
        {

            this.labelDescripcionBasicaSistemaOperativo.Text = this._equipo.Informacionbasica.Opversion;
            this.labelDescripcionBasicaMemoriaRAM.Text = this._equipo.Informacionbasica.Tamañomemoria.ToString();
            this.labelDir.Text = this._equipo.Informacionbasica.Direcotriosistema;
            this.labelDescripcionBasicaProcesador.Text = this._equipo.Informacionbasica.Tipoprocesador;
            this.labelDescripcionBasicaNombreEquipo.Text = this._equipo.Informacionbasica.Nombreusuario;
            this.labelDescripcionBasicaIP.Text = this._equipo.IpCliente;
        }

        private void linkLabelInformacionAvanzada_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            FormInformacion frmInf = new FormInformacion();
            frmInf.Ipequipo = this._equipo.IpCliente;
            frmInf.ShowDialog();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
