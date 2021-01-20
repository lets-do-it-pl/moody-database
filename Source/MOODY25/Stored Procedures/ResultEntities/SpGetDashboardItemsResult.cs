using System;
using System.Data.SqlClient;
using System.Collections;
using System.Data;

namespace MOODY25.Stored_Procedures.ResultEntities
{
    public class SpGetDashboardItemsResult
    {
        public int CategoryTotalNumber { get; set; }
        public int CategoryDetailTotalNumber { get; set; }
        public int ClientTotalNumber { get; set; }
        public int AverageDailyUserTotalNumber { get; set; }
    }
}
