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
    public partial class WINDOW_registerFDU : Form
    {
        public WINDOW_registerFDU()
        {
            InitializeComponent();
        }

        private void nextBtn_Click(object sender, EventArgs e)
        {
            firstPanel.Visible = false;
            secondPanel.Visible = true;    
        }

        private void prevzBtn_Click(object sender, EventArgs e)
        {
            firstPanel.Visible = true;
            secondPanel.Visible = false;
        }

        private void WINDOW_registerFDU_TextChanged(object sender, EventArgs e)
        {
            if (lastFld.Text != "" && firstFld.Text != "" && mailFld.Text != "")
            {
                nextBtn.Visible = true;
            }
            else
            {
                nextBtn.Visible = false;
            }
        }

        private void regBtn_Click(object sender, EventArgs e)
        {
            if (!inputValid()) { return; }
            List<string> data = new List<string>();
            data.Clear();
            data.Add(usernameFld.Text);
            data.Add(passFld.Text);
            data.Add(lastFld.Text.ToUpper());
            data.Add(firstFld.Text.ToUpper());
            data.Add(mailFld.Text);
            DATABASE.fdu.addData(data);
            backBtn.PerformClick();
        }

        private void backBtn_Click(object sender, EventArgs e)
        {
            this.Hide();
            new WINDOW_adminMainPage().Show();
        }

        bool inputValid()
        {
            //VALIDATE ALL INPUTS HERE
            return true;
        }





    }
}
