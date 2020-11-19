using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Configuration;
using System.Net.Configuration;
using System.Net;

namespace Proyecto.Protocolos.Chat.UI.WinFormCliente
{
    public partial class FormPropiedades : Form
    {
        public FormPropiedades()
        {
            InitializeComponent();
        }

        private void textBoxIpAddress_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {
        }

        private void textBoxIpAddress_KeyPress(object sender, KeyPressEventArgs e)
        {
             
        }

        private void textBoxIpAddress_TextChanged(object sender, EventArgs e)
        {

        }

        private void textBoxIpAddress_KeyDown(object sender, KeyEventArgs e)
        {
        }
        IPAddress ipAddress;
        public IPAddress IpAddress
        {
            get {
                return this.ipAddress;
            }
            set {
                this.ipAddress = value;
            }
        }
        IPAddress ipAddressServidor;
        public IPAddress IpAddressServidor
        {
            get
            {
                return this.ipAddressServidor;
            }
            set
            {
                this.ipAddressServidor = value;
            }
        }
        private void FormPropiedades_Load(object sender, EventArgs e)
        {
            IPHostEntry entry = Dns.GetHostByName(Dns.GetHostName().ToString());
            this.LlenarCombo(entry.AddressList);
            Configuration cn = ConfigurationManager.OpenExeConfiguration(ConfigurationUserLevel.None);
            this.LlenarIpservidor();
            this.LlenarIpcliente();
            this.numericUpDownPuerto.Value=int.Parse(ConfigurationManager.AppSettings.Get("PuertoIngreso"));            


        }
        public int[] StringtoIpequipo(string ipequipo)
        {
            string[] listaip = ipequipo.Split('.');
            int[] ip = new int[listaip.Length];
            for (int i = 0; i < ip.Length; i++)
            {
                ip[i] = int.Parse(listaip[i]);
            }
            return ip;
        }
        public void LlenarIpcliente()
        {
            int[] ip = this.StringtoIpequipo(ConfigurationManager.AppSettings.Get("IpCliente"));
            this.numericUpDownIP1.Value = ip[0];
            this.numericUpDownIP2.Value = ip[1];
            this.numericUpDownIP3.Value = ip[2];
            this.numericUpDownIP4.Value = ip[3];
        }
        public void LlenarIpservidor()
        {
            int[] ipserv = this.StringtoIpequipo(ConfigurationManager.AppSettings.Get("IPServidor"));
            this.numericUpDownIPser1.Value = ipserv[0];
            this.numericUpDownIPser2.Value = ipserv[1];
            this.numericUpDownIPser3.Value = ipserv[2];
            this.numericUpDownIPser4.Value = ipserv[3];
        }
        public void LlenarCombo(IPAddress[] lista)
        {
            this.comboBoxIp.Items.Clear();
            for (int i = 0; i < lista.Length; i++)
            {
                this.comboBoxIp.Items.Add(lista[i].ToString());
            }
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void buttonModificar_Click(object sender, EventArgs e)
        {
            DialogResult result= MessageBox.Show("Esta seguro de realizar esta operación", "INFORMACIÓN", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation);
            if (result.ToString().Contains("Yes"))
            {
                string ipservidor=this.LeerIpServidor();
                string ipcliente = this.LeerIpCliente();
                ConfiguracionEquipo.ConfigurarRegistro("IpServidor", ipservidor);
                if (this.comboBoxIp.Text != "")
                {
                    ConfiguracionEquipo.ConfigurarRegistro("IpCliente", this.LeerIpCliente());
                }
                ConfiguracionEquipo.ConfigurarRegistro("PuertoIngreso", this.numericUpDownPuerto.Value.ToString());
                this.ipAddress = Dns.GetHostAddresses(ipcliente)[0];
                this.ipAddressServidor = Dns.GetHostAddresses(ipservidor)[0];
                this.Close();
            }
        }
        public string LeerIpServidor()
        {
            string val=string.Format("{0}.{1}.{2}.{3}",this.numericUpDownIPser1.Value,this.numericUpDownIPser2.Value,this.numericUpDownIPser3.Value ,this.numericUpDownIPser4.Value );
            return val;
        }
        public string LeerIpCliente()
        {
            return this.comboBoxIp.Text;
        }
    }
}
