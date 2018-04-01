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
            userFld.Text = INFO.fdu.username;
        }
    }

    

    protected void saveBtn_Click(object sender, EventArgs e)
    {
        if (!InputValid()) { return; }
        List<string> data = new List<string>();
        data.Add(userFld.Text);
        data.Add(rpassFld.Text);
        data.Add(INFO.fdu.lastname);
        data.Add(INFO.fdu.firstname);
        data.Add(INFO.fdu.email);
        data.Add(INFO.fdu.username);
        DATABASE.fdu.updateData(data);
        resupInfo();
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Successfully Updated')</script>");
    }

    void resupInfo()
    {
        INFO.fdu.username = userFld.Text;
        INFO.fdu.password = npassFld.Text;
    }

    Boolean InputValid()
    {
        if (userFld.Text.Equals("") || passFld.Text.Equals("") || npassFld.Text.Equals("") || rpassFld.Text.Equals(""))
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Please complete the form')</script>");
            return false;
        }

        if (!passFld.Text.Equals(INFO.fdu.password))
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
        Response.Redirect("Fdu_MyAcc.aspx");
    }






}