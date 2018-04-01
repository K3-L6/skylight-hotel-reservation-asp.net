using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace DATABASE
{
    public static class fdu
    {
        private static SqlConnection con = new SqlConnection();
        private static SqlCommand cmd = new SqlCommand();
        private static SqlDataReader rdr;

        static void connectDatabase()
        {
            con.ConnectionString = "Data Source=K;Initial Catalog=SkylightHotelDatabase;Integrated Security=True";
            cmd.Connection = con;
        }

        public static void addData(List<string> info)
        {
            try
            {
                connectDatabase();
                con.Open();
                cmd.CommandText = @"insert into tbl_fdu (fdu_username, fdu_password, fdu_lastName, fdu_firstName, fdu_email) 
                values ('" + info[0] + "', '" + info[1] + "', '" + info[2] + "', '" + info[3] + "', '" + info[4] + "')";
                cmd.ExecuteNonQuery();
                con.Close();
                MessageBox.Show("Registration Complete", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                con.Close();
                MessageBox.Show(ex.Message.ToString(), "", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public static void updateData(List<string> info)
        {
            try
            {
                connectDatabase();
                con.Open();
                cmd.CommandText = "update tbl_fdu set fdu_username = '" + info[0] + "', fdu_password = '" + info[1] + "', fdu_lastName = '" + info[2] + "', fdu_firstName = '" + info[3] + "', fdu_email = '" + info[4] + "' where fdu_username = '" + info[5] + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                MessageBox.Show("Info Update Success", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                con.Close();
                MessageBox.Show(ex.Message.ToString(), "", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

        }

        public static void deleteData(string username)
        {
            try
            {
                connectDatabase();
                con.Open();
                cmd.CommandText = @"delete from tbl_fdu where fdu_username = '" + username + "'";
                cmd.ExecuteNonQuery();
                con.Close();
                MessageBox.Show("User Successfully Deleted", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                con.Close();
                MessageBox.Show(ex.Message.ToString(), "", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }


        public static void displayAll(ListView list)
        {
            try
            {
                connectDatabase();
                con.Open();
                cmd.CommandText = @"select * from tbl_fdu";
                rdr = cmd.ExecuteReader();
                list.Items.Clear();
                if (rdr.HasRows)
                {
                    while (rdr.Read())
                    {
                        ListViewItem items = new ListViewItem(rdr[2].ToString());
                        items.SubItems.Add(rdr[3].ToString());
                        items.SubItems.Add(rdr[4].ToString());
                        items.SubItems.Add(rdr[0].ToString());
                        list.Items.Add(items);
                    }
                }
                con.Close();
                rdr.Close();
            }
            catch (Exception ex)
            {
                con.Close();
                MessageBox.Show(ex.Message.ToString(), "", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                    cmd.CommandText = "select * from tbl_fdu";
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
                    MessageBox.Show(ex.Message.ToString(), "", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                    cmd.CommandText = "select * from tbl_fdu";
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
                    MessageBox.Show(ex.Message.ToString(), "", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                    cmd.CommandText = "select * from tbl_fdu";
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
                    MessageBox.Show(ex.Message.ToString(), "", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                    cmd.CommandText = "select * from tbl_fdu";
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
                    MessageBox.Show(ex.Message.ToString(), "", MessageBoxButtons.OK, MessageBoxIcon.Error);
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
                    cmd.CommandText = "select * from tbl_fdu";
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
                    MessageBox.Show(ex.Message.ToString(), "", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    return data;
                }
            }
        }









    }
}
