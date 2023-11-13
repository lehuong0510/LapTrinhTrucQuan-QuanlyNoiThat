using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class ChiTietDonDatHangDAL
	{
		private DataAccess dataAccess;

		public ChiTietDonDatHangDAL(DataAccess dataAccess)
		{
			dataAccess = new DataAccess();
		}
		public DataTable GetListChiTietDonDatHang()
		{
			return dataAccess.ExecuteQuery($"Select * from ChiTietDDH");
		}
		public DataTable GetListChiTietDOnDatHang(string SoDDH)
		{
			return dataAccess.ExecuteQuery($"Select * from ChiTietDDH where SoDDH=N'{SoDDH}'");
		}
		public bool InsertChiTietDonDatHang(string SoDDH, string MaNoiThat, int SL, double GiamGia, double ThanhTien)
		{
			try
			{
				dataAccess.ExecuteNonQuery($"INSERT ChiTietDDH(SoDDH, MaNoiThat, SL, GiamGia, ThanhTien) " +
				$"VALUES (N'{SoDDH}', N'{MaNoiThat}', {SL}, {GiamGia},{ThanhTien})");
			}
			catch
			{
				return false;
			}
			return true;
		}
		public bool DeleteChiTietDonDatHang(string SoDDH, string MaNoiThat)
		{
			try
			{
				dataAccess.ExecuteNonQuery($"DELETE ChiTietDDH WHERE SoDDH = N'{SoDDH} AND MaNoiThat = N'{MaNoiThat}'");
			}
			catch
			{
				return false;
			}
			return true;
		}
	}
}
