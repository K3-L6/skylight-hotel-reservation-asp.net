using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;


namespace DATABASE
{
    public static class admin
    {
        private static SqlConnection con = new SqlConnection();
        private static SqlCommand cmd = new SqlCommand();
        private static SqlDataReader rdr;

        static void connectDatabase()
        {
            con.ConnectionString = "Data Source=K;Initial Catalog=SkylightHotelDatabase;Integrated Security=True";
            cmd.Connection = con;
        }
        
        public static void updateData(List<string> info)
        {
            try
            {
                connectDatabase();
                con.Open();
                cmd.CommandText = "update tbl_admin set admin_username = '" + info[0] + "', admin_password = '" + info[1] + "', admin_lastName = '" + info[2] + "', admin_firstName = '" + info[3] + "', admin_email = '" + info[4] + "' where admin_username = '" + info[5] + "'";
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception ex)
            {
                con.Close();
            }
            
        }
        
        public static class username
        {
            public static List<string> getValues()
            {
                List<string> data = new List<string>();
                try
                {
                    connectDatabase();
                    con.Open();
                    cmd.CommandText = "select * from tbl_admin";
                    rdr = cmd.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        while (rdr.Read())
                        {
                            data.Add(rdr[0].ToString());
                        }
                    }
                    con.Close();
                    rdr.Close();
                    return data;
                }
                catch (Exception ex)
                {
                    con.Close();
                    return data;
                }
            }
        }

        public static class password
        {
            public static List<string> getValues()
            {
                List<string> data = new List<string>();
                try
                {
                    connectDatabase();
                    con.Open();
                    cmd.CommandText = "select * from tbl_admin";
                    rdr = cmd.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        while (rdr.Read())
                        {
                            data.Add(rdr[1].ToString());
                        }
                    }
                    con.Close();
                    rdr.Close();
                    return data;
                }
                catch (Exception ex)
                {
                    con.Close();
                    return data;
                }
            }
        }

        public static class lastName
        {
            public static List<string> getValues()
            {
                List<string> data = new List<string>();
                try
                {
                    connectDatabase();
                    con.Open();
                    cmd.CommandText = "select * from tbl_admin";
                    rdr = cmd.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        while (rdr.Read())
                        {
                            data.Add(rdr[2].ToString());
                        }
                    }
                    con.Close();
                    rdr.Close();
                    return data;
                }
                catch (Exception ex)
                {
                    con.Close();
                    return data;
                }
            }
        }

        public static class firstName
        {
            public static List<string> getValues()
            {
                List<string> data = new List<string>();
                try
                {
                    connectDatabase();
                    con.Open();
                    cmd.CommandText = "select * from tbl_admin";
                    rdr = cmd.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        while (rdr.Read())
                        {
                            data.Add(rdr[3].ToString());
                        }
                    }
                    con.Close();
                    rdr.Close();
                    return data;
                }
                catch (Exception ex)
                {
                    con.Close();
                    return data;
                }
            }
        }

        public static class email
        {
            public static List<string> getValues()
            {
                List<string> data = new List<string>();
                try
                {
                    connectDatabase();
                    con.Open();
                    cmd.CommandText = "select * from tbl_admin";
                    rdr = cmd.ExecuteReader();
                    if (rdr.HasRows)
                    {
                        while (rdr.Read())
                        {
                            data.Add(rdr[4].ToString());
                        }
                    }
                    con.Close();
                    rdr.Close();
                    return data;
                }
                catch (Exception ex)
                {
                    con.Close();
                    return data;
                }
            }
        }






    }
}
