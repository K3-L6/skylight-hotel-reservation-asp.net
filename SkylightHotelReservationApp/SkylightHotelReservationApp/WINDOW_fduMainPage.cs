using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace SkylightHotelReservationApp
{
    public partial class WINDOW_fduMainPage : Form
    {
        public WINDOW_fduMainPage()
        {
            InitializeComponent();
            DATABASE.customer.reservation.displayFromWeb(reservationListView, "all");
            DATABASE.customer.reservation.displayReservedGuest(reservationFList, "all", "all");
            DATABASE.customer.reservation.displayGuest(guestListView, "all", "all");
            accountInfoLoadAll();
            reservationListSort.SelectedIndex = 0;
           
        }

        //RESERVATION LIST
        private void refreshTick()
        {
            int selectedIndex = reservationListSort.SelectedIndex;
            switch (selectedIndex)
            {
                case 0:
                    DATABASE.customer.reservation.displayFromWeb(reservationListView, "all");
                    break;
                case 1:
                    DATABASE.customer.reservation.displayFromWeb(reservationListView, "budget");
                    break;
                case 2:
                    DATABASE.customer.reservation.displayFromWeb(reservationListView, "standard");
                    break;
                case 3:
                    DATABASE.customer.reservation.displayFromWeb(reservationListView, "deluxe");
                    break;
            }
        }

        private void refreshTimer_Tick(object sender, EventArgs e)
        {
            refreshTick();
        }

        //SORTING
        private void reservationListSort_SelectedIndexChanged(object sender, EventArgs e)
        {
            refreshTick();
        }
        





        //BUTTONS
        private void firstBtn_Click(object sender, EventArgs e)
        {
            switch (selectedPanel)
            {
                case 1:
                    //MANUAL ADDING OF RESERVATION
                    
                    break;
                case 2:
                    break;
                case 3:
                    break;
                case 4:
                    break;
            }
        }

        private void secondBtn_Click(object sender, EventArgs e)
        {
            switch (selectedPanel)
            {
                case 1:
                    //RESERVE A GUEST
                    if (reservationListView.SelectedItems.Count == 0) { MessageBox.Show("Theres no selected Index", "", MessageBoxButtons.OK, MessageBoxIcon.Information); }
                    List<string> data = new List<string>();
                    data.Clear();
                    data = DATABASE.customer.reservation.getAllInfo(reservationListView.SelectedItems[0].SubItems[2].Text);
                    this.Hide();
                    new WINDOW_reserve(data).Show();
                    break;
                case 2:
                    break;



                case 3:
                    break;


                case 4:
                    break;
            }
        }


        private void thirdBtn_Click(object sender, EventArgs e)
        {
            switch (selectedPanel)
            {
                case 1:
                    //DELETE RESERVATION
                    if (reservationListView.SelectedItems.Count == 0) { MessageBox.Show("Theres No Selected Index", "", MessageBoxButtons.OK, MessageBoxIcon.Information); }
                    DATABASE.customer.reservation.delete(reservationListView.SelectedItems[0].SubItems[2].Text);
                    refreshTick();
                    break;



                case 2:
                    //CHECK IN CUSTOMER
                    if (reservationFList.SelectedItems.Count == 0) { MessageBox.Show("Theres No Selected Index", "", MessageBoxButtons.OK, MessageBoxIcon.Information); return; }
                    DATABASE.customer.reservation.checkInCustomer(reservationFList.SelectedItems[0].SubItems[5].Text);
                    DATABASE.customer.reservation.displayGuest(guestListView, "all", "all");
                    break;
                case 3:
                    //BILL ADDER get 0 and 4 name and email pass to adder
                    if (guestListView.SelectedItems.Count == 0) { MessageBox.Show("Theres No Selected Index", "", MessageBoxButtons.OK, MessageBoxIcon.Information); return; }
                    List<string> data = new List<string>();
                    data.Add(guestListView.SelectedItems[0].SubItems[0].Text);
                    data.Add(guestListView.SelectedItems[0].SubItems[1].Text);
                    data.Add(guestListView.SelectedItems[0].SubItems[4].Text);
                    this.Hide();
                    new WINDOW_billAdder(data).Show();
                    break;



                case 4:
                    break;
            }
        }

        private void fourthBtn_Click(object sender, EventArgs e)
        {
            switch (selectedPanel)
            {
                case 1:
                    refreshTick();
                    break;



                case 2:
                    break;



                case 3:
                    break;



                case 4:
                    saveNewAccInfo();
                    break;
            }

        }












        //NAVIGATION BAR
        private int selectedPanel = 1;
        private void logoutBtn_Click(object sender, EventArgs e)
        {
            this.Hide();
            new WINDOW_login().Show();
        }

        private void reeservationListBtn_Click(object sender, EventArgs e)
        {
            selectedPanel = 1;

            reservationListPanel.Visible = true;
            reservedGuestPanel.Visible = false;
            guestListPanel.Visible = false;
            accSettingPanel.Visible = false;

            firstBtn.Visible = true;
            secondBtn.Visible = true;
            thirdBtn.Visible = true;
            fourthBtn.Visible = true;

            firstBtn.Text = "Add";
            secondBtn.Text = "Reserve";
            thirdBtn.Text = "Delete";
            fourthBtn.Text = "Refresh";

            panelTitle.Text = "Reservation List";
        }

        private void reservedGuestBtn_Click(object sender, EventArgs e)
        {
            selectedPanel = 2;

            reservationListPanel.Visible = false;
            reservedGuestPanel.Visible = true;
            guestListPanel.Visible = false;
            accSettingPanel.Visible = false;

            firstBtn.Visible = false;
            secondBtn.Visible = false;
            thirdBtn.Visible = true;
            fourthBtn.Visible = true;

            firstBtn.Text = "NULL";
            secondBtn.Text = "Null";
            thirdBtn.Text = "Check IN";
            fourthBtn.Text = "EDIT";

            panelTitle.Text = "Reserved Guest List";
        }

        private void guestListBtn_Click(object sender, EventArgs e)
        {
            selectedPanel = 3;

            reservationListPanel.Visible = false;
            reservedGuestPanel.Visible = false;
            guestListPanel.Visible = true;
            accSettingPanel.Visible = false;

            firstBtn.Visible = false;
            secondBtn.Visible = true;
            thirdBtn.Visible = true;
            fourthBtn.Visible = true;

            firstBtn.Text = "NULL";
            secondBtn.Text = "Check OUT";
            thirdBtn.Text = "Add Bill";
            fourthBtn.Text = "EDIT";

            panelTitle.Text = "Guest List";
        }

        private void accountSettingBtn_Click(object sender, EventArgs e)
        {
            selectedPanel = 4;

            reservationListPanel.Visible = false;
            reservedGuestPanel.Visible = false;
            guestListPanel.Visible = false;
            accSettingPanel.Visible = true;

            firstBtn.Visible = false;
            secondBtn.Visible = false;
            thirdBtn.Visible = false;
            fourthBtn.Visible = false;

            firstBtn.Text = "NULL";
            secondBtn.Text = "NULL";
            thirdBtn.Text = "NULL";
            fourthBtn.Text = "SAVE";

            panelTitle.Text = "Account Settings";
        }

        //ACCOUNT SETTINGS START
        void accountInfoLoadAll()
        {
            lastFld.Text = INFO.fdu.lastname;
            firstFld.Text = INFO.fdu.firstname;
            mailFld.Text = INFO.fdu.email;
            usernameFld.Text = INFO.fdu.username;
            passFld.Text = INFO.fdu.password;
            passrFld.Text = INFO.fdu.password;   
        }

        private void editLastNameBtn_Click(object sender, EventArgs e)
        {
            lastFld.Enabled = true;
            fourthBtn.Visible = true;
            editLastNameBtn.Enabled = false;
        }

        private void editFirstNameBtn_Click(object sender, EventArgs e)
        {
            firstFld.Enabled = true;
            fourthBtn.Visible = true;
            editFirstNameBtn.Enabled = false;
        }

        private void editMailBtn_Click(object sender, EventArgs e)
        {
            mailFld.Enabled = true;
            fourthBtn.Visible = true;
            editMailBtn.Enabled = false;
        }

        private void editUserBtn_Click(object sender, EventArgs e)
        {
            usernameFld.Enabled = true;
            fourthBtn.Visible = true;
            editUserBtn.Enabled = false;
        }

        private void editPasswordBtn_Click(object sender, EventArgs e)
        {
            passFld.Enabled = true;
            passrFld.Enabled = true;
            fourthBtn.Visible = true;
            editPasswordBtn.Enabled = false;
        }

        private void saveNewAccInfo()
        {
            if (isNewAccInfoValid() == false) { return; }
            List<string> data = new List<string>();
            data.Add(usernameFld.Text);
            data.Add(passFld.Text);
            data.Add(lastFld.Text.ToUpper());
            data.Add(firstFld.Text.ToUpper());
            data.Add(mailFld.Text);
            data.Add(INFO.fdu.username);
            DATABASE.fdu.updateData(data);

            INFO.fdu.username = data[0];
            INFO.fdu.password = data[1];
            INFO.fdu.lastname = data[2];
            INFO.fdu.firstname = data[3];
            INFO.fdu.email = data[4];

            editLastNameBtn.Enabled = true;
            editFirstNameBtn.Enabled = true;
            editUserBtn.Enabled = true;
            editMailBtn.Enabled = true;
            editPasswordBtn.Enabled = true;

            lastFld.Enabled = false;
            firstFld.Enabled = false;
            mailFld.Enabled = false;
            usernameFld.Enabled = false;
            passFld.Enabled = false;
            passrFld.Enabled = false;

            fourthBtn.Visible = false;
        }

        bool isNewAccInfoValid()
        {
            if (usernameFld.Text.Equals("") || passFld.Text.Equals("") || passrFld.Text.Equals("") || lastFld.Text.Equals("") || firstFld.Text.Equals("") || mailFld.Text.Equals(""))
            {
                MessageBox.Show("Please Complete the Form", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return false;
            }

            if (!passFld.Text.Equals(passrFld.Text))
            {
                MessageBox.Show("Password Does Not Match", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return false;
            }
            return true;
        }

    }
}
