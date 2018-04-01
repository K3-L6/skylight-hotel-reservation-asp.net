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
            userFld.Text = INFO.admin.username;
        }
    }

    

    protected void saveBtn_Click(object sender, EventArgs e)
    {
        if (!InputValid()) { return; }
        List<string> data = new List<string>();
        data.Add(userFld.Text);
        data.Add(rpassFld.Text);
        data.Add(INFO.admin.lastname);
        data.Add(INFO.admin.firstname);
        data.Add(INFO.admin.email);
        data.Add(INFO.admin.username);
        DATABASE.admin.updateData(data);
        resupInfo();
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Successfully Updated')</script>");
    }

    void resupInfo()
    {
        INFO.admin.username = userFld.Text;
        INFO.admin.password = npassFld.Text;
    }

    Boolean InputValid()
    {
        if (userFld.Text.Equals("") || passFld.Text.Equals("") || npassFld.Text.Equals("") || rpassFld.Text.Equals(""))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Please complete the form')</script>");
            return false;
        }

        if (!passFld.Text.Equals(INFO.admin.password))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Old password incorrect')</script>");
            return false;
        }

        if (!npassFld.Text.Equals(rpassFld.Text))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Password does not match')</script>");
            return false;
        }

        return true;
    }

    protected void backBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Admin_MyAcc.aspx");
    }






}