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
    public partial class WINDOW_registerRoom : Form
    {
        string roomType;
        public WINDOW_registerRoom(string roomType)
        {
            InitializeComponent();
            typeLbl.Text = "Room Type : " + roomType.ToUpper();
            this.roomType = roomType;
        }

        private void regBtn_Click(object sender, EventArgs e)
        {
            if (numberFld.Text.Equals("")) { MessageBox.Show("Please Complete the Field", "", MessageBoxButtons.OK, MessageBoxIcon.Information); return; }
            DATABASE.room.addRoom(numberFld.Text, roomType);
            backBtn.PerformClick();
        }

        private void backBtn_Click(object sender, EventArgs e)
        {
            this.Hide();
            new WINDOW_adminMainPage().Show();
        }
    }
}
