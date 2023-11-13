using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class TheLoaiDAL
	{
		private DataAccess dataAccess;

		public TheLoaiDAL(DataAccess dataAccess)
		{
			dataAccess = new DataAccess();
		}
		public DataTable GetListTheLoai()
		{
			return dataAccess.ExecuteQuery("Select * from TheLoai");
		}
	}
}
