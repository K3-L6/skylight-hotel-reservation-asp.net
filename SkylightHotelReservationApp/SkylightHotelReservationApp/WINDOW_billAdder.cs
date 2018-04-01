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
    public partial class WINDOW_billAdder : Form
    {
        public WINDOW_billAdder(List<string> data)
        {
            InitializeComponent();
            nameFld.Text = data[0];
            numberFld.Text = data[1];
            DATABASE.tours.displayTours(tourList);
        }

        private void backBtn_Click(object sender, EventArgs e)
        {
            this.Hide();
            new WINDOW_fduMainPage().Show();
        }
    }
}
