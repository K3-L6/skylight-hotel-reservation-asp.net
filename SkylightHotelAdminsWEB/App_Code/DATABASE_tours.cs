using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DATABASE
{
    public static class tours
    {
        static SqlConnection con = new SqlConnection();
        static SqlCommand cmd = new SqlCommand();
        static SqlDataReader rdr;

        static void connectDatabase()
        {
            con.ConnectionString = "Data Source=K;Initial Catalog=SkylightHotelDatabase;Integrated Security=True";
            cmd.Connection = con;
        }

        public static void updateTourPrice(string id, string price)
        {
            connectDatabase();
            try
            {
                con.Open();
                cmd.CommandText = "update tbl_tours set tours_price = '"+price+"' where tours_id = '"+id+"'";
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                con.Close();
            }
        }

        public static string getTourPrice(string id)
        {
            string price = "";
            connectDatabase();
            try
            {
                con.Open();
                cmd.CommandText = "select * from tbl_tours where tours_id = '"+id+"'";
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        price = rdr[2].ToString();
                    }
                }
                rdr.Close();
                con.Close();
                return price;
            }
            catch (Exception ex)
            {
                rdr.Close();
                con.Close();
                return price;
            }
        }

        


    }
}
