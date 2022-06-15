using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;

namespace Basketbol_club
{
     static class Connect
    {
        static public MySqlConnection mycon;
        static public MySqlCommand mycom;
        static public string connect = "Server=localhost;Database=basketbol_clubs_db;port=3306;UserId=root;password=VAlera211072;";
    }
}
