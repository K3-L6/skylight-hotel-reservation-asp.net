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
    public partial class WINDOW_reserve : Form
    {
        List<string> customerInfo = new List<string>();
        public WINDOW_reserve(List<string> customerInfo)
        {
            InitializeComponent();
            DATABASE.room.displayAvailableRoomNumber(roomView, customerInfo[8]);
            nameFld.Text = customerInfo[1];
            emailFld.Text = customerInfo[0];
            contactFld.Text = customerInfo[2];
            this.customerInfo = customerInfo;
        }



        List<string> roomSelectedData = new List<string>();
        private void roomView_SelectedIndexChanged(object sender, EventArgs e)
        {
            roomSelectedData = DATABASE.room.getRoomInfo(roomView.GetItemText(roomView.SelectedItem));
        }

        private void reserveBtn_Click(object sender, EventArgs e)
        {
            if (roomView.SelectedIndex < 0) { MessageBox.Show("No Selected Room", "", MessageBoxButtons.OK, MessageBoxIcon.Information); }
            List<string> data = new List<string>(); data.Clear();
            foreach (string x in customerInfo)
            {
                data.Add(x);
            }
            data.Add(roomSelectedData[0]);
            DATABASE.customer.reservation.reserveRoom(data);
            this.Hide();
            new WINDOW_fduMainPage().Show();
        }






        private void backBtn_Click(object sender, EventArgs e)
        {
            this.Hide();
            new WINDOW_fduMainPage().Show();
        }

        
    }
}
