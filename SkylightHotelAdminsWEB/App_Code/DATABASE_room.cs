using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;

namespace DATABASE
{
    public static class room
    {
        static SqlConnection con = new SqlConnection();
        static SqlCommand cmd = new SqlCommand();
        static SqlDataReader rdr;

        static void connectDatabase()
        {
            con.ConnectionString = "Data Source=K;Initial Catalog=SkylightHotelDatabase;Integrated Security=True";
            cmd.Connection = con;
        }

        public static void addRoom(string roomNumber, string roomType)
        {
            connectDatabase();
            List<string> data = getRoomPrices(roomType);
            try
            {
                con.Open();
                cmd.CommandText = @"insert into tbl_room(room_number, room_type, room_status, room_price, room_maxGuest, room_exPenalty)
                values('"+roomNumber+"', '"+roomType+"', 'available', '"+data[0]+ "', '" + data[1] + "', '" + data[2] + "')";
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                con.Close();
            }
        }

        public static void deleteRoom(string roomNumber)
        {
            connectDatabase();
            try
            {
                con.Open();
                cmd.CommandText = "delete from tbl_room where room_number = '"+roomNumber+"'";
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                con.Close();
            }
        }


        public static List<string> GetAvailableRoom(string roomType)
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


        public static List<string> getRoomInfo(string roomNumber)
        {
            List<string> data = new List<string>();
            data.Clear();
            connectDatabase();
            try
            {
                con.Open();
                cmd.CommandText = "select * from tbl_room where room_number = '"+roomNumber+"'";
                rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    for (int x = 0; x <= 5; x++)
                    {
                        data.Add(rdr[x].ToString());
                    }
                }
                con.Close();
                rdr.Close();
            }
            catch (Exception ex)
            {
                con.Close();
                rdr.Close();
            }
            return data;
        }

        public static List<string> getRoomPrices(string roomType)
        {
            List<string> data = new List<string>();
            data.Clear();
            connectDatabase();
            try
            {
                con.Open();
                cmd.CommandText = "select * from tbl_room where room_type = '" + roomType + "'";
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        data.Add(rdr[3].ToString());
                        data.Add(rdr[4].ToString());
                        data.Add(rdr[5].ToString());
                    }
                }
                
                con.Close();
                rdr.Close();
            }
            catch (Exception ex)
            {
                con.Close();
                rdr.Close();
            }
            return data;
        }

        public static void updateRoomPrices(string roomType, List<string> data)
        {
            
            connectDatabase();
            try
            {
                con.Open();
                cmd.CommandText = "update tbl_room set room_price = '"+data[0]+"', room_maxGuest = '"+data[1]+"', room_exPenalty = '"+data[2]+"' where room_type = '"+roomType+"'";
                cmd.ExecuteNonQuery();   
                con.Close();
            }
            catch (Exception ex)
            {
                con.Close();
            }
        }


      


    }
}
