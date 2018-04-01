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
            
        }
    }

    protected void reserve_Click(object sender, EventArgs e)
    {
        if (!inputValid()) { return; }

        string x = DATABASE.customer.getEmailByCode(codeFld.Text);
        DATABASE.customer.checkInCustomer(x);
        DATABASE.customer.deleteF(x);
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Success')</script>");

    }

    Boolean inputValid()
    {
        string inputCode = codeFld.Text;
        List<string> data = DATABASE.customer.getValidationCodes();
        bool dataX = false;
        for (int x = 0; x <= data.Count - 1; x++)
        {
            if (data[x].Equals(inputCode))
            {
                dataX = true;
            }
        }
        if (!dataX)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Code Not Available')</script>");
            return false;
        }
        return true;
    }








}