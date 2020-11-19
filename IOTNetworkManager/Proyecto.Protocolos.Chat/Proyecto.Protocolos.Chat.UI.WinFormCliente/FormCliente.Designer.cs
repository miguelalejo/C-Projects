namespace Proyecto.Protocolos.Chat.UI.WinFormCliente
{
    partial class FormCliente
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.timerEscuchando = new System.Windows.Forms.Timer(this.components);
            this.labelName = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.timerCierre = new System.Windows.Forms.Timer(this.components);
            this.buttonDesc = new System.Windows.Forms.Button();
            this.buttonOcultar = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // timerEscuchando
            // 
            this.timerEscuchando.Enabled = true;
            this.timerEscuchando.Tick += new System.EventHandler(this.timerEscuchando_Tick);
            // 
            // labelName
            // 
            this.labelName.AutoSize = true;
            this.labelName.BackColor = System.Drawing.Color.Transparent;
            this.labelName.Font = new System.Drawing.Font("Microsoft Sans Serif", 24F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.labelName.Location = new System.Drawing.Point(52, 44);
            this.labelName.Name = "labelName";
            this.labelName.Size = new System.Drawing.Size(223, 37);
            this.labelName.TabIndex = 0;
            this.labelName.Text = "CONECTADO";
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = global::Proyecto.Protocolos.Chat.UI.WinFormCliente.Properties.Resources.chat;
            this.pictureBox1.Location = new System.Drawing.Point(-1, 1);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(360, 159);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // timerCierre
            // 
            this.timerCierre.Interval = 1000;
            this.timerCierre.Tick += new System.EventHandler(this.timerCierre_Tick);
            // 
            // buttonDesc
            // 
            this.buttonDesc.Location = new System.Drawing.Point(181, 98);
            this.buttonDesc.Name = "buttonDesc";
            this.buttonDesc.Size = new System.Drawing.Size(94, 23);
            this.buttonDesc.TabIndex = 2;
            this.buttonDesc.Text = "Desconectar";
            this.buttonDesc.UseVisualStyleBackColor = true;
            this.buttonDesc.Click += new System.EventHandler(this.buttonDesc_Click);
            // 
            // buttonOcultar
            // 
            this.buttonOcultar.Location = new System.Drawing.Point(59, 98);
            this.buttonOcultar.Name = "buttonOcultar";
            this.buttonOcultar.Size = new System.Drawing.Size(94, 23);
            this.buttonOcultar.TabIndex = 3;
            this.buttonOcultar.Text = "Ocultar";
            this.buttonOcultar.UseVisualStyleBackColor = true;
            this.buttonOcultar.Click += new System.EventHandler(this.buttonOcultar_Click);
            // 
            // FormCliente
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(359, 160);
            this.ControlBox = false;
            this.Controls.Add(this.buttonOcultar);
            this.Controls.Add(this.buttonDesc);
            this.Controls.Add(this.labelName);
            this.Controls.Add(this.pictureBox1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "FormCliente";
            this.Text = "FormCliente";
            this.Load += new System.EventHandler(this.FormCliente_Load);
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.FormCliente_FormClosing);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Timer timerEscuchando;
        private System.Windows.Forms.Label labelName;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Timer timerCierre;
        private System.Windows.Forms.Button buttonDesc;
        private System.Windows.Forms.Button buttonOcultar;
    }
}