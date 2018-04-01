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
            
        }
    }

    protected void reserve_Click(object sender, EventArgs e)
    {
        INFO.util.emailSelected = mailFld.Text;
        //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('"+INFO.util.emailSelected+"')</script>");
        Response.Redirect("Fdu_Main_AvailableRoom.aspx");
    }
    






}