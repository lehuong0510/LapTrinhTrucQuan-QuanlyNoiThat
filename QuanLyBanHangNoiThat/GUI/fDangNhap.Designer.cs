namespace GUI
{
	partial class fDangNhap
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
			this.panel1 = new System.Windows.Forms.Panel();
			this.label1 = new System.Windows.Forms.Label();
			this.panel2 = new System.Windows.Forms.Panel();
			this.picDangNhap = new System.Windows.Forms.PictureBox();
			this.splitter1 = new System.Windows.Forms.Splitter();
			this.grpDangNhap = new System.Windows.Forms.GroupBox();
			this.txtMatKhau = new System.Windows.Forms.TextBox();
			this.txtTaiKhoan = new System.Windows.Forms.TextBox();
			this.btnThoat = new System.Windows.Forms.Button();
			this.btnDangNhap = new System.Windows.Forms.Button();
			this.lblLoi = new System.Windows.Forms.Label();
			this.lblMatKhau = new System.Windows.Forms.Label();
			this.lblTaiKhoan = new System.Windows.Forms.Label();
			this.panel1.SuspendLayout();
			this.panel2.SuspendLayout();
			((System.ComponentModel.ISupportInitialize)(this.picDangNhap)).BeginInit();
			this.grpDangNhap.SuspendLayout();
			this.SuspendLayout();
			// 
			// panel1
			// 
			this.panel1.BackColor = System.Drawing.Color.GhostWhite;
			this.panel1.Controls.Add(this.label1);
			this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
			this.panel1.Location = new System.Drawing.Point(0, 0);
			this.panel1.Name = "panel1";
			this.panel1.Size = new System.Drawing.Size(800, 78);
			this.panel1.TabIndex = 1;
			// 
			// label1
			// 
			this.label1.AutoSize = true;
			this.label1.Font = new System.Drawing.Font("Microsoft Tai Le", 27.75F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.label1.Location = new System.Drawing.Point(284, 9);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(221, 48);
			this.label1.TabIndex = 0;
			this.label1.Text = "Đăng Nhập";
			// 
			// panel2
			// 
			this.panel2.Controls.Add(this.picDangNhap);
			this.panel2.Dock = System.Windows.Forms.DockStyle.Left;
			this.panel2.Location = new System.Drawing.Point(0, 78);
			this.panel2.Name = "panel2";
			this.panel2.Size = new System.Drawing.Size(312, 372);
			this.panel2.TabIndex = 2;
			// 
			// picDangNhap
			// 
			this.picDangNhap.Dock = System.Windows.Forms.DockStyle.Fill;
			this.picDangNhap.Image = global::GUI.Properties.Resources.login;
			this.picDangNhap.Location = new System.Drawing.Point(0, 0);
			this.picDangNhap.Name = "picDangNhap";
			this.picDangNhap.Size = new System.Drawing.Size(312, 372);
			this.picDangNhap.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
			this.picDangNhap.TabIndex = 0;
			this.picDangNhap.TabStop = false;
			// 
			// splitter1
			// 
			this.splitter1.Location = new System.Drawing.Point(312, 78);
			this.splitter1.Name = "splitter1";
			this.splitter1.Size = new System.Drawing.Size(3, 372);
			this.splitter1.TabIndex = 3;
			this.splitter1.TabStop = false;
			// 
			// grpDangNhap
			// 
			this.grpDangNhap.Controls.Add(this.txtMatKhau);
			this.grpDangNhap.Controls.Add(this.txtTaiKhoan);
			this.grpDangNhap.Controls.Add(this.btnThoat);
			this.grpDangNhap.Controls.Add(this.btnDangNhap);
			this.grpDangNhap.Controls.Add(this.lblLoi);
			this.grpDangNhap.Controls.Add(this.lblMatKhau);
			this.grpDangNhap.Controls.Add(this.lblTaiKhoan);
			this.grpDangNhap.Dock = System.Windows.Forms.DockStyle.Fill;
			this.grpDangNhap.Font = new System.Drawing.Font("Microsoft Sans Serif", 15.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.grpDangNhap.Location = new System.Drawing.Point(315, 78);
			this.grpDangNhap.Name = "grpDangNhap";
			this.grpDangNhap.Size = new System.Drawing.Size(485, 372);
			this.grpDangNhap.TabIndex = 4;
			this.grpDangNhap.TabStop = false;
			// 
			// txtMatKhau
			// 
			this.txtMatKhau.Location = new System.Drawing.Point(201, 158);
			this.txtMatKhau.Name = "txtMatKhau";
			this.txtMatKhau.PasswordChar = '*';
			this.txtMatKhau.Size = new System.Drawing.Size(206, 31);
			this.txtMatKhau.TabIndex = 6;
			// 
			// txtTaiKhoan
			// 
			this.txtTaiKhoan.Location = new System.Drawing.Point(201, 75);
			this.txtTaiKhoan.Name = "txtTaiKhoan";
			this.txtTaiKhoan.Size = new System.Drawing.Size(206, 31);
			this.txtTaiKhoan.TabIndex = 5;
			// 
			// btnThoat
			// 
			this.btnThoat.Location = new System.Drawing.Point(278, 294);
			this.btnThoat.Name = "btnThoat";
			this.btnThoat.Size = new System.Drawing.Size(176, 32);
			this.btnThoat.TabIndex = 4;
			this.btnThoat.Text = "Thoát";
			this.btnThoat.UseVisualStyleBackColor = true;
			this.btnThoat.Click += new System.EventHandler(this.btnThoat_Click);
			// 
			// btnDangNhap
			// 
			this.btnDangNhap.Location = new System.Drawing.Point(42, 294);
			this.btnDangNhap.Name = "btnDangNhap";
			this.btnDangNhap.Size = new System.Drawing.Size(181, 32);
			this.btnDangNhap.TabIndex = 3;
			this.btnDangNhap.Text = "Đăng Nhập";
			this.btnDangNhap.UseVisualStyleBackColor = true;
			this.btnDangNhap.Click += new System.EventHandler(this.btnDangNhap_Click);
			// 
			// lblLoi
			// 
			this.lblLoi.AutoSize = true;
			this.lblLoi.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
			this.lblLoi.ForeColor = System.Drawing.Color.Red;
			this.lblLoi.Location = new System.Drawing.Point(183, 232);
			this.lblLoi.Name = "lblLoi";
			this.lblLoi.Size = new System.Drawing.Size(126, 20);
			this.lblLoi.TabIndex = 2;
			this.lblLoi.Text = "Message Error";
			this.lblLoi.Visible = false;
			// 
			// lblMatKhau
			// 
			this.lblMatKhau.AutoSize = true;
			this.lblMatKhau.Location = new System.Drawing.Point(58, 158);
			this.lblMatKhau.Name = "lblMatKhau";
			this.lblMatKhau.Size = new System.Drawing.Size(104, 25);
			this.lblMatKhau.TabIndex = 1;
			this.lblMatKhau.Text = "Mật Khẩu";
			// 
			// lblTaiKhoan
			// 
			this.lblTaiKhoan.AutoSize = true;
			this.lblTaiKhoan.Location = new System.Drawing.Point(58, 81);
			this.lblTaiKhoan.Name = "lblTaiKhoan";
			this.lblTaiKhoan.Size = new System.Drawing.Size(110, 25);
			this.lblTaiKhoan.TabIndex = 0;
			this.lblTaiKhoan.Text = "Tài Khoản";
			// 
			// fDangNhap
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.BackColor = System.Drawing.Color.AliceBlue;
			this.ClientSize = new System.Drawing.Size(800, 450);
			this.Controls.Add(this.grpDangNhap);
			this.Controls.Add(this.splitter1);
			this.Controls.Add(this.panel2);
			this.Controls.Add(this.panel1);
			this.Name = "fDangNhap";
			this.Text = "                                                                                 " +
    "                          Đăng Nhập";
			this.Load += new System.EventHandler(this.fDangNhap_Load);
			this.panel1.ResumeLayout(false);
			this.panel1.PerformLayout();
			this.panel2.ResumeLayout(false);
			((System.ComponentModel.ISupportInitialize)(this.picDangNhap)).EndInit();
			this.grpDangNhap.ResumeLayout(false);
			this.grpDangNhap.PerformLayout();
			this.ResumeLayout(false);

		}

		#endregion
		private System.Windows.Forms.Panel panel1;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.Panel panel2;
		private System.Windows.Forms.PictureBox picDangNhap;
		private System.Windows.Forms.Splitter splitter1;
		private System.Windows.Forms.GroupBox grpDangNhap;
		private System.Windows.Forms.TextBox txtMatKhau;
		private System.Windows.Forms.TextBox txtTaiKhoan;
		private System.Windows.Forms.Button btnThoat;
		private System.Windows.Forms.Button btnDangNhap;
		private System.Windows.Forms.Label lblLoi;
		private System.Windows.Forms.Label lblMatKhau;
		private System.Windows.Forms.Label lblTaiKhoan;
	}
}

