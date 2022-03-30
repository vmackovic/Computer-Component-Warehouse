
namespace Skladiste_Racunalnih_Komponenti
{
    partial class NabavaKomponenti
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
            this.dgvNarudzbenica = new System.Windows.Forms.DataGridView();
            this.label5 = new System.Windows.Forms.Label();
            this.dgvNabava = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.btnNaruci = new System.Windows.Forms.Button();
            this.btnDostavljeno = new System.Windows.Forms.Button();
            this.dgvPovijest = new System.Windows.Forms.DataGridView();
            this.label2 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgvNarudzbenica)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvNabava)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPovijest)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvNarudzbenica
            // 
            this.dgvNarudzbenica.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvNarudzbenica.Location = new System.Drawing.Point(17, 273);
            this.dgvNarudzbenica.Name = "dgvNarudzbenica";
            this.dgvNarudzbenica.RowHeadersWidth = 51;
            this.dgvNarudzbenica.RowTemplate.Height = 24;
            this.dgvNarudzbenica.Size = new System.Drawing.Size(824, 169);
            this.dgvNarudzbenica.TabIndex = 15;
            this.dgvNarudzbenica.SelectionChanged += new System.EventHandler(this.dgvNarudzbenica_SelectionChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label5.Location = new System.Drawing.Point(12, 241);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(251, 29);
            this.label5.TabIndex = 14;
            this.label5.Text = "Narudžbenice u tijeku:";
            // 
            // dgvNabava
            // 
            this.dgvNabava.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvNabava.Location = new System.Drawing.Point(17, 41);
            this.dgvNabava.Name = "dgvNabava";
            this.dgvNabava.RowHeadersWidth = 51;
            this.dgvNabava.RowTemplate.Height = 24;
            this.dgvNabava.Size = new System.Drawing.Size(824, 169);
            this.dgvNabava.TabIndex = 13;
            this.dgvNabava.SelectionChanged += new System.EventHandler(this.dgvNabava_SelectionChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label1.Location = new System.Drawing.Point(12, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(134, 29);
            this.label1.TabIndex = 12;
            this.label1.Text = "Za nabaviti:";
            // 
            // btnNaruci
            // 
            this.btnNaruci.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnNaruci.Location = new System.Drawing.Point(847, 41);
            this.btnNaruci.Name = "btnNaruci";
            this.btnNaruci.Size = new System.Drawing.Size(154, 169);
            this.btnNaruci.TabIndex = 16;
            this.btnNaruci.Text = "Naruči";
            this.btnNaruci.UseVisualStyleBackColor = true;
            this.btnNaruci.Click += new System.EventHandler(this.btnNaruci_Click);
            // 
            // btnDostavljeno
            // 
            this.btnDostavljeno.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.btnDostavljeno.Location = new System.Drawing.Point(847, 273);
            this.btnDostavljeno.Name = "btnDostavljeno";
            this.btnDostavljeno.Size = new System.Drawing.Size(154, 169);
            this.btnDostavljeno.TabIndex = 17;
            this.btnDostavljeno.Text = "Dostavljeno";
            this.btnDostavljeno.UseVisualStyleBackColor = true;
            this.btnDostavljeno.Click += new System.EventHandler(this.btnDostavljeno_Click);
            // 
            // dgvPovijest
            // 
            this.dgvPovijest.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPovijest.Location = new System.Drawing.Point(17, 505);
            this.dgvPovijest.Name = "dgvPovijest";
            this.dgvPovijest.RowHeadersWidth = 51;
            this.dgvPovijest.RowTemplate.Height = 24;
            this.dgvPovijest.Size = new System.Drawing.Size(824, 169);
            this.dgvPovijest.TabIndex = 19;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(238)));
            this.label2.Location = new System.Drawing.Point(12, 473);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(202, 29);
            this.label2.TabIndex = 18;
            this.label2.Text = "Povijest narudžbi:";
            // 
            // NabavaKomponenti
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1013, 682);
            this.Controls.Add(this.dgvPovijest);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.btnDostavljeno);
            this.Controls.Add(this.btnNaruci);
            this.Controls.Add(this.dgvNarudzbenica);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.dgvNabava);
            this.Controls.Add(this.label1);
            this.Name = "NabavaKomponenti";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Nabava komponenti";
            this.Load += new System.EventHandler(this.NabavaKomponenti_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvNarudzbenica)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvNabava)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPovijest)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvNarudzbenica;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.DataGridView dgvNabava;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btnNaruci;
        private System.Windows.Forms.Button btnDostavljeno;
        private System.Windows.Forms.DataGridView dgvPovijest;
        private System.Windows.Forms.Label label2;
    }
}