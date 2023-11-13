using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class NhanVienDAL
	{
		private DataAccess dataAccess;
		public NhanVienDAL()
		{
			dataAccess= new DataAccess();
		}
		public DataTable GetListNhanVien(string tenNV = "")
		{
			return dataAccess.ExecuteQuery($"select * from NhanVien WHERE TenNV LIKE N'%{tenNV}%'");
		}

		public bool InsertNhanVien(string MaNV, string TenNV, string GioiTinh,DateTime NgaySinh, string SDT,string DiaChi,string MaCa, string MaCV)
		{
			try
			{
				dataAccess.ExecuteNonQuery($"INSERT NhanVien (MaNV,TenNV,GioiTinh,NgaySinh,SDT,DiaChi,MaCa,MaCV) " +
				$"VALUES (N'{MaNV}', N'{TenNV}', N'{GioiTinh}',N'{NgaySinh}', N'{SDT}', N'{DiaChi}', N'{MaCa}', N'{MaCV}')");
			}
			catch
			{
				return false;
			}
			return true;
		}
		public bool UpdateNhanVien(string MaNV, string TenNV, string GioiTinh, DateTime NgaySinh, string SDT, string DiaChi, string MaCa, string MaCV)
		{
			try
			{
				dataAccess.ExecuteNonQuery($"UPDATE NhanVien SET TenNV = N'{TenNV}', GioiTinh = N'{GioiTinh}',NgaySinh = N'{NgaySinh}', SDT = N'{SDT}'," +
				$" DiaChi = N'{DiaChi}', MaCa = N'{MaCa}', MaCV = N'{MaCV}', WHERE MaNV = N'{MaNV}'");
			}
			catch
			{
				return false;
			}
			return true;
		}
		public bool DeleteNhanVien(string MaNV)
		{
			return dataAccess.ExecuteNonQuery($"DELETE NhanVien WHERE MaNV = N'{MaNV}'") > 0;
		}
	}
}
