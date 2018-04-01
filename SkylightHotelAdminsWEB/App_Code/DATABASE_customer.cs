using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
            con.ConnectionString = "Data Source=K;Initial Catalog=SkylightHotelDatabase;Integrated Security=True";
            cmd.Connection = con;
        }

        
            //delete reserve
            public static void delete(string email)
            {
                connectDatabase();
                try
                {
                    con.Open();
                    cmd.CommandText = "delete from tbl_rsvation where rsvation_email = '" + email + "'";
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
                catch (Exception ex)
                {
                    con.Close();
                }
            }

        public static void deleteF(string email)
        {
            connectDatabase();
            try
            {
                con.Open();
                cmd.CommandText = "delete from tbl_rsvationF where rsvationF_email = '" + email + "'";
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                con.Close();
            }
        }

        //get all info into a collection of list with the email as a primary key
        public static List<string> getAllInfo(string email)
            {
                List<string> data = new List<string>();
                connectDatabase();
                try
                {
                    con.Open();
                    cmd.CommandText = "select * from tbl_rsvation where rsvation_email = '" + email + "'";
                    rdr = cmd.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        while (rdr.Read())
                        {
                            data.Add(rdr[0].ToString());
                            data.Add(rdr[1].ToString());
                            data.Add(rdr[2].ToString());
                            data.Add(rdr[3].ToString());
                            data.Add(rdr[4].ToString());
                            data.Add(rdr[5].ToString());
                            data.Add(rdr[6].ToString());
                            data.Add(rdr[7].ToString());
                            data.Add(rdr[8].ToString());
                            data.Add(rdr[9].ToString());
                        }
                    }
                    con.Close();
                    rdr.Close();
                    return data;
                }
                catch (Exception ex)
                {
                    con.Close();
                    rdr.Close();
                    return data;
                }
            }

            public static List<string> getCustomerReservedInfo(string email)
            {
                List<string> data = new List<string>();
                connectDatabase();
                try
                {
                    con.Open();
                    cmd.CommandText = "select * from tbl_rsvationF where rsvationF_email = '" + email + "'";
                    rdr = cmd.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        while (rdr.Read())
                        {
                            data.Add(rdr[0].ToString());
                            data.Add(rdr[1].ToString());
                            data.Add(rdr[2].ToString());
                            data.Add(rdr[3].ToString());
                            data.Add(rdr[4].ToString());
                            data.Add(rdr[5].ToString());
                            data.Add(rdr[6].ToString());
                            data.Add(rdr[7].ToString());
                            data.Add(rdr[8].ToString());
                            data.Add(rdr[9].ToString());
                            data.Add(rdr[9].ToString());
                            data.Add(rdr[10].ToString());
                        }
                    }
                    con.Close();
                    rdr.Close();
                    return data;
                }
                catch (Exception ex)
                {
                    con.Close();
                    rdr.Close();
                    return data;
                }
            }

        public static string getEmailByCode(string code)
        {
            string x = "";
            connectDatabase();
            try
            {
                con.Open();
                cmd.CommandText = "select * from tbl_rsvationF where rsvationF_validationCode = '" + code + "'";
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        x = rdr[0].ToString();
                    }
                }
                con.Close();
                rdr.Close();
                return x;
            }
            catch (Exception ex)
            {
                con.Close();
                rdr.Close();
                return x;
            }
        }


        public static void reserveRoom(List<string> data)
            {
                //data content is all tbl_rsvation info and last index is roomNumber
                connectDatabase();
                try
                {
                    con.Open();
                    cmd.CommandText = @"insert into tbl_rsvationF(rsvationF_email, rsvationF_name, rsvationF_contact, rsvationF_guessCount, rsvationF_roomBill, rsvationF_validationCode, rsvationF_fromDate, rsvationF_toDate, rsvationF_roomType, rsvationF_roomNumber, rsvationF_timeArrival)
                    values ('" + data[0] + "', '" + data[1] + "', '" + data[2] + "', '" + data[3] + "', '" + data[4] + "', '" + data[5] + "', '" + data[6] + "', '" + data[7] + "', '" + data[8] + "', '" + data[10] + "', '" + data[9] + "')";
                    cmd.ExecuteNonQuery();
                    con.Close();


                    con.Open();
                    cmd.CommandText = "update tbl_room set room_status = 'reserved' where room_number = '" + data[10] + "'";
                    cmd.ExecuteNonQuery();
                    con.Close();

                    delete(data[0]);
                    
                }
                catch (Exception ex)
                {
                    con.Close();
                }
            }

            public static void checkInCustomer(string email)
            {
                List<string> data = getCustomerReservedInfo(email);
                string dateNow = DateTime.Now.ToShortDateString();
                string[] splitDate = dateNow.Split('/');
                string finalDateNow = splitDate[0] + "-" + splitDate[1] + "-" + splitDate[2];

                connectDatabase();
                try
                {
                    con.Open();
                    cmd.CommandText = @"insert into tbl_guest(guest_email, guest_name, guest_contact, guest_roomNumber, guest_roomType, guest_inDate, guest_outDate, guest_bill)
                                        values ('"+data[0]+"', '"+data[1]+ "', '" + data[2] + "', '" + data[9] + "', '" + data[8] + "', '" + finalDateNow + "', '" + data[7] + "', '" + data[4] + "')";
                    cmd.ExecuteNonQuery();
                    con.Close();

                
                }
                catch (Exception ex)
                {
                    con.Close();
                }
            }

            public static string getOutDate(string email)
            {
                string outDate = "";
                try
                {
                    con.Open();
                    cmd.CommandText = "select rsvation_toDate from tbl_rsvation where rsvation_email = '"+email+"'";
                    rdr = cmd.ExecuteReader();
                    outDate = rdr[0].ToString();
                    con.Close();
                    return outDate;
                }
                catch (Exception ex)
                {
                    con.Close();
                    return outDate;
                }
            }

        public static List<string> getValidationCodes()
        {
            connectDatabase();
            List<string> entity = new List<string>();

            try
            {
                con.Open();
                cmd.CommandText = "select * from tbl_rsvationF";
                rdr = cmd.ExecuteReader();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        entity.Add(rdr[5].ToString());
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

    }//END RESERVATIONS







}

