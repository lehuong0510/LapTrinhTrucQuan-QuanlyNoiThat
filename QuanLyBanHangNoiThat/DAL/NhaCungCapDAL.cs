using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class NhaCungCapDAL
	{
		private DataAccess dataAccess;

		public NhaCungCapDAL(DataAccess dataAccess)
		{
			dataAccess = new DataAccess();
		}
		public DataTable GetListNhaCungCap()
		{
			return dataAccess.ExecuteQuery("Select * from NhaCungCap");
		}
	}
}
