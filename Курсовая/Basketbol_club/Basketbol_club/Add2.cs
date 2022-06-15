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
    public partial class Add2 : Form
    {
        public Add2()
        {
            InitializeComponent();
        }


        private void zap1()
        {
            string script = "select id_club,name_club from clubs;";
            using (MySqlDataAdapter ms_data = new MySqlDataAdapter(script, Connect.connect)) {
                using (SD.DataTable table = new SD.DataTable()) {
                    ms_data.Fill(table);
                    dataGridView2.DataSource = table;
                    Connect.mycon.Close();
                }
            }
        }

        private void zap2()
        {
            string script = "select id_human,`name`,surname from humans;";
            using (MySqlDataAdapter ms_data = new MySqlDataAdapter(script, Connect.connect)) {
                using (SD.DataTable table = new SD.DataTable()) {
                    ms_data.Fill(table);
                    dataGridView1.DataSource = table;
                    Connect.mycon.Close();
                }
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                zap1();
                zap2();
            }
            catch
            {
                MessageBox.Show("ERROR");
            }
        }


        private void Search2(DataGridView dqw)
        {

            var searchString = $"select id_club,name_club from clubs where concat(id_club, name_club) like concat('%',@searchtext,'%'); ";
            using (MySqlDataAdapter ms_data = new MySqlDataAdapter(searchString, Connect.connect)) {
                ms_data.SelectCommand.Parameters.AddWithValue("@searchtext", textBox8.Text);
                using (SD.DataTable table = new SD.DataTable()) {
                    ms_data.Fill(table);
                    dataGridView2.DataSource = table;
                }
            }
        }
        private void textBox8_TextChanged(object sender, EventArgs e)
        {
            Search2(dataGridView2);
        }

        private void Search1(DataGridView dqw)
        {

            var searchString = $"select id_human,`name`,surname from humans where concat(id_human, `name`,surname) like concat('%',@searchtext,'%'); ";
            using (MySqlDataAdapter ms_data = new MySqlDataAdapter(searchString, Connect.connect)) {
                ms_data.SelectCommand.Parameters.AddWithValue("@searchtext", textBox9.Text);
                using (SD.DataTable table = new SD.DataTable()) {
                    ms_data.Fill(table);
                    dataGridView1.DataSource = table;
                }
            }
        }
        private void textBox9_TextChanged(object sender, EventArgs e)
        {
            Search1(dataGridView1);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                var kind = textBox1.Text;
                var date_of_signing = textBox2.Text;
                var date_of_end = textBox3.Text;
                var security_options = textBox4.Text;
                var the_amount_of_wages = textBox5.Text;
                var id_club = textBox6.Text;
                var id_human = textBox7.Text;
                var script = $"INSERT INTO `basketbol_clubs_db`.`contracts` (`kind`,`date_of_signing`,`date_of_end`,`security_options`,`the_amount_of_wages`,`id_club`,`id_human`) " +
                    $"values ('{kind}','{date_of_signing}','{date_of_end}','{security_options}','{the_amount_of_wages}','{id_club}','{id_human}')";
                using (MySqlDataAdapter ms_data = new MySqlDataAdapter(script, Connect.connect)) {
                    using (SD.DataTable table = new SD.DataTable()) {
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

        private void Add2_Load(object sender, EventArgs e)
        {

        }
    }
}
