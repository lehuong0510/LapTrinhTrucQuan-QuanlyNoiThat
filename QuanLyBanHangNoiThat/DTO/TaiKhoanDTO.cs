using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DTO
{
	public class TaiKhoanDTO
	{

		private string tenTK ;
		private string tenHienThi;
		private string matKhau;
		private int phanQuyen;

		public string TenTK { get => tenTK; set => tenTK = value; }
		public string TenHienThi { get => tenHienThi; set => tenHienThi = value; }
		public string MatKhau { get => matKhau; set => matKhau = value; }
		public int PhanQuyen { get => phanQuyen; set => phanQuyen = value; }

		
		
		public TaiKhoanDTO(string tenTK, string tenHienThi, string matKhau, int phanQuyen)
		{
			TenTK = tenTK;
			TenHienThi = tenHienThi;
			TenHienThi = matKhau;
			PhanQuyen = phanQuyen;
		}
		public TaiKhoanDTO(DataRow row)
		{
			TenTK = row["TenTK"].ToString();
			MatKhau = row["MatKhau"].ToString();
			TenHienThi = row["TenHienThi"].ToString();
			PhanQuyen = (int)row["PhanQuyen"];
		}

	}
}
