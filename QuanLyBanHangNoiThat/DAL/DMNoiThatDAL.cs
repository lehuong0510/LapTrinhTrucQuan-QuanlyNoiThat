using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class DMNoiThatDAL
	{
		private DataAccess dataAccess;

		public DMNoiThatDAL(DataAccess dataAccess)
		{
			dataAccess = new DataAccess();
		}
		public DataTable GetListDMNoiThat()
		{
			return dataAccess.ExecuteQuery($"Select * from DMNoiThat");
		}
		public DataTable GetListDMNoiThat(string MaNT)
		{
			return dataAccess.ExecuteQuery($"Select * from DMNoiThat where MaNoiThat=N'{MaNT}'");
		}
		public bool InsertDonDatHang(string MaNoiThat, string TenNoiThat,string MaLoai,string MaKieu,string MaMau, string MaChatLieu,string MaNuocSX,int SoLuong,double DonGiaBan, double DonGiaNhap,string Anh,double ThoiGianBaoHanh)
		{
			try
			{
				dataAccess.ExecuteNonQuery($"INSERT DonDatHang(MaNoiThat, TenNoiThat, MaLoai, MaKieu, MaMau, MaChatLieu, MaNuocSX, SoLuong, DonGiaBan,DonGiaNhap,Anh,ThoiGianBaoHanh) " +
				$"VALUES (N'{MaNoiThat}', N'{TenNoiThat}', N'{MaLoai}, N'{MaKieu},N'{MaMau}',N'{MaChatLieu}',N'{MaNuocSX}',{SoLuong},{DonGiaBan},{DonGiaNhap},N'{Anh}', {ThoiGianBaoHanh})");
			}
			catch
			{
				return false;
			}
			return true;
		}
		public bool DeleteDToiThat(string MaNT)
		{
			try
			{
				dataAccess.ExecuteNonQuery($"DELETE DTNoiThat WHERE MaNoiThat = N'{MaNT}'");
			}
			catch
			{
				return false;
			}
			return true;
		}
	}
}
