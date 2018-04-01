using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            loadInfo(); 
        }
    }

    void loadInfo()
    {
        lastFld.Text = INFO.admin.lastname;
        firstFld.Text = INFO.admin.firstname;
        mailFld.Text = INFO.admin.email;
    }

    void resupInfo()
    {
        INFO.admin.lastname = lastFld.Text.ToUpper();
        INFO.admin.firstname = firstFld.Text.ToUpper();
        INFO.admin.email = mailFld.Text;
    }

    protected void saveBtn_Click(object sender, EventArgs e)
    {
        //cmd.CommandText = "update tbl_admin set admin_username = '" + info[0] + "', admin_password = '" + info[1] + "', admin_lastName = '" + info[2] + "', admin_firstName = '" + info[3] + "', admin_email = '" + info[4] + "' where admin_username = '" + info[5] + "'";

        if (!InputValid()) { return; }
        List<string> data = new List<string>();
        data.Add(INFO.admin.username);
        data.Add(INFO.admin.password);
        data.Add(lastFld.Text.ToUpper());
        data.Add(firstFld.Text.ToUpper());
        data.Add(mailFld.Text);
        data.Add(INFO.admin.username);
        DATABASE.admin.updateData(data);
        resupInfo();
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Successfully Updated')</script>");
    }

    Boolean InputValid()
    {
        if (lastFld.Text.Equals("") || firstFld.Text.Equals("") || mailFld.Text.Equals(""))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Please Complete The Form')</script>");
            return false;
        }
        return true;
    }

    protected void changeBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_MyAcc _LoginInfo.aspx");
    }






}