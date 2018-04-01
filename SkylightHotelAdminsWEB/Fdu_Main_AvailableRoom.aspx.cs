using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class Admin_Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            List<string> data = DATABASE.customer.getAllInfo(INFO.util.emailSelected);
            //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('" + data[] + "')</script>");
            nameFld.Text = data[1];
            roomFld.Text = data[8];
            contactFld.Text = data[2];
            mailFld.Text = data[0];
        }
    }

    protected void reserve_Click(object sender, EventArgs e)
    {
        if (!inputValid()) { return; }
        List<string> data = DATABASE.customer.getAllInfo(mailFld.Text);
        data.Add(roomNumber.Text);
        DATABASE.customer.reserveRoom(data);
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Success')</script>");
    }


    Boolean inputValid()
    {
        string inputRoom = roomNumber.Text;
        List<string> data = DATABASE.room.GetAvailableRoom(roomFld.Text);
        //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('"+data[0]+"')</script>");
        bool dataX = false;
        for (int x = 0; x <= data.Count - 1; x++)
        {
            if (data[x].Equals(inputRoom))
            {
                dataX = true;
            }
        }
        if (!dataX)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Room Not Available')</script>");
            return false;
        }



        return true;
    }






}