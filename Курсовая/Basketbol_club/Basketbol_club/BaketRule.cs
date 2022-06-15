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
    public partial class BaketRule : Form
    {
        public BaketRule()
        {
            InitializeComponent();
        }

        public SD.DataSet ds;
        private void zap()
        {
            string script = "select id_club,name_club,lige,market_value,DATE_FORMAT (founding_date,'%Y-%m-%d') from clubs;";
            using (MySqlDataAdapter ms_data = new MySqlDataAdapter(script, Connect.connect))
            {
                using (SD.DataTable table = new SD.DataTable()) {
                    ms_data.Fill(table);
                    dataGridView1.DataSource = table;

                    Connect.mycon.Close();
                }
            }
        }

        private void zap2()
        {
            string script = "select " +
                "cl.id_club,hum.id_human,con.id_contract,cl.name_club,cl.lige,hum.name,hum.surname,con.the_amount_of_wages " +
                "from clubs cl " +
                "join contracts con on con.id_club = cl.id_club " +
                "join humans hum on hum.id_human = con.id_human; ";
            using (MySqlDataAdapter ms_data = new MySqlDataAdapter(script, Connect.connect)) {
                using (SD.DataTable table = new SD.DataTable()) {
                    ms_data.Fill(table);
                    dataGridView2.DataSource = table;
                    Connect.mycon.Close();
                }
            }
        }
        private void zapros_Click(object sender, EventArgs e)
        {
            try
            {
                zap();
            }
            catch
            {
                MessageBox.Show("ERROR");
            }
        }

        private void Delete()
        {
            int selectedRow = dataGridView1.CurrentRow.Index;

            try
            {
                if (selectedRow >= 0)
                {
                    using (DataGridViewRow row = dataGridView1.Rows[selectedRow]) {
                        var deleteString = $"delete from basketbol_clubs_db.clubs where id_club = '{row.Cells[0].Value.ToString()}';";
                        using (MySqlDataAdapter ms_data = new MySqlDataAdapter(deleteString, Connect.connect)) {
                            using (SD.DataTable table = new SD.DataTable()) {
                                ms_data.Fill(table);
                                MessageBox.Show("Запись удалена!");
                            }
                        }
                    }
                }
                else
                {
                    MessageBox.Show("Вы не выбрали запись");
                }
            }
            catch
            {
                MessageBox.Show("Запись не может быть удалена !");
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            add add = new add();
            add.Show();
        }

        private void dataGridView1_CellClick(object sender, DataGridViewCellEventArgs e)
        {
            int selectedRow = e.RowIndex;
            if (e.RowIndex >= 0)
            {
                using (DataGridViewRow row = dataGridView1.Rows[selectedRow]) {
                    textBox2.Text = row.Cells[1].Value.ToString();
                    textBox3.Text = row.Cells[2].Value.ToString();
                    textBox4.Text = row.Cells[3].Value.ToString();
                    textBox5.Text = row.Cells[4].Value.ToString();
                }
            }
        }

        private void Search(DataGridView dgw)
        {

            string searchString = $"select * from clubs where concat(id_club,name_club,lige,market_value,founding_date) like concat('%',@searchtext,'%')";

            using (MySqlDataAdapter ms_data = new MySqlDataAdapter(searchString, Connect.connect)) {
                ms_data.SelectCommand.Parameters.AddWithValue("@searchtext", textBox6.Text);

                using (SD.DataTable table = new SD.DataTable()) {
                    ms_data.Fill(table);
                    dataGridView1.DataSource = table;
                }
            }
        }

        private void textBox6_TextChanged(object sender, EventArgs e)
        {
            Search(dataGridView1);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            Delete();
            zap();
        }
        
        private void Change()
        {
            var selectedRowIndex = dataGridView1.CurrentCell.RowIndex;

            var name = textBox2.Text;
            var lige = textBox3.Text;
            var market_value = textBox4.Text;
            var founding_date = textBox5.Text;

            using (DataGridViewRow row = dataGridView1.Rows[selectedRowIndex]) {
                var update = $"UPDATE `basketbol_clubs_db`.`clubs` " +
                   $"SET `name_club` = '{name}', `lige` = '{lige}', `market_value` = '{market_value}', `founding_date`='{founding_date}'" +
                   $"WHERE (`id_club` = '{row.Cells[0].Value}');";
                using (MySqlDataAdapter ms_data = new MySqlDataAdapter(update, Connect.connect)) {
                    using (SD.DataTable table = new SD.DataTable())
                    {
                        ms_data.Fill(table);
                    } 
                }
            }
        }
        private void button2_Click(object sender, EventArgs e)
        {
            Change();
            zap();
        }

        private void button5_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button8_Click(object sender, EventArgs e)
        {
            try
            {
                zap2();
            }
            catch
            {
                MessageBox.Show("ERROR");
            }
        }

        private void button11_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button10_Click(object sender, EventArgs e)
        {
            zap2();
        }

        private void Search2(DataGridView dqw)
        {

            string searchString = $"select cl.id_club,hum.id_human,con.id_contract,cl.name_club,cl.lige,hum.name,hum.surname,con.the_amount_of_wages " +
                $"from clubs cl " +
                $"join contracts con on con.id_club = cl.id_club     " +
                $"join humans hum on hum.id_human = con.id_human " +
                $"where concat(cl.id_club,hum.id_human,con.id_contract,cl.name_club,cl.lige,hum.name,hum.surname,con.the_amount_of_wages) like concat('%',@searchtext,'%');";
            using (MySqlDataAdapter ms_data = new MySqlDataAdapter(searchString, Connect.connect)) {
                ms_data.SelectCommand.Parameters.AddWithValue("@searchtext", textBox11.Text);
                using (SD.DataTable table = new SD.DataTable())
                {
                    ms_data.Fill(table);
                    dataGridView2.DataSource = table;
                }
            }
        }

        private void textBox11_TextChanged(object sender, EventArgs e)
        {
            Search2(dataGridView2);
        }

        private void dataGridView2_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            int selectedRow = e.RowIndex;
            if (e.RowIndex >= 0)
            {
                using (DataGridViewRow row = dataGridView2.Rows[selectedRow]) {
                    textBox10.Text = row.Cells[3].Value.ToString();
                    textBox1.Text = row.Cells[4].Value.ToString();
                    textBox7.Text = row.Cells[5].Value.ToString();
                    textBox9.Text = row.Cells[6].Value.ToString();
                    textBox8.Text = row.Cells[7].Value.ToString();
                }
            }
        }

        void Change2()
        {
            var selectedRowIndex = dataGridView2.CurrentCell.RowIndex;

            var name_club = textBox10.Text;
            var lige = textBox1.Text;
            var name = textBox7.Text;
            var surname = textBox9.Text;
            var amount_of_wages = textBox8.Text;

            using (DataGridViewRow row = dataGridView2.Rows[selectedRowIndex]) {
                var update = $"UPDATE `basketbol_clubs_db`.`clubs` " +
                   $"SET `name_club` = '{name_club}', `lige` = '{lige}'" +
                   $"WHERE (`id_club` = '{row.Cells[0].Value}');" +
                   $"UPDATE `basketbol_clubs_db`.`humans`" +
                   $"SET `name` = '{name}',`surname` = '{surname}'" +
                   $"WHERE (`id_human` = '{row.Cells[1].Value}');" +
                   $"UPDATE `basketbol_clubs_db`.`contracts`" +
                   $"SET `the_amount_of_wages` = '{amount_of_wages}'" +
                   $"WHERE (`id_contract` = '{row.Cells[2].Value}');"; ;
                using (MySqlDataAdapter ms_data = new MySqlDataAdapter(update, Connect.connect))
                {
                    using (SD.DataTable table = new SD.DataTable()) {
                        ms_data.Fill(table);
                    }
                }
            } 
        }
        private void button6_Click(object sender, EventArgs e)
        {
            Change2();
            zap2();
        }

        private void button12_Click(object sender, EventArgs e)
        {
            Add2 add = new Add2();
            add.Show();
        }

        private void delete2() {

            int selectedRow = dataGridView2.CurrentRow.Index;

            if (selectedRow >= 0)
            {
                using (DataGridViewRow row = dataGridView2.Rows[selectedRow])
                {
                    var deleteString = $"delete from basketbol_clubs_db.contracts where id_contract = '{row.Cells[2].Value.ToString()}';";
                    using (MySqlDataAdapter ms_data = new MySqlDataAdapter(deleteString, Connect.connect))
                    {
                        using (SD.DataTable table = new SD.DataTable())
                        {
                            ms_data.Fill(table);
                        }
                    }
                }
                MessageBox.Show("Запись удалена!");
            }
            else
            {
                MessageBox.Show("Вы не выбрали запись");
            }
        }

        private void button9_Click(object sender, EventArgs e)
        {
            delete2();
            zap2();
        }

        private void button16_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void button13_Click(object sender, EventArgs e)
        {

            var name = textBox12.Text;
            var surname = textBox15.Text;

            var script = $"select count_human_award('{name}','{surname}');";
            using (MySqlDataAdapter ms_data = new MySqlDataAdapter(script, Connect.connect)) {
                using (SD.DataTable table = new SD.DataTable()) {
                    ms_data.Fill(table);
                    dataGridView3.DataSource = table;

                    Connect.mycon.Close();
                }
            }
        }

        private void button14_Click(object sender, EventArgs e)
        {
            var nameClub = textBox13.Text;

            var script = $"select clubs_have_award('{nameClub}');";
            using (MySqlDataAdapter ms_data = new MySqlDataAdapter(script, Connect.connect)) {
                using (SD.DataTable table = new SD.DataTable()) {
                    ms_data.Fill(table);
                    dataGridView4.DataSource = table;

                    Connect.mycon.Close();
                }
            }
        }

        private void button15_Click(object sender, EventArgs e)
        {
            var name = textBox14.Text;
            var surname = textBox16.Text;

            var script = $"select sum(el.value) from humans hum " +
                         $"join players pl on hum.id_human = pl.id_human " +
                         $"join element_stats el on pl.id_human = el.id_human " +
                         $"where hum.name = '{name}' and hum.surname = '{surname}' and el.name_stat = 'points'; ";
            using (MySqlDataAdapter ms_data = new MySqlDataAdapter(script, Connect.connect)) {
                using (SD.DataTable table = new SD.DataTable()) {
                    ms_data.Fill(table);
                    dataGridView5.DataSource = table;

                    Connect.mycon.Close();
                }
            }
        }

        private void tabPage1_Click(object sender, EventArgs e)
        {

        }
    }
}