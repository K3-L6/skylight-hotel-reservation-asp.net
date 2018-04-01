using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        priceLbl1.Text = "Price Per Person : " + DATABASE.tours.getTourPrice("1");
        priceLbl2.Text = "Price Per Person : " + DATABASE.tours.getTourPrice("2");
        priceLbl3.Text = "Price Per Person : " + DATABASE.tours.getTourPrice("3");
    }
}