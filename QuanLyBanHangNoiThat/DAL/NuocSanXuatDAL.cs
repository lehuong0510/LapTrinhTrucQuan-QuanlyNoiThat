using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class NuocSanXuatDAL
	{
		private DataAccess dataAccess;

		public NuocSanXuatDAL(DataAccess dataAccess)
		{
			dataAccess = new DataAccess();
		}
		public DataTable GetListNuocSanXuat()
		{
			return dataAccess.ExecuteQuery("Select * from NuocSanXuat");
		}
	}
}
