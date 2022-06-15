using System;
using System.Collections.Generic;
using System.ComponentModel;
using SD = System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Basketbol_club
{
    public partial class Connect_db : Form
    {
        public Connect_db()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender,EventArgs e)
        {
            try 
            {
                using (Connect.mycon = new MySqlConnection(Connect.connect)) {
                    Connect.mycon.Open();
                    MessageBox.Show("DB Connect");
                    Connect.mycon.Close();
                    BaketRule br = new BaketRule();
                    br.Show();
                    Hide();
                }
            }
            catch
            {
                MessageBox.Show("ERROR");
            }
        }

        private void Connect_db_Load(object sender, EventArgs e)
        {

        }
    }
}
