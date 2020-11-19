using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace DISCO
{
    public partial class FormaInformacionDetalladaDeDisco : Form
    {
        public FormaInformacionDetalladaDeDisco()
        {
            InitializeComponent();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            Form1 frm = new Form1();
            frm.ShowDialog();
        }

        private void FormaInformacionDetalladaDeDisco_Load(object sender, EventArgs e)
        {
            ClaseDiscoDuro[] lista = new ClaseDiscoDuro[3];
            lista[0] = new ClaseDiscoDuro("C:", "Datos", 10000, 2000, 12000);
            lista[1] = new ClaseDiscoDuro("D:", "Datos", 20000, 100, 20100);
            lista[2] = new ClaseDiscoDuro("E:", "Datos", 100000, 2000, 120000);
            this.BindingSource.DataSource = lista;
            this.reportViewer1.RefreshReport();

        }
    }
}
