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
        priceLbl.Text = "Room Price : " + DATABASE.room.GetRoomPrice("budget");
        maxLbl.Text = "Max Person Count : " + DATABASE.room.GetRoomMaxGuest("budget");
        penaltyLbl.Text = "Penalty Charge for Exceeding Person Count : " + DATABASE.room.GetRoomExPenalty("budget");
    }
}