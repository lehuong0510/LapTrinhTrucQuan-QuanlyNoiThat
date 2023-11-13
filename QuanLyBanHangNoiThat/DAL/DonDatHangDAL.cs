using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class DonDatHangDAL
	{
		private DataAccess dataAccess;

		public DonDatHangDAL(DataAccess dataAccess)
		{
			dataAccess = new DataAccess();
		}
		public DataTable GetListDonDatHang()
		{
			return dataAccess.ExecuteQuery($"Select * from DonDatHang");
		}
		public DataTable GetListDonDatHang(string SoDDH)
		{
			return dataAccess.ExecuteQuery($"Select * from DonDatHang where SoDDH=N'{SoDDH}'");
		}
		public bool InsertDonDatHang(string SoDDH, string MaNV, string MaKH,DateTime NgayDat, DateTime NgayGiao, double DatCoc, double Thue, double TongTien)
		{
			try
			{
				dataAccess.ExecuteNonQuery($"INSERT DonDatHang(SoDDH, MaNV, MaKH, NgayDat, NgayGiao, DatCoc,Thue,TongTien) " +
				$"VALUES (N'{SoDDH}', N'{MaNV}', N'{MaKH}, N'{NgayDat},N'{NgayGiao}',{DatCoc},{Thue}, {TongTien})");
			}
			catch
			{
				return false;
			}
			return true;
		}
		public bool DeleteDonDatHang(string SoDDH)
		{
			try
			{
				dataAccess.ExecuteNonQuery($"DELETE DonDatHang WHERE SoDDH = N'{SoDDH}'");
			}
			catch
			{
				return false;
			}
			return true;
		}
	}
}
