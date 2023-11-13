using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class ChiTietHoaDonNhapDAL
	{
		private DataAccess dataAccess;

		public ChiTietHoaDonNhapDAL(DataAccess dataAccess)
		{
			dataAccess = new DataAccess();
		}
		public DataTable GetListChiTietHoaDonNhap()
		{
			return dataAccess.ExecuteQuery($"Select * from ChiTietHDN");
		}
		public DataTable GetListChiTietHoaDonNhap(string SoHDN)
		{
			return dataAccess.ExecuteQuery($"Select * from ChiTietHDN where SoHDN=N'{SoHDN}'");
		}
		public bool InsertChiTietHoaDonNhap(string SoHDN, string MaNoiThat, int SLN, double DonGia, double GiamGia, double ThanhTien)
		{
			try
			{
				dataAccess.ExecuteNonQuery($"INSERT ChiTietHDN(SoHDN, MaNoiThat, SLN, DonGia, GiamGia, ThanhTien) " +
				$"VALUES (N'{SoHDN}', N'{MaNoiThat}', {SLN}, {DonGia},{GiamGia}, {ThanhTien})");
			}
			catch
			{
				return false;
			}
			return true;
		}
		public bool DeleteChiTietHoaDonNhap(string SoHDN, string MaNoiThat)
		{
			try
			{
				dataAccess.ExecuteNonQuery($"DELETE ChiTietHDN WHERE SoHDN = N'{SoHDN} AND MaNoiThat = N'{MaNoiThat}'");
			}
			catch
			{
				return false;
			}
			return true;
		}
	}
}
