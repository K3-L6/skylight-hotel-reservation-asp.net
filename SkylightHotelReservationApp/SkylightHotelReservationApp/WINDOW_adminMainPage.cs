using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SkylightHotelReservationApp
{
    public partial class WINDOW_adminMainPage : Form
    {
        public WINDOW_adminMainPage()
        {
            InitializeComponent();
            DATABASE.fdu.displayAll(fduList);
            DATABASE.room.displayAvailableRoomNumberAndAvailability(roomList, "budget");
            accountInfoLoadAll();
            tourInfoLoadAll();
        }

        //NAVIGATION BUTTONS
        private int selectedPanel = 1;
        private void frontDeskUserBtn_Click(object sender, EventArgs e)
        {
            selectedPanel = 1;
            frontDeskUserMode();
        }

        private void roomSettingBtn_Click(object sender, EventArgs e)
        {
            selectedPanel = 2;
            roomSettingMode();
        }

        private void tourListSettingBtn_Click(object sender, EventArgs e)
        {
            selectedPanel = 3;
            tourListSettingMode();
        }

        private void acountSettingBtn_Click(object sender, EventArgs e)
        {
            selectedPanel = 4;
            accSettingMode();
        }

        private void logoutBtn_Click_1(object sender, EventArgs e)
        {
            this.Hide();
            new WINDOW_login().Show();
        }

        //MODES 349, 115
        void frontDeskUserMode()
        {
            //PANEL TITLE
            panelTitle.Text = "Front Desk User List";

            //PANEL VISIBILITY
            frontDeskUserLIstPanel.Visible = true;
            roomPriceSettingPanel.Visible = false;
            accSettingPanel.Visible = false;
            tourSettingPanel.Visible = false;

            //BUTTON VISIBILITY
            firstBtn.Visible = false;
            secondBtn.Visible = false;
            thirdBtn.Visible = true;
            fourthBtn.Visible = true;

            //BUTTON TEXT
            firstBtn.Text = "Null";
            secondBtn.Text = "Null";
            thirdBtn.Text = "Register";
            fourthBtn.Text = "Delete";
        }

        //ROOM SETTING MODE START
        void roomSettingMode()
        {
            //PANEL TITLE
            panelTitle.Text = "Room Price Setting";

            //PANEL VISIBILITY
            frontDeskUserLIstPanel.Visible = false;
            roomPriceSettingPanel.Visible = true;
            accSettingPanel.Visible = false;
            tourSettingPanel.Visible = false;

            //BUTTON VISIBILITY
            firstBtn.Visible = false;
            secondBtn.Visible = true;
            thirdBtn.Visible = true;
            fourthBtn.Visible = true;

            //BUTTON TEXT
            firstBtn.Text = "Update Price";
            secondBtn.Text = "Add Room";
            thirdBtn.Text = "Delete Room";
            fourthBtn.Text = "Refresh";

            //DEFAULTS
            roomTypeSelector.SelectedIndex = 0;
            DisplayPrice();
        }

        void tourListSettingMode()
        {
            //PANEL TITLE
            panelTitle.Text = "Tour List Settings";

            //PANEL VISIBILITY
            frontDeskUserLIstPanel.Visible = false;
            roomPriceSettingPanel.Visible = false;
            accSettingPanel.Visible = false;
            tourSettingPanel.Visible = true;

            //BUTTON VISIBILITY
            firstBtn.Visible = false;
            secondBtn.Visible = false;
            thirdBtn.Visible = false;
            fourthBtn.Visible = false;

            //BUTTON TEXT
            firstBtn.Text = "NULL";
            secondBtn.Text = "NULL";
            thirdBtn.Text = "NULL";
            fourthBtn.Text = "SAVE";
        }

        void accSettingMode()
        {
            //PANEL TITLE
            panelTitle.Text = "Account Settings";

            //PANEL VISIBILITY
            frontDeskUserLIstPanel.Visible = false;
            roomPriceSettingPanel.Visible = false;
            accSettingPanel.Visible = true;
            tourSettingPanel.Visible = false;

            //BUTTON VISIBILITY
            firstBtn.Visible = false;
            secondBtn.Visible = false;
            thirdBtn.Visible = false;
            fourthBtn.Visible = false;

            //BUTTON TEXT
            firstBtn.Text = "NULL";
            secondBtn.Text = "NULL";
            thirdBtn.Text = "NULL";
            fourthBtn.Text = "SAVE";
        }

        private string selectedRoomType = "";
        private void roomTypeSelector_SelectedIndexChanged(object sender, EventArgs e)
        {
            priceFld.Enabled = false; countFld.Enabled = false; penFld.Enabled = false;
            switch (roomTypeSelector.Text)
            {
                case "Budget Room":
                    selectedRoomType = "budget";
                    break;
                case "Standard Room":
                    selectedRoomType = "standard";
                    break;
                case "Deluxe Room":
                    selectedRoomType = "deluxe";
                    break;
            }
            refreshTick_RoomSetting();
            DisplayPrice();
        }

        private void editPriceBtn_Click(object sender, EventArgs e)
        {
            priceFld.Enabled = true; countFld.Enabled = true; penFld.Enabled = true;
            firstBtn.Visible = true;
            editPriceBtn.Visible = false;
        }

        private void refreshTick_RoomSetting()
        {
            DATABASE.room.displayAvailableRoomNumberAndAvailability(roomList, selectedRoomType);
        }

        private void DisplayPrice()
        {
            List<string> data = DATABASE.room.getRoomPrices(selectedRoomType);
            priceFld.Text = data[0];
            countFld.Text = data[1];
            penFld.Text = data[2];
        }
        //ROOM SETTING MODE END


        //OUTSIDE BUTTON ACTIONS
        private void firstBtn_Click(object sender, EventArgs e)
        {
            switch (selectedPanel)
            {
                case 1:
                    
                    break;
                case 2:
                    //UPDATE ROOM PRICE INFO
                    List<string> data = new List<string>();
                    data.Add(priceFld.Text);data.Add(countFld.Text);data.Add(penFld.Text);
                    DATABASE.room.updateRoomPrices(selectedRoomType, data);
                    editPriceBtn.Visible = true;firstBtn.Visible = false;
                    priceFld.Enabled = false; countFld.Enabled = false; penFld.Enabled = false;
                    DisplayPrice();
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
                    break;
                case 2:
                    //REGISTER NEW ROOM
                    this.Hide();
                    new WINDOW_registerRoom(selectedRoomType).Show();
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
                    //GOTO REGISTER FDU
                    this.Hide();
                    new WINDOW_registerFDU().Show();
                    break;
                case 2:
                    //DELETE ROOM
                    if (roomList.SelectedItems.Count == 0) { MessageBox.Show("Theres No Selected Index", "", MessageBoxButtons.OK, MessageBoxIcon.Information); return; }
                    if (roomList.SelectedItems[0].SubItems[1].Text != "available")
                    {
                        MessageBox.Show("This room is currently " + roomList.SelectedItems[0].SubItems[1].Text + " right now", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }
                    DATABASE.room.deleteRoom(roomList.SelectedItems[0].Text);
                    refreshTick_RoomSetting();
                    break;
                case 3:
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
                    //DELETE FDU SELECTED
                    if (fduList.SelectedItems.Count == 0) { MessageBox.Show("Theres No Selected Index", "", MessageBoxButtons.OK, MessageBoxIcon.Information); return; }
                    DATABASE.fdu.deleteData(fduList.SelectedItems[0].SubItems[3].Text);
                    DATABASE.fdu.displayAll(fduList);
                    break;
                case 2:
                    //REFRESH -- ROOM SETTING
                    refreshTick_RoomSetting();
                    break;
                case 3:
                    saveNewTourInfo();
                    break;
                case 4:
                    saveNewAccInfo();
                    break;
            }
        }

        //ACCOUNT SETTINGS START
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
            data.Add(INFO.admin.username);
            DATABASE.admin.updateData(data);

            INFO.admin.username = data[0];
            INFO.admin.password = data[1];
            INFO.admin.lastname = data[2];
            INFO.admin.firstname = data[3];
            INFO.admin.email = data[4];

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

        void accountInfoLoadAll()
        {
            lastFld.Text = INFO.admin.lastname;
            firstFld.Text = INFO.admin.firstname;
            mailFld.Text = INFO.admin.email;
            usernameFld.Text = INFO.admin.username;
            passFld.Text = INFO.admin.password;
            passrFld.Text = INFO.admin.password;
        }
        //ACCOUNT SETTINGS END

        //TOUR LIST START
        void tourInfoLoadAll()
        {
            undergroundPriceFld.Text = DATABASE.tours.getTourPrice("1");
            hondaBayPriceFld.Text = DATABASE.tours.getTourPrice("2");
            dosPalmasPriceFld.Text = DATABASE.tours.getTourPrice("3");
        }

        void saveNewTourInfo()
        {
            if (!isNewTourInfoValid()) { return; }
            DATABASE.tours.updateTourPrice("1", undergroundPriceFld.Text);
            DATABASE.tours.updateTourPrice("2", hondaBayPriceFld.Text);
            DATABASE.tours.updateTourPrice("3", dosPalmasPriceFld.Text);

            undergroundPriceFld.Enabled = false;
            hondaBayPriceFld.Enabled = false;
            dosPalmasPriceFld.Enabled = false;

            fourthBtn.Visible = false;

            MessageBox.Show("Tour Price Successfully Updated", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
        }

        bool isNewTourInfoValid()
        {
            if (undergroundPriceFld.Text.Equals("") || hondaBayPriceFld.Text.Equals("") || dosPalmasPriceFld.Text.Equals(""))
            {
                MessageBox.Show("Please Complete The Form", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return false;
            }

            try
            {
                int a = Int32.Parse(undergroundPriceFld.Text);
                int b = Int32.Parse(hondaBayPriceFld.Text);
                int c = Int32.Parse(dosPalmasPriceFld.Text);
            }
            catch
            {
                MessageBox.Show("Invalid Price Input", "", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return false;
            }
            

            return true;
        }

        private void edit1Btn_Click(object sender, EventArgs e)
        {
            undergroundPriceFld.Enabled = true;
            fourthBtn.Visible = true;
        }

        private void edit2Btn_Click(object sender, EventArgs e)
        {
            hondaBayPriceFld.Enabled = true;
            fourthBtn.Visible = true;
        }

        private void edit3Btn_Click(object sender, EventArgs e)
        {
            dosPalmasPriceFld.Enabled = true;
            fourthBtn.Visible = true;
        }



    }
}
