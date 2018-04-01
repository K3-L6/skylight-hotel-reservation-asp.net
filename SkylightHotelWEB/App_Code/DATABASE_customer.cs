using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Data.SqlClient;

namespace DATABASE
{
    public static class customer
    {
        static SqlConnection con = new SqlConnection();
        static SqlCommand cmd = new SqlCommand();
        static SqlDataReader rdr;

        static void connectDatabase()
        {
            con.ConnectionString = @"Data Source=K;Initial Catalog=SkylightHotelDatabase;Integrated Security=True";
            cmd.Connection = con;
        }

        public static void SaveData(List<string> data)
        {
            connectDatabase();
            try
            {
                con.Open();
                cmd.CommandText = @"insert into tbl_rsvation(rsvation_email, rsvation_name, rsvation_contact, rsvation_guessCount, rsvation_roomBill, rsvation_validationCode, rsvation_fromDate, rsvation_toDate, rsvation_roomType, rsvation_timeArrival)
                values ('"+data[0]+"', '"+data[1]+ "', '" + data[2] + "', '" + data[3] + "', '" + data[4] + "', '" + data[5] + "', '" + data[6] + "', '" + data[7] + "', '" + data[8] + "', '" + data[9] + "')";
                cmd.ExecuteNonQuery();
                con.Close();       
            }
            catch (Exception ex)
            {

            }
        }


    }
}