using System;
using System.Drawing;
using System.Collections;
using System.ComponentModel;
using System.Windows.Forms;
using System.Data;
using System.Data.Odbc;

namespace Camlibel.Mapping
{
	/// <summary>
	/// Summary description for Form1.
	/// </summary>
	public class Form1 : System.Windows.Forms.Form
	{
		private System.Windows.Forms.GroupBox groupBox1;
		private System.Windows.Forms.RadioButton radioData;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.TextBox txtDSN;
		private System.Windows.Forms.TreeView treeTables;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.TextBox txtnameSpace;
		private System.Windows.Forms.Button btnGenerate;
		private System.Windows.Forms.Button btnGetTables;
		private bool isGetTable=false;
		private TreeNode root;
		private System.Windows.Forms.Label label3;
		private System.Windows.Forms.Label label4;
		private System.Windows.Forms.TextBox txtLocation;
        private Label label5;
        private ComboBox comboBox1;
        private Button button1;
        private Button button2;
		/// <summary>
		/// Required designer variable.
		/// </summary>
		private System.ComponentModel.Container components = null;

		public Form1()
		{
			//
			// Required for Windows Form Designer support
			//
			InitializeComponent();
			
			//
			// TODO: Add any constructor code after InitializeComponent call
			//
		}

		/// <summary>
		/// Clean up any resources being used.
		/// </summary>
		protected override void Dispose( bool disposing )
		{
			if( disposing )
			{
				if (components != null) 
				{
					components.Dispose();
				}
			}
			base.Dispose( disposing );
		}

		#region Windows Form Designer generated code
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{
            this.txtnameSpace = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.radioData = new System.Windows.Forms.RadioButton();
            this.btnGetTables = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.treeTables = new System.Windows.Forms.TreeView();
            this.btnGenerate = new System.Windows.Forms.Button();
            this.txtDSN = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtLocation = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.comboBox1 = new System.Windows.Forms.ComboBox();
            this.button1 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // txtnameSpace
            // 
            this.txtnameSpace.Location = new System.Drawing.Point(384, 112);
            this.txtnameSpace.Name = "txtnameSpace";
            this.txtnameSpace.Size = new System.Drawing.Size(100, 20);
            this.txtnameSpace.TabIndex = 7;
            this.txtnameSpace.Text = "Chat";
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.radioData);
            this.groupBox1.Location = new System.Drawing.Point(320, 8);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(152, 56);
            this.groupBox1.TabIndex = 2;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "DataBase Access";
            // 
            // radioData
            // 
            this.radioData.Checked = true;
            this.radioData.Location = new System.Drawing.Point(16, 24);
            this.radioData.Name = "radioData";
            this.radioData.Size = new System.Drawing.Size(104, 24);
            this.radioData.TabIndex = 2;
            this.radioData.TabStop = true;
            this.radioData.Text = "Odbc";
            // 
            // btnGetTables
            // 
            this.btnGetTables.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnGetTables.Location = new System.Drawing.Point(200, 8);
            this.btnGetTables.Name = "btnGetTables";
            this.btnGetTables.Size = new System.Drawing.Size(112, 23);
            this.btnGetTables.TabIndex = 0;
            this.btnGetTables.Text = "Mostrar Tablas";
            this.btnGetTables.Click += new System.EventHandler(this.btnGetTables_Click);
            // 
            // label1
            // 
            this.label1.Location = new System.Drawing.Point(288, 72);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(100, 23);
            this.label1.TabIndex = 3;
            this.label1.Text = "DSN Name";
            // 
            // label2
            // 
            this.label2.Location = new System.Drawing.Point(288, 112);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(100, 23);
            this.label2.TabIndex = 6;
            this.label2.Text = "Namespace";
            // 
            // label3
            // 
            this.label3.Location = new System.Drawing.Point(232, 224);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(240, 23);
            this.label3.TabIndex = 10;
            this.label3.Text = "It generates C# Class Files For All Tables";
            // 
            // treeTables
            // 
            this.treeTables.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.treeTables.Location = new System.Drawing.Point(8, 8);
            this.treeTables.Name = "treeTables";
            this.treeTables.Size = new System.Drawing.Size(176, 362);
            this.treeTables.TabIndex = 5;
            // 
            // btnGenerate
            // 
            this.btnGenerate.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btnGenerate.Location = new System.Drawing.Point(240, 256);
            this.btnGenerate.Name = "btnGenerate";
            this.btnGenerate.Size = new System.Drawing.Size(208, 23);
            this.btnGenerate.TabIndex = 9;
            this.btnGenerate.Text = "Generate C# Archivos Clases";
            this.btnGenerate.Click += new System.EventHandler(this.btnGenerate_Click);
            // 
            // txtDSN
            // 
            this.txtDSN.Location = new System.Drawing.Point(384, 72);
            this.txtDSN.Name = "txtDSN";
            this.txtDSN.Size = new System.Drawing.Size(100, 20);
            this.txtDSN.TabIndex = 4;
            this.txtDSN.Text = "baseadminlab";
            // 
            // label4
            // 
            this.label4.Location = new System.Drawing.Point(288, 160);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(88, 23);
            this.label4.TabIndex = 11;
            this.label4.Text = "File Location";
            // 
            // txtLocation
            // 
            this.txtLocation.Location = new System.Drawing.Point(384, 160);
            this.txtLocation.Name = "txtLocation";
            this.txtLocation.Size = new System.Drawing.Size(100, 20);
            this.txtLocation.TabIndex = 12;
            this.txtLocation.Text = "C:\\ApliacioneProyect\\";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(288, 196);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(75, 13);
            this.label5.TabIndex = 13;
            this.label5.Text = "Tipo Conexión";
            // 
            // comboBox1
            // 
            this.comboBox1.FormattingEnabled = true;
            this.comboBox1.Items.AddRange(new object[] {
            "Odbc",
            "OleDb",
            "Sql",
            "Oracle",
            "MySql"});
            this.comboBox1.Location = new System.Drawing.Point(384, 187);
            this.comboBox1.Name = "comboBox1";
            this.comboBox1.Size = new System.Drawing.Size(100, 21);
            this.comboBox1.TabIndex = 14;
            this.comboBox1.Text = "Seleccione:";
            // 
            // button1
            // 
            this.button1.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.button1.Location = new System.Drawing.Point(240, 300);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(208, 23);
            this.button1.TabIndex = 15;
            this.button1.Text = "Generate C# Archivos Base Clases";
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // button2
            // 
            this.button2.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.button2.Location = new System.Drawing.Point(240, 342);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(208, 23);
            this.button2.TabIndex = 16;
            this.button2.Text = "Generate Procedimientos Almacenados";
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // Form1
            // 
            this.AutoScaleBaseSize = new System.Drawing.Size(5, 13);
            this.ClientSize = new System.Drawing.Size(504, 383);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.comboBox1);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.txtLocation);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.btnGenerate);
            this.Controls.Add(this.txtnameSpace);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.treeTables);
            this.Controls.Add(this.txtDSN);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.btnGetTables);
            this.Name = "Form1";
            this.Text = "Form1";
            this.groupBox1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

		}
		#endregion

		/// <summary>
		/// The main entry point for the application.
		/// </summary>
		[STAThread]
		static void Main() 
		{
			Application.Run(new Form1());
		}

		private void button1_Click(object sender, System.EventArgs e)
		{
//			Mapping  ma= new Mapping();
//			ma.CreateCs(ma.GetFields("Assets"),"Camlibel.HelpDesk","Assets");
	//		dataGrid1.SetDataBinding(ma.GetDataSet(),"database");
			

		}
		private void prepareTableView()
		{
			treeTables.Nodes.Clear();
			Mapping  map= new Mapping(txtDSN.Text);
			root = new TreeNode("Tables");
			TreeNode newNode;
 
			treeTables.Nodes.Add(root);

			OdbcDataReader reader=map.GetTables();

			while(reader.Read())
			{
				newNode = new TreeNode(reader.GetString(0));
				root.Nodes.Add(newNode);
			}
			root.ExpandAll();
			reader.Close();
		}

		private void treeDataBase_AfterSelect(object sender, System.Windows.Forms.TreeViewEventArgs e)
		{

		}

		private void btnGenerate_Click(object sender, System.EventArgs e)
		{
            if (this.tablasactvias)
            {
                if (this.comboBox1.Text != "Seleccione:")
                {
                    if (isGetTable == false)
                    {
                        MessageBox.Show("First Get Tables ,then try it");
                    }
                    Mapping map = new Mapping(txtDSN.Text);
                    int Count = 0;
                    DataTable[] tablacampos;
                    tablacampos = map.TablaCampos(txtDSN.Text);
                     foreach (TreeNode tn in root.Nodes)
                    {

                        map.CreateCsNueva(txtLocation.Text, tablacampos[Count], txtnameSpace.Text, tn.Text);
                        Count++;
                    }
                    MessageBox.Show("Nmuero de Clases Generadas = " + Count + " C# ");
                }
                else
                {
                    MessageBox.Show("Porfavor seleccione un tipo de conexion con la base");
                }
            }
            else
            {
                MessageBox.Show("Porfavor muestre las Tablas");
            }
			
		}
        bool tablasactvias;
		private void btnGetTables_Click(object sender, System.EventArgs e)
		{
			prepareTableView();
			isGetTable=true;
            this.tablasactvias = true;
		}

        private void button1_Click_1(object sender, EventArgs e)
        {
            if (this.tablasactvias)
            {
                if (this.comboBox1.Text != "Seleccione:")
                {
                    if (isGetTable == false)
                    {
                        MessageBox.Show("First Get Tables ,then try it");
                    }
                    Mapping map = new Mapping(txtDSN.Text);
                    int Count = 0;
                    DataTable[] tablacampos;
                    tablacampos = map.TablaCampos(txtDSN.Text);
                    map.CrearClaseReferenciaBase(txtLocation.Text, txtnameSpace.Text, this.comboBox1.Text);
                    foreach (TreeNode tn in root.Nodes)
                    {

                        map.CreateBaseCsNueva(txtLocation.Text, tablacampos[Count], txtnameSpace.Text, tn.Text, this.comboBox1.Text);
                        Count++;
                    }
                    MessageBox.Show("Nmuero de Clases Generadas = " + Count + " C# ");
                }
                else
                {
                    MessageBox.Show("Porfavor seleccione un tipo de conexion con la base");
                }
            }
            else
            {
                MessageBox.Show("Porfavor muestre las Tablas");
            }

        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (this.tablasactvias)
            {
                if (this.comboBox1.Text != "Seleccione:")
                {
                    if (isGetTable == false)
                    {
                        MessageBox.Show("First Get Tables ,then try it");
                    }
                    Mapping map = new Mapping(txtDSN.Text);
                    int Count = 0;
                    DataTable[] tablacampos;
                    tablacampos = map.TablaCampos(txtDSN.Text);
                    foreach (TreeNode tn in root.Nodes)
                    {
                        map.CreateProcedimientosBase(txtLocation.Text, tablacampos[Count], txtnameSpace.Text, tn.Text, this.comboBox1.Text);
                        Count++;
                    }
                    MessageBox.Show("Numero de Procedimientos[Guardar,Modificar,ELiminar] = " + 3*Count + " ");
                }
                else
                {
                    MessageBox.Show("Porfavor seleccione un tipo de conexion con la base");
                }
            }
            else
            {
                MessageBox.Show("Porfavor muestre las Tablas");
            }

        }

		
		
	}
}
