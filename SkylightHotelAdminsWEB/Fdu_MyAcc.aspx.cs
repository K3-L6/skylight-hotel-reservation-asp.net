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
        lastFld.Text = INFO.fdu.lastname;
        firstFld.Text = INFO.fdu.firstname;
        mailFld.Text = INFO.fdu.email;
    }

    void resupInfo()
    {
        INFO.fdu.lastname = lastFld.Text.ToUpper();
        INFO.fdu.firstname = firstFld.Text.ToUpper();
        INFO.fdu.email = mailFld.Text;
    }

    protected void saveBtn_Click(object sender, EventArgs e)
    {
        if (!InputValid()) { return; }
        List<string> data = new List<string>();
        data.Add(INFO.fdu.username);
        data.Add(INFO.fdu.password);
        data.Add(lastFld.Text.ToUpper());
        data.Add(firstFld.Text.ToUpper());
        data.Add(mailFld.Text);
        data.Add(INFO.fdu.username);
        DATABASE.fdu.updateData(data);
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
        Response.Redirect("Fdu_MyAcc_LoginInfo.aspx");
    }






}