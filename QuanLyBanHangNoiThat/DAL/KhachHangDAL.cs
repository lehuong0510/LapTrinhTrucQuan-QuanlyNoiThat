using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class KhachHangDAL
	{
		private DataAccess dataAccess;
		public KhachHangDAL()
		{
			dataAccess = new DataAccess();
		}
		public DataTable GetListKhachHang(string tenKH = "")
		{
			return dataAccess.ExecuteQuery($"select * from KhachHang WHERE TenKH LIKE N'%{tenKH}%'");
		}

		public bool InsertKhachHang(string MaKH, string TenKH, string DiaChi, string SoDT)
		{
			try
			{
				dataAccess.ExecuteNonQuery($"INSERT NhanVien (MaKH, TenKhach, DiaChi, SoDT) " +
				$"VALUES (N'{MaKH}', N'{TenKH}',  N'{DiaChi}', N'{SoDT}')");
			}
			catch
			{
				return false;
			}
			return true;
		}
		
		public bool DeleteKhachHang(string MaKH)
		{
			return dataAccess.ExecuteNonQuery($"DELETE KhachHang WHERE MaKH = N'{MaKH}'") > 0;
		}
	}
}
