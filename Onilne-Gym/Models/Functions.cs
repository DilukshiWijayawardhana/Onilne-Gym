using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Onilne_Gym.Models
{
    public class Functions
    {
        private SqlConnection Con;
        private SqlCommand cmd;
        private string ConStr;
        private DataTable dt;
        private SqlDataAdapter sda;

        public Functions()
        {
            ConStr = @"Data Source=DESKTOP-KNG692H\SQLEXPRESS;Initial Catalog=OnlineGymDb;Integrated Security=True";
            Con = new SqlConnection(ConStr);
            cmd = new SqlCommand();
            cmd.Connection = Con;
        }

        public int setData(string Query)
        {
            int cnt = 0;
            if(Con.State == ConnectionState.Closed)
            {
                Con.Open();
            }
            cmd.CommandText = Query;
            cnt = cmd.ExecuteNonQuery();
            Con.Close();
            return cnt;
             
        }

        public DataTable GetData(string Query)
        {
            dt = new DataTable();
            sda = new SqlDataAdapter(Query, ConStr);
            sda.Fill(dt);
            return dt;
        }
    }
}