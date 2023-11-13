using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
	public class ChatLieuDAL
	{
		private DataAccess dataAccess;

		public ChatLieuDAL(DataAccess dataAccess)
		{
			dataAccess = new DataAccess();
		}
		public DataTable GetListChatLieu()
		{
			return dataAccess.ExecuteQuery("Select * from ChatLieu");
		}
	}
}
