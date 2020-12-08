using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace DAL
{
    class DAL_SanPham:ConnectDB
    {
        /// <summary>
        /// get all san pham
        /// </summary>
        /// <returns></returns>
        public DataTable getAllSanPham()
        {
            DataTable dtSanPham = new DataTable();
            string spName = "getAllSanPham";
            SqlCommand cmdSanPham = new SqlCommand(spName, conn);
            cmdSanPham.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter sqlda = new SqlDataAdapter(cmdSanPham);
            sqlda.Fill(dtSanPham);
            return dtSanPham;
        }

        public bool insertSanPham(string maSP, string tenSP, string donVi, int donGia, string hinh)
        {
            string spThemSanPham = "insertSanPham";
            SqlCommand cmd = new SqlCommand(spThemSanPham, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@MaSP", maSP));
            cmd.Parameters.Add(new SqlParameter("@TenSP", tenSP));
            cmd.Parameters.Add(new SqlParameter("@DonViTinh", donVi));
            cmd.Parameters.Add(new SqlParameter("@DonGia", donGia));
            cmd.Parameters.Add(new SqlParameter("@Hinh", hinh));

            try
            {
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (SqlException sqlE)
            {
                
                return false;
                throw sqlE;
            }
        }
    }
}
