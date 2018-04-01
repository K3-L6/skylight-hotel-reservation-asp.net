using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Main : System.Web.UI.Page
{
    List<string> budgetData = new List<string>();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            List<string> budgetInfo = DATABASE.room.getRoomPrices("budget");
            budgetPriceFld.Text = budgetInfo[0];
            budgetCountFld.Text = budgetInfo[1];
            budgetPenalFld.Text = budgetInfo[2];
            List<string> standardInfo = DATABASE.room.getRoomPrices("standard");
            standardPriceFld.Text = standardInfo[0];
            standardCountFld.Text = standardInfo[1];
            standardPenalFld.Text = standardInfo[2];
            List<string> deluxeInfo = DATABASE.room.getRoomPrices("deluxe");
            deluxePriceFld.Text = deluxeInfo[0];
            deluxeCountFld.Text = deluxeInfo[1];
            deluxePenalFld.Text = deluxeInfo[2];
        }
    }


    protected void budgetSaveBtn_Click(object sender, EventArgs e)
    {
        List<string> data = new List<string>();
        data.Add(budgetPriceFld.Text);
        data.Add(budgetCountFld.Text);
        data.Add(budgetPenalFld.Text);
        DATABASE.room.updateRoomPrices("budget", data);
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Budget Room Info Saved')</script>");
        Response.Redirect("Admin_Main.aspx");
    }

    protected void standardSaveBtn_Click(object sender, EventArgs e)
    {
        List<string> data = new List<string>();
        data.Add(standardPriceFld.Text);
        data.Add(standardCountFld.Text);
        data.Add(standardPenalFld.Text);
        DATABASE.room.updateRoomPrices("standard", data);
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Standard Room Info Saved')</script>");
        Response.Redirect("Admin_Main.aspx");
    }

    protected void deluxeSaveBtn_Click(object sender, EventArgs e)
    {
        List<string> data = new List<string>();
        data.Add(deluxePriceFld.Text);
        data.Add(deluxeCountFld.Text);
        data.Add(deluxePenalFld.Text);
        DATABASE.room.updateRoomPrices("deluxe", data);
        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Deluxe Room Info Saved')</script>");
        Response.Redirect("Admin_Main.aspx");
        
    }

}