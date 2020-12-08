namespace GUI
{
    partial class frmTimKiem
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
            this.label1 = new System.Windows.Forms.Label();
            this.txtMaHD = new System.Windows.Forms.TextBox();
            this.btnThoat = new System.Windows.Forms.Button();
            this.btnTimKH = new System.Windows.Forms.Button();
            this.btnTimSP = new System.Windows.Forms.Button();
            this.dgrvTim = new System.Windows.Forms.DataGridView();
            ((System.ComponentModel.ISupportInitialize)(this.dgrvTim)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(690, 97);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(106, 18);
            this.label1.TabIndex = 53;
            this.label1.Text = "Nhập cái gì đó:";
            // 
            // txtMaHD
            // 
            this.txtMaHD.Location = new System.Drawing.Point(855, 95);
            this.txtMaHD.Name = "txtMaHD";
            this.txtMaHD.Size = new System.Drawing.Size(262, 20);
            this.txtMaHD.TabIndex = 52;
            // 
            // btnThoat
            // 
            this.btnThoat.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnThoat.Location = new System.Drawing.Point(1105, 540);
            this.btnThoat.Name = "btnThoat";
            this.btnThoat.Size = new System.Drawing.Size(94, 40);
            this.btnThoat.TabIndex = 51;
            this.btnThoat.Text = "Thoát";
            this.btnThoat.UseVisualStyleBackColor = true;
            this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
            // 
            // btnTimKH
            // 
            this.btnTimKH.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTimKH.Location = new System.Drawing.Point(703, 298);
            this.btnTimKH.Name = "btnTimKH";
            this.btnTimKH.Size = new System.Drawing.Size(188, 40);
            this.btnTimKH.TabIndex = 50;
            this.btnTimKH.Text = "Tìm theo KH";
            this.btnTimKH.UseVisualStyleBackColor = true;
            // 
            // btnTimSP
            // 
            this.btnTimSP.Font = new System.Drawing.Font("Microsoft Sans Serif", 11F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnTimSP.Location = new System.Drawing.Point(703, 230);
            this.btnTimSP.Name = "btnTimSP";
            this.btnTimSP.Size = new System.Drawing.Size(188, 40);
            this.btnTimSP.TabIndex = 49;
            this.btnTimSP.Text = " Tìm theo SP";
            this.btnTimSP.UseVisualStyleBackColor = true;
            // 
            // dgrvTim
            // 
            this.dgrvTim.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgrvTim.Location = new System.Drawing.Point(12, 12);
            this.dgrvTim.Name = "dgrvTim";
            this.dgrvTim.Size = new System.Drawing.Size(651, 568);
            this.dgrvTim.TabIndex = 48;
            // 
            // frmTimKiem
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1210, 593);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtMaHD);
            this.Controls.Add(this.btnThoat);
            this.Controls.Add(this.btnTimKH);
            this.Controls.Add(this.btnTimSP);
            this.Controls.Add(this.dgrvTim);
            this.Name = "frmTimKiem";
            this.Text = "Tìm kiếm";
            ((System.ComponentModel.ISupportInitialize)(this.dgrvTim)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtMaHD;
        private System.Windows.Forms.Button btnThoat;
        private System.Windows.Forms.Button btnTimKH;
        private System.Windows.Forms.Button btnTimSP;
        private System.Windows.Forms.DataGridView dgrvTim;
    }
}