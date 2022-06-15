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
    public partial class add : Form
    {
        public add()
        {
            InitializeComponent();
        }


        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                var name_club = textBox1.Text;
                var lige = textBox2.Text;
                var market_value = textBox3.Text;
                var founding_date = textBox4.Text;
                var script = $"INSERT INTO `basketbol_clubs_db`.`clubs` (`name_club`,`lige`,`market_value`,`founding_date`) " +
                    $"values ('{name_club}','{lige}','{market_value}','{founding_date}')";
                using (MySqlDataAdapter ms_data = new MySqlDataAdapter(script, Connect.connect)) {
                    using (SD.DataTable table = new SD.DataTable())
                    {
                        ms_data.Fill(table);
                        MessageBox.Show("Запись создана!");
                    }
                }
            }
            catch
            {
                MessageBox.Show("ERROR");
            }
        }

        private void add_Load(object sender, EventArgs e)
        {

        }
    }
}
