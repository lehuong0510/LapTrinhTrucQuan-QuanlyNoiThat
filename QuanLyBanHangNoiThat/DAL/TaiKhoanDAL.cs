using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class TaiKhoanDAL
	{
		private DataAccess Instance;
		public TaiKhoanDAL()
		{
			Instance = new DataAccess();
		}
		public DataTable DangNhap(string tenTK, string matKhau)
		{
			return Instance.ExecuteQuery($"SELECT * FROM TAIKHOAN WHERE TenTK = N'{tenTK}' AND MatKhau = N'{matKhau}'");
		}
		public DataTable GetAccountByUserName(string tenTK)
		{
			DataTable data = Instance.ExecuteQuery($"SELECT * FROM TAIKHOAN WHERE TenTK = N'{tenTK}'");
			if (data.Rows.Count <= 0)
			{
				return null;
			}
			return data;
		}
		//tra ve thong tin cua tai khoan
		public DataTable GetListTK()
		{
			return Instance.ExecuteQuery($"SELECT * FROM TAIKHOAN");
		}
		public bool InsertTK(string tenTK, string matKhau, string tenHienThi, int phanQuyen)
		{
			try
			{
				Instance.ExecuteNonQuery($"INSERT TAIKHOAN (TenTK, MatKhau, TenHienThi, PhanQuyen)" +
				$"VALUES (N'{tenTK}', N'{matKhau}', N'{tenHienThi}', {phanQuyen})");
			}
			catch
			{
				return false;
			}
			return true;
		}
		public bool UpdateTK(string tenTK, string matKhau, string tenHienThi, int phanQuyen)
		{
			try
			{
				Instance.ExecuteNonQuery($"UPDATE TAIKHOAN SET MatKhau = N'{matKhau}', TenHienThi = N'{tenHienThi}'," +
				$" PhanQuyen = {phanQuyen} WHERE TenTK = N'{tenTK}'");
			}
			catch
			{
				return false;
			}
			return true;
		}
		public bool DeleteTK(string tenTK)
		{
			try
			{
				Instance.ExecuteNonQuery($"DELETE TAIKHOAN WHERE TenTK = N'{tenTK}'");
			}
			catch
			{
				return false;
			}
			return true;
		}
	}
}
