using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;

namespace MOODY25.Stored_Procedures.ResultEntities
{
    public class SpGetDashboardItemsResult
    {
        SqlConnection con = new SqlConnection("Server=(DESKTOP-EGJC5BJ\SQLEXPRESS); DataBase=Northwind;Integrated Security=SSPI");

        public int CategoryTotalNumber { get; set; }
        public int CategoryDetailTotalNumber { get; set; }
        public int ClientTotalNumber { get; set; }
        public int AverageDailyUserTotalNumber { get; set; }
    }
}
