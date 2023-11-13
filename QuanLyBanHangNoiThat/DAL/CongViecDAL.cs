using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class CongViecDAL
	{
		private DataAccess dataAccess;

		public CongViecDAL(DataAccess dataAccess)
		{
			dataAccess = new DataAccess();
		}
		public DataTable GetListCongViec()
		{
			return dataAccess.ExecuteQuery("Select * from CongViec");
		}
	}
}
