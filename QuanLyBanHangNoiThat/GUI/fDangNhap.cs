using BLL;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace GUI
{
	public partial class fDangNhap : Form
	{
		public fDangNhap()
		{
			InitializeComponent();
		}
		private void fDangNhap_Load(object sender, EventArgs e)
		{
			txtTaiKhoan.Focus();
		}
		private void btnDangNhap_Click(object sender, EventArgs e)
		{
			//string TenDN = txtTaiKhoan.Text;
			//string MatKhau = txtMatKhau.Text;
			//if(DangNhap(TenDN,MatKhau))
			//{
			//	fQuanLy f = new fQuanLy();
			//	this.Hide();
			//	f.ShowDialog();
			//	this.Close();
			//}	
			//else
			//{

			//	lblLoi.Text = "Sai tên tài khoản hoặc mật khẩu!";
			//}	

			if (txtMatKhau.Text == "")
			{
				lblLoi.Text = "Chưa nhập mật khẩu";
				lblLoi.Visible = true;
				txtMatKhau.Focus();
				return;
			}
			if (txtTaiKhoan.Text == "")
			{
				lblLoi.Text = "Chưa nhập tên đăng nhập";
				lblLoi.Visible = true;
				txtTaiKhoan.Focus();
				return;
			}

			TaiKhoanBLL taiKhoanBLL = new TaiKhoanBLL();
			if (!taiKhoanBLL.DangNhap(txtTaiKhoan.Text,txtMatKhau.Text))
			{
				lblLoi.Text = "Sai tên đăng nhập hoặc mật khẩu";
				return;
			}
			fQuanLy f = new fQuanLy(taiKhoanBLL.GetAccountByUserName(txtTaiKhoan.Text));
			this.Hide();
			f.ShowDialog();
		}
	
		private void btnThoat_Click(object sender, EventArgs e)
		{
			if(MessageBox.Show("Bạn có muốn thoát không?", "Thông báo", MessageBoxButtons.YesNo,MessageBoxIcon.Question) == DialogResult.Yes)
			{
				Application.Exit();
			}
			
		}

		
	}
}
