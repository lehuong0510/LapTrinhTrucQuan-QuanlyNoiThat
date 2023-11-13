using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class CaLamDAL
	{
		private DataAccess dataAccess;

		public CaLamDAL(DataAccess dataAccess)
		{
			dataAccess = new DataAccess();
		}
		public DataTable GetListCaLam()
		{
			return dataAccess.ExecuteQuery("Select * from CaLam");
		}
	}
}
