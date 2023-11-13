using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class MauSacDAL
	{
		private DataAccess dataAccess;

		public MauSacDAL(DataAccess dataAccess)
		{
			dataAccess = new DataAccess();
		}
		public DataTable GetListMauSac()
		{
			return dataAccess.ExecuteQuery("Select * from MauSac");
		}
	}
}
