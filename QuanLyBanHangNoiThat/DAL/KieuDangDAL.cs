using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class KieuDangDAL
	{
		private DataAccess dataAccess;

		public KieuDangDAL(DataAccess dataAccess)
		{
			dataAccess = new DataAccess();
		}
		public DataTable GetListKieuDang()
		{
			return dataAccess.ExecuteQuery("Select * from KieuDang");
		}
	}
}
