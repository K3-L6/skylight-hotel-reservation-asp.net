using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Threading.Tasks;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        dataTaskLoader();
    }

    private int loginType = 0;
    protected void loginBtn_Click(object sender, EventArgs e)
    {
        dataTaskValidator();
        switch (loginType)
        {
            case 1:
                //GO TO ADMIN PAGE
                Response.Redirect("Admin_Main.aspx");
                break;
            case 2:
                //GO TO FDU PAGE
                Response.Redirect("Fdu_Main.aspx");
                break;
            default:
                //WRONG PASSWORD
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Wrong Username or Password')</script>");
                break;
        }

    }

    //LOAD ALL INFO
    private void dataTaskLoader()
    {
        Task a = Task.Factory.StartNew(() => getAdminData());
        Task b = Task.Factory.StartNew(() => getFduData());
        Task.WaitAll(a, b);
    }

    private List<string> adminList_username = new List<string>();
    private List<string> adminList_password = new List<string>();
    private List<string> adminList_lastName = new List<string>();
    private List<string> adminList_firstName = new List<string>();
    private List<string> adminList_email = new List<string>();

    private void getAdminData()
    {
        adminList_username = DATABASE.admin.username.getValues();
        adminList_password = DATABASE.admin.password.getValues();
        adminList_lastName = DATABASE.admin.lastName.getValues();
        adminList_firstName = DATABASE.admin.firstName.getValues();
        adminList_email = DATABASE.admin.email.getValues();
    }

    private List<string> fduList_username = new List<string>();
    private List<string> fduList_password = new List<string>();
    private List<string> fduList_lastName = new List<string>();
    private List<string> fduList_firstName = new List<string>();
    private List<string> fduList_email = new List<string>();

    private void getFduData()
    {
        fduList_username = DATABASE.fdu.username.getValues();
        fduList_password = DATABASE.fdu.password.getValues();
        fduList_lastName = DATABASE.fdu.lastName.getValues();
        fduList_firstName = DATABASE.fdu.firstName.getValues();
        fduList_email = DATABASE.fdu.email.getValues();
    }

    //VALIDATE INFO LOADED AND CREATE GLOBALS
    private void dataTaskValidator()
    {
        Task a = Task.Factory.StartNew(() => isAdminValid());
        Task b = Task.Factory.StartNew(() => isFduValid());
        Task.WaitAll(a, b);
    }

    private void isAdminValid()
    {
        for (int x = 0; x < adminList_username.Count; x++)
        {
            if (adminList_username[x].Equals(usernameFld.Text) && adminList_password[x].Equals(passwordFld.Text))
            {
                loginType = 1;

                INFO.admin.username = adminList_username[x];

                INFO.admin.password = adminList_password[x];

                INFO.admin.lastname = adminList_lastName[x];

                INFO.admin.firstname = adminList_firstName[x];

                INFO.admin.email = adminList_email[x];
            }
        }
    }

    private void isFduValid()
    {
        for (int x = 0; x < fduList_username.Count; x++)
        {
            if (fduList_username[x].Equals(usernameFld.Text) && fduList_password[x].Equals(passwordFld.Text))
            {
                loginType = 2;

                INFO.fdu.username = fduList_username[x];

                INFO.fdu.password = fduList_password[x];

                INFO.fdu.lastname = fduList_lastName[x];

                INFO.fdu.firstname = fduList_firstName[x];

                INFO.fdu.email = fduList_email[x];
            }
        }
    }

}