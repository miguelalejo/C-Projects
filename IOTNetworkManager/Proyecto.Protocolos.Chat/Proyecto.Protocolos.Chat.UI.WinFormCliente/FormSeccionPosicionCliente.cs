using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using Proyecto.Protocolos.Chat.Entidades;

namespace Proyecto.Protocolos.Chat.UI.WinFormCliente
{
    public partial class FormSeccionPosicionCliente : Form
    {
        public FormSeccionPosicionCliente()
        {
            InitializeComponent();
        }

        private void FormSeccionPosicionCliente_Load(object sender, EventArgs e)
        {
            this._posant = this._pos;
        }

        private void groupBox2_Enter(object sender, EventArgs e)
        {

        }
        Posicion _pos;
        Posicion _posant;
        public Posicion pos
        {
            get {
                return this._pos;
            }
            set {
                this.pos = value;
            }
        }
        public void ResetButtons()
        {
            this.buttonFP11.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP12.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP13.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP14.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP21.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP22.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP23.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP24.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP31.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP32.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP33.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP34.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP41.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP42.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP43.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP44.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP51.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP52.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP53.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP54.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP61.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP62.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP63.BackgroundImage = Properties.Resources.bloqueado;
            this.buttonFP64.BackgroundImage = Properties.Resources.bloqueado;
        }

        private void buttonFP11_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(0, 0);
            this.buttonFP11.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP12_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(0, 1);
            this.buttonFP12.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP13_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(0, 2);
            this.buttonFP13.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP14_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(0, 3);
            this.buttonFP14.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP21_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(1, 0);
            this.buttonFP21.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP22_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(1, 1);
            this.buttonFP22.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP23_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(1, 2);
            this.buttonFP23.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP24_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(1, 3);
            this.buttonFP24.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP31_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(2, 0);
            this.buttonFP31.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP32_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(2, 1);
            this.buttonFP32.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP33_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(2, 2);
            this.buttonFP33.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP34_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(2, 3);
            this.buttonFP34.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP41_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(3, 0);
            this.buttonFP41.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP42_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(3, 1);
            this.buttonFP42.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP43_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(3, 2);
            this.buttonFP43.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString(); ;
        }

        private void buttonFP44_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(3, 3);
            this.buttonFP44.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP51_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(4, 0);
            this.buttonFP51.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP52_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(4, 1);
            this.buttonFP52.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP53_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(4, 2);
            this.buttonFP53.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP54_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(4, 3);
            this.buttonFP54.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP61_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(5, 0);
            this.buttonFP61.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP62_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(5, 1);
            this.buttonFP62.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP63_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(5, 2);
            this.buttonFP63.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonFP64_Click(object sender, EventArgs e)
        {
            this.ResetButtons();
            this._pos = new Posicion(5, 3);
            this.buttonFP64.BackgroundImage = Properties.Resources.computador;
            this.labelFila.Text = (this._pos.X+1).ToString();
            this.labelColumna.Text = (this._pos.Y+1).ToString();
        }

        private void buttonAceptar_Click(object sender, EventArgs e)
        {
            string val=String.Format("La posición acutal del equipo es: FILA {0} COLUMNA {1}, desea continuar?",(this.pos.X+1),(this.pos.Y+1));
            DialogResult meres=MessageBox.Show(val, "INFORMACIÓN", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
            if(meres.ToString().Contains("Yes"))
            {
                this.Close();
            }
           
        }
    }
}
