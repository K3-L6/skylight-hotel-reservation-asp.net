using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace DATABASE
{
    public static class room
    {
        static SqlConnection con = new SqlConnection();
        static SqlCommand cmd = new SqlCommand();
        static SqlDataReader rdr;

        static void connectDatabase()
        {
            con.ConnectionString = @"Data Source=K;Initial Catalog=SkylightHotelDatabase;Integrated Security=True";
            cmd.Connection = con;
        }

        public static List<string> GetAvailableRoom(string roomType, List<string> data)
        {
            connectDatabase();
            List<string> entity = new List<string>();

            try
            {
                con.Open();
                cmd.CommandText = "select * from tbl_room where room_status = 'available' and room_type = '" + roomType + "'";
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        entity.Add(rdr[0].ToString());
                    }
                }
                con.Close();
                rdr.Close();
                return entity;
            }
            catch (Exception ex)
            {
                return entity;
                con.Close();
            }
        }

        public static double GetRoomPrice(string roomType)
        {
            connectDatabase();
            double price = 0;
            try
            {
                con.Open();
                cmd.CommandText = "select * from tbl_room where room_type = '" + roomType + "'";
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        price = double.Parse(rdr[3].ToString());

                    }
                }
                con.Close();
                rdr.Close();
                return price;
            }
            catch (Exception ex)
            {
                return -1;
                con.Close();
            }
        }

        public static int GetRoomMaxGuest(string roomType)
        {
            connectDatabase();
            int maxGuest = 0;
            try
            {
                con.Open();
                cmd.CommandText = "select * from tbl_room where room_type = '" + roomType + "'";
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        maxGuest = int.Parse(rdr[4].ToString());
                    }
                }
                con.Close();
                rdr.Close();
                return maxGuest;
            }
            catch (Exception ex)
            {
                return -1;
                con.Close();
            }
        }

        public static double GetRoomExPenalty(string roomType)
        {
            connectDatabase();
            double price = 0;
            try
            {
                con.Open();
                cmd.CommandText = "select * from tbl_room where room_type = '" + roomType + "'";
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        price = double.Parse(rdr[5].ToString());

                    }
                }
                con.Close();
                rdr.Close();
                return price;
            }
            catch (Exception ex)
            {
                return -1;
                con.Close();
            }
        }





    }
}
