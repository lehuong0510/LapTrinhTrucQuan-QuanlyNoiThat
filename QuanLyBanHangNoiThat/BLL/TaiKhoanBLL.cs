using DAL;
using DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
	public class TaiKhoanBLL
	{
		private TaiKhoanDAL taiKhoanDAL;
		public TaiKhoanBLL()
		{
			taiKhoanDAL = new TaiKhoanDAL();
		}
		public bool DangNhap(string tenTK, string matKhau)
		{
			return taiKhoanDAL.DangNhap(tenTK,matKhau).Rows.Count > 0;
		}
		public TaiKhoanDTO GetAccountByUserName(string tenTK)
		{
			DataTable result = taiKhoanDAL.GetAccountByUserName(tenTK);
			if (result.Rows.Count <= 0)
			{
				return null;
			}
			return new TaiKhoanDTO(result.Rows[0]);
		}
		public List<TaiKhoanDTO> GetListTK()
		{
			List<TaiKhoanDTO> list = new List<TaiKhoanDTO>();
			DataTable data = taiKhoanDAL.GetListTK();
			foreach (DataRow item in data.Rows)
			{
				list.Add(new TaiKhoanDTO(item));
			}

			return list;
		}
		public bool InsertTK(string tenTK, string matKhau, string tenHienThi, int phanQuyen)
		{
			return taiKhoanDAL.InsertTK(tenTK,  matKhau, tenHienThi,  phanQuyen);
		}
		public bool UpdateTK(string tenTK, string matKhau, string tenHienThi, int phanQuyen)
		{
			return taiKhoanDAL.UpdateTK(tenTK, matKhau, tenHienThi, phanQuyen);
		}
		public bool DeleteTK(string tenTK)
		{
			return taiKhoanDAL.DeleteTK(tenTK);
		}
	}
}
