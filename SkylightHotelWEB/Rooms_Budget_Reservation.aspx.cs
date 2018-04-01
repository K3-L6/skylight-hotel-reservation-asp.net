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

    }

    private string roomType = "budget";
    protected void reserveBtn_Click(object sender, EventArgs e)
    {
        if (isInputValid() == false) { return; }

        string[] splitDate1 = fromDateFld.Text.Split('-');
        string[] splitDate2 = toDateFld.Text.Split('-');
        string finalFromDate = splitDate1[1] + "-" + splitDate1[2] + "-" + splitDate1[0];
        string finalToDate = splitDate2[1] + "-" + splitDate2[2] + "-" + splitDate2[0];

        string randomCode = emailCodeRandomizer();

        INFO.customer.roomType = roomType;
        INFO.customer.total = computePayment();
        INFO.customer.name = nameFld.Text.ToUpper();
        INFO.customer.email = mailFld.Text;
        INFO.customer.contact = contactFld.Text;
        INFO.customer.fromDate = finalFromDate;
        INFO.customer.toDate = finalToDate;
        INFO.customer.emailCode = randomCode;
        INFO.customer.timeArrival = timeArrivalFld.Text;
        INFO.customer.guestCount = countFld.Text;
        
        EMAIL.MailSystem.send(mailFld.Text, "Skylight Hotel Email Validation", "Email Validation Code : " + randomCode);
        Response.Redirect("EmailValidation.aspx");
    }

    protected bool isInputValid()
    {
        if (nameFld.Text.Equals("") || mailFld.Text.Equals("") || contactFld.Text.Equals("") || fromDateFld.Text.Equals("") || toDateFld.Text.Equals("") || countFld.Text.Equals("") || timeArrivalFld.Text.Equals(""))
        {
            warnMsg.Text = "Please Complete the Form";
            return false;
        }
        return true;
    }

    protected string computePayment()
    {
        int maxPerson = DATABASE.room.GetRoomMaxGuest(roomType);
        double roomPriceTotal = DATABASE.room.GetRoomPrice(roomType);
        double roomExPenalty = DATABASE.room.GetRoomExPenalty(roomType);

        DateTime fromDate = DateTime.Parse(fromDateFld.Text);
        DateTime toDate = DateTime.Parse(toDateFld.Text);

        if (int.Parse(countFld.Text) > maxPerson)
        {
            for (int x = maxPerson; x < int.Parse(countFld.Text); x++)
            {
                roomPriceTotal += roomExPenalty;
            }
        }
        return (roomPriceTotal * (toDate - fromDate).Days).ToString();
    }

    protected string emailCodeRandomizer()
    {
        string randomNum = "";
        char[] collections = { '1', '2', '3', '4', '5', '6', '7', '8', '9', '0' };
        Random r = new Random();
        for (int x = 0; x <= 3; x++)
        {
            randomNum += collections[r.Next(0, 9)].ToString();
        }
        return randomNum;
    }

}