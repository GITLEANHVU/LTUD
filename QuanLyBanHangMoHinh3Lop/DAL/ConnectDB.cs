using System;
using System.Data.SqlClient;

namespace DAL
{
    public class ConnectDB
    {
        public SqlConnection conn = new SqlConnection();

        public ConnectDB()
        {
            string connectionString = "Data Source=LEANHVU\\SQLEXPRESS;Initial Catalog=QuanLyBanHang;Integrated Security=True";
            conn.ConnectionString = connectionString;
            try
            {
                conn.Open();
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
    }
}
