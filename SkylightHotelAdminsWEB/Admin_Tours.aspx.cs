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
            undergroundRiverPriceFld.Text = DATABASE.tours.getTourPrice("1");
            hondabayPriceFld.Text = DATABASE.tours.getTourPrice("2");
            dospalmasPriceFld.Text = DATABASE.tours.getTourPrice("3");
        }
    }

    protected void undergroundriverSaveBtn_Click(object sender, EventArgs e)
    {
        DATABASE.tours.updateTourPrice("1", undergroundRiverPriceFld.Text);
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Underground River Price Updated')</script>");
    }

    protected void hondabaySaveBtn_Click(object sender, EventArgs e)
    {
        DATABASE.tours.updateTourPrice("2", hondabayPriceFld.Text);
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Honda Bay Price Updated')</script>");
    }

    protected void dospalmasSaveBtn_Click(object sender, EventArgs e)
    {
        DATABASE.tours.updateTourPrice("3", dospalmasPriceFld.Text);
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Dos Palmas Resort Price Updated')</script>");
    }




}