
namespace Skladiste_Racunalnih_Komponenti
{
    partial class GlavniIzbornik
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
            this.btnStanje = new System.Windows.Forms.Button();
            this.btnUnos = new System.Windows.Forms.Button();
            this.btnPregled = new System.Windows.Forms.Button();
            this.btnNabava = new System.Windows.Forms.Button();
            this.btnKarak = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btnStanje
            // 
            this.btnStanje.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnStanje.Location = new System.Drawing.Point(76, 110);
            this.btnStanje.Name = "btnStanje";
            this.btnStanje.Size = new System.Drawing.Size(230, 50);
            this.btnStanje.TabIndex = 1;
            this.btnStanje.Text = "Stanje";
            this.btnStanje.UseVisualStyleBackColor = true;
            this.btnStanje.Click += new System.EventHandler(this.btnStanje_Click);
            // 
            // btnUnos
            // 
            this.btnUnos.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnUnos.Location = new System.Drawing.Point(76, 222);
            this.btnUnos.Name = "btnUnos";
            this.btnUnos.Size = new System.Drawing.Size(230, 50);
            this.btnUnos.TabIndex = 2;
            this.btnUnos.Text = "Unos komponenti";
            this.btnUnos.UseVisualStyleBackColor = true;
            this.btnUnos.Click += new System.EventHandler(this.btnUnos_Click);
            // 
            // btnPregled
            // 
            this.btnPregled.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnPregled.Location = new System.Drawing.Point(76, 334);
            this.btnPregled.Name = "btnPregled";
            this.btnPregled.Size = new System.Drawing.Size(230, 50);
            this.btnPregled.TabIndex = 3;
            this.btnPregled.Text = "Pregled";
            this.btnPregled.UseVisualStyleBackColor = true;
            this.btnPregled.Click += new System.EventHandler(this.btnPregled_Click);
            // 
            // btnNabava
            // 
            this.btnNabava.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnNabava.Location = new System.Drawing.Point(76, 166);
            this.btnNabava.Name = "btnNabava";
            this.btnNabava.Size = new System.Drawing.Size(230, 50);
            this.btnNabava.TabIndex = 4;
            this.btnNabava.Text = "Nabava";
            this.btnNabava.UseVisualStyleBackColor = true;
            this.btnNabava.Click += new System.EventHandler(this.btnNabava_Click);
            // 
            // btnKarak
            // 
            this.btnKarak.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnKarak.Location = new System.Drawing.Point(76, 278);
            this.btnKarak.Name = "btnKarak";
            this.btnKarak.Size = new System.Drawing.Size(230, 50);
            this.btnKarak.TabIndex = 5;
            this.btnKarak.Text = "Unos karakteristika";
            this.btnKarak.UseVisualStyleBackColor = true;
            this.btnKarak.Click += new System.EventHandler(this.btnKarak_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 22.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label1.Location = new System.Drawing.Point(36, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(308, 88);
            this.label1.TabIndex = 6;
            this.label1.Text = "Skladište \r\n         komponenti";
            // 
            // GlavniIzbornik
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(382, 403);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.btnKarak);
            this.Controls.Add(this.btnNabava);
            this.Controls.Add(this.btnPregled);
            this.Controls.Add(this.btnUnos);
            this.Controls.Add(this.btnStanje);
            this.Name = "GlavniIzbornik";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Skladište komponenti";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btnStanje;
        private System.Windows.Forms.Button btnUnos;
        private System.Windows.Forms.Button btnPregled;
        private System.Windows.Forms.Button btnNabava;
        private System.Windows.Forms.Button btnKarak;
        private System.Windows.Forms.Label label1;
    }
}

