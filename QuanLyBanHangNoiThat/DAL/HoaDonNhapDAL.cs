using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	 public class HoaDonNhapDAL
	{
		private DataAccess dataAccess;

		public HoaDonNhapDAL(DataAccess dataAccess)
		{
			dataAccess = new DataAccess();
		}
		public DataTable GetListHoaDonNhap()
		{
			return dataAccess.ExecuteQuery($"Select * from HoaDonNhap");
		}
		public DataTable GetListHoaDonNhap(string SoHDN)
		{
			return dataAccess.ExecuteQuery($"Select * from HoaDonNhap where SoHDN=N'{SoHDN}'");
		}
		public bool InsertHoaDonNhap(string SoHDN, string MaNV, DateTime NgayNhap, string MaNCC, double TongTien)
		{
			try
			{
				dataAccess.ExecuteNonQuery($"INSERT HoaDonNhap(SoHDN, MaNV, NgayNhap, MaNCC, TongTien) " +
				$"VALUES (N'{SoHDN}', N'{MaNV}', {NgayNhap}, {MaNCC}, {TongTien})");
			}
			catch
			{
				return false;
			}
			return true;
		}
		public bool DeleteHoaDonNhap(string SoHDN)
		{
			try
			{
				dataAccess.ExecuteNonQuery($"DELETE HoaDonNhap WHERE SoHDN = N'{SoHDN}'");
			}
			catch
			{
				return false;
			}
			return true;
		}
	}
}
