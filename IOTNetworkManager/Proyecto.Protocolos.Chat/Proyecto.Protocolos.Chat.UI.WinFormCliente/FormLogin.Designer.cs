namespace Proyecto.Protocolos.Chat.UI.WinFormCliente
{
    partial class FormLogin
    {
        /// <summary>
        /// Variable del diseñador requerida.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén utilizando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben eliminar; false en caso contrario, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido del método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FormLogin));
            this.textBoxUsuario = new System.Windows.Forms.TextBox();
            this.textBoxContraseña = new System.Windows.Forms.TextBox();
            this.labelUsuario = new System.Windows.Forms.Label();
            this.labelContraseña = new System.Windows.Forms.Label();
            this.buttonIngresar = new System.Windows.Forms.Button();
            this.pictureBox26 = new System.Windows.Forms.PictureBox();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.timerEscuchando = new System.Windows.Forms.Timer(this.components);
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.salirToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.opcionesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.estadoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.notifyIcon1 = new System.Windows.Forms.NotifyIcon(this.components);
            this.buttonSeleccion = new System.Windows.Forms.Button();
            this.buttonPropiedades = new System.Windows.Forms.Button();
            this.labelIp = new System.Windows.Forms.Label();
            this.labelNombreUsuario = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.labelPuerto = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox26)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.contextMenuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // textBoxUsuario
            // 
            this.textBoxUsuario.Location = new System.Drawing.Point(95, 130);
            this.textBoxUsuario.Name = "textBoxUsuario";
            this.textBoxUsuario.Size = new System.Drawing.Size(128, 20);
            this.textBoxUsuario.TabIndex = 1;
            // 
            // textBoxContraseña
            // 
            this.textBoxContraseña.Location = new System.Drawing.Point(95, 166);
            this.textBoxContraseña.Name = "textBoxContraseña";
            this.textBoxContraseña.Size = new System.Drawing.Size(128, 20);
            this.textBoxContraseña.TabIndex = 2;
            this.textBoxContraseña.UseSystemPasswordChar = true;
            // 
            // labelUsuario
            // 
            this.labelUsuario.AutoSize = true;
            this.labelUsuario.Location = new System.Drawing.Point(31, 137);
            this.labelUsuario.Name = "labelUsuario";
            this.labelUsuario.Size = new System.Drawing.Size(46, 13);
            this.labelUsuario.TabIndex = 3;
            this.labelUsuario.Text = "Usuario:";
            // 
            // labelContraseña
            // 
            this.labelContraseña.AutoSize = true;
            this.labelContraseña.Location = new System.Drawing.Point(31, 173);
            this.labelContraseña.Name = "labelContraseña";
            this.labelContraseña.Size = new System.Drawing.Size(64, 13);
            this.labelContraseña.TabIndex = 4;
            this.labelContraseña.Text = "Contraseña:";
            // 
            // buttonIngresar
            // 
            this.buttonIngresar.Location = new System.Drawing.Point(69, 204);
            this.buttonIngresar.Name = "buttonIngresar";
            this.buttonIngresar.Size = new System.Drawing.Size(125, 27);
            this.buttonIngresar.TabIndex = 5;
            this.buttonIngresar.Text = "Conectar";
            this.buttonIngresar.UseVisualStyleBackColor = true;
            this.buttonIngresar.Click += new System.EventHandler(this.buttonIngresar_Click);
            // 
            // pictureBox26
            // 
            this.pictureBox26.Image = global::Proyecto.Protocolos.Chat.UI.WinFormCliente.Properties.Resources.fondo_portada;
            this.pictureBox26.Location = new System.Drawing.Point(251, 75);
            this.pictureBox26.Name = "pictureBox26";
            this.pictureBox26.Size = new System.Drawing.Size(268, 111);
            this.pictureBox26.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox26.TabIndex = 9;
            this.pictureBox26.TabStop = false;
            this.pictureBox26.Click += new System.EventHandler(this.pictureBox26_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackgroundImage = global::Proyecto.Protocolos.Chat.UI.WinFormCliente.Properties.Resources.desbloquear_Windows;
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pictureBox1.Location = new System.Drawing.Point(34, 22);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(189, 102);
            this.pictureBox1.TabIndex = 6;
            this.pictureBox1.TabStop = false;
            // 
            // timerEscuchando
            // 
            this.timerEscuchando.Enabled = true;
            this.timerEscuchando.Tick += new System.EventHandler(this.timerEscuchando_Tick);
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.salirToolStripMenuItem,
            this.opcionesToolStripMenuItem,
            this.estadoToolStripMenuItem});
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(123, 70);
            // 
            // salirToolStripMenuItem
            // 
            this.salirToolStripMenuItem.Name = "salirToolStripMenuItem";
            this.salirToolStripMenuItem.Size = new System.Drawing.Size(122, 22);
            this.salirToolStripMenuItem.Text = "Salir";
            this.salirToolStripMenuItem.Click += new System.EventHandler(this.salirToolStripMenuItem_Click);
            // 
            // opcionesToolStripMenuItem
            // 
            this.opcionesToolStripMenuItem.Name = "opcionesToolStripMenuItem";
            this.opcionesToolStripMenuItem.Size = new System.Drawing.Size(122, 22);
            this.opcionesToolStripMenuItem.Text = "Conectar";
            this.opcionesToolStripMenuItem.Click += new System.EventHandler(this.opcionesToolStripMenuItem_Click);
            // 
            // estadoToolStripMenuItem
            // 
            this.estadoToolStripMenuItem.Name = "estadoToolStripMenuItem";
            this.estadoToolStripMenuItem.Size = new System.Drawing.Size(122, 22);
            this.estadoToolStripMenuItem.Text = "Estado";
            this.estadoToolStripMenuItem.Click += new System.EventHandler(this.estadoToolStripMenuItem_Click);
            // 
            // notifyIcon1
            // 
            this.notifyIcon1.ContextMenuStrip = this.contextMenuStrip1;
            this.notifyIcon1.Icon = ((System.Drawing.Icon)(resources.GetObject("notifyIcon1.Icon")));
            this.notifyIcon1.Text = "notifyIcon1";
            this.notifyIcon1.Visible = true;
            // 
            // buttonSeleccion
            // 
            this.buttonSeleccion.Location = new System.Drawing.Point(251, 204);
            this.buttonSeleccion.Name = "buttonSeleccion";
            this.buttonSeleccion.Size = new System.Drawing.Size(125, 27);
            this.buttonSeleccion.TabIndex = 14;
            this.buttonSeleccion.Text = "Posición Equipo";
            this.buttonSeleccion.UseVisualStyleBackColor = true;
            this.buttonSeleccion.Click += new System.EventHandler(this.buttonSeleccion_Click);
            // 
            // buttonPropiedades
            // 
            this.buttonPropiedades.Location = new System.Drawing.Point(394, 204);
            this.buttonPropiedades.Name = "buttonPropiedades";
            this.buttonPropiedades.Size = new System.Drawing.Size(125, 27);
            this.buttonPropiedades.TabIndex = 15;
            this.buttonPropiedades.Text = "Propiedades";
            this.buttonPropiedades.UseVisualStyleBackColor = true;
            this.buttonPropiedades.Click += new System.EventHandler(this.buttonPropiedades_Click);
            // 
            // labelIp
            // 
            this.labelIp.AutoSize = true;
            this.labelIp.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelIp.Location = new System.Drawing.Point(311, 22);
            this.labelIp.Name = "labelIp";
            this.labelIp.Size = new System.Drawing.Size(44, 25);
            this.labelIp.TabIndex = 17;
            this.labelIp.Text = "(IP)";
            // 
            // labelNombreUsuario
            // 
            this.labelNombreUsuario.AutoSize = true;
            this.labelNombreUsuario.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelNombreUsuario.Location = new System.Drawing.Point(255, 22);
            this.labelNombreUsuario.Name = "labelNombreUsuario";
            this.labelNombreUsuario.Size = new System.Drawing.Size(36, 25);
            this.labelNombreUsuario.TabIndex = 16;
            this.labelNombreUsuario.Text = "IP:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(255, 47);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(75, 25);
            this.label1.TabIndex = 18;
            this.label1.Text = "Puerto:";
            // 
            // labelPuerto
            // 
            this.labelPuerto.AutoSize = true;
            this.labelPuerto.Font = new System.Drawing.Font("Microsoft Sans Serif", 15F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelPuerto.Location = new System.Drawing.Point(332, 47);
            this.labelPuerto.Name = "labelPuerto";
            this.labelPuerto.Size = new System.Drawing.Size(108, 25);
            this.labelPuerto.TabIndex = 19;
            this.labelPuerto.Text = "(PUERTO)";
            // 
            // FormLogin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(565, 247);
            this.Controls.Add(this.labelPuerto);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.labelIp);
            this.Controls.Add(this.labelNombreUsuario);
            this.Controls.Add(this.buttonPropiedades);
            this.Controls.Add(this.buttonSeleccion);
            this.Controls.Add(this.pictureBox26);
            this.Controls.Add(this.labelContraseña);
            this.Controls.Add(this.labelUsuario);
            this.Controls.Add(this.buttonIngresar);
            this.Controls.Add(this.textBoxContraseña);
            this.Controls.Add(this.textBoxUsuario);
            this.Controls.Add(this.pictureBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.Name = "FormLogin";
            this.Text = "Inicio de Sesión";
            this.Load += new System.EventHandler(this.FormLogin_Load);
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FormLogin_FormClosing);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox26)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.contextMenuStrip1.ResumeLayout(false);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.TextBox textBoxUsuario;
        private System.Windows.Forms.TextBox textBoxContraseña;
        private System.Windows.Forms.Label labelUsuario;
        private System.Windows.Forms.Label labelContraseña;
        private System.Windows.Forms.Button buttonIngresar;
        private System.Windows.Forms.PictureBox pictureBox26;
        private System.Windows.Forms.Timer timerEscuchando;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.ToolStripMenuItem salirToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem opcionesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem estadoToolStripMenuItem;
        private System.Windows.Forms.NotifyIcon notifyIcon1;
        private System.Windows.Forms.Button buttonSeleccion;
        private System.Windows.Forms.Button buttonPropiedades;
        private System.Windows.Forms.Label labelIp;
        private System.Windows.Forms.Label labelNombreUsuario;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label labelPuerto;

    }
}

