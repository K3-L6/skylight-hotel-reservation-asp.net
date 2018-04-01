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
    
    protected void validateBtn_Click(object sender, EventArgs e)
    {
        string validCode = INFO.customer.emailCode;

        if (validCode.Equals(codeFld.Text))
        {
            string validationCode = emailCodeRandomizer();

            List<string> data = new List<string>();
            data.Add(INFO.customer.email);
            data.Add(INFO.customer.name);
            data.Add(INFO.customer.contact);
            data.Add(INFO.customer.guestCount);
            data.Add(INFO.customer.total);
            data.Add(validationCode);
            data.Add(INFO.customer.fromDate);
            data.Add(INFO.customer.toDate);
            data.Add(INFO.customer.roomType);
            data.Add(INFO.customer.timeArrival);
            DATABASE.customer.SaveData(data);

            warnMsg.Text = "Reservation Done";

            //EMAIL.MailSystem.send(INFO.customer.email, "Skyight Hotel Palawan", "Thanks for choosing skylight hotel palawan\nYou can use this code for faster checking IN : " + validationCode + "\nPlease Wait For our call for your Flight and Other Details");
            //Response.Redirect("ThankYouPage.aspx");

        }
        else
        {
            warnMsg.Text = validCode;
        }
    }

    protected void resendBtn_Click(object sender, EventArgs e)
    {
        string emailCode = emailCodeRandomizer();
        EMAIL.MailSystem.send(INFO.customer.email, "Skylight Hotel Email Validation", "Email Validation Code : " + emailCode);
        INFO.customer.emailCode = emailCode;
        warnMsg.Text = "Please Check Your Email For The New Code";
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