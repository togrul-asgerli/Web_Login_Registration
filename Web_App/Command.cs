using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using Web_App;

namespace Web_App
{
    public class Command
    {
        SqlConnection con = new SqlConnection(Connection.GetConnect);
        SqlCommand cmd;

        public string CommandExce(string a1, string a2, string a3, string a4)
        {
            con.Open();
            cmd = new SqlCommand("Register", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Firstname",a1);
            cmd.Parameters.AddWithValue("@Lastname",a2);
            cmd.Parameters.AddWithValue("@Email",a3);
            cmd.Parameters.AddWithValue("@Password",a4);
            cmd.Parameters.Add(new SqlParameter()
            {
                Direction = ParameterDirection.Output,
                ParameterName = "@status",
                SqlDbType = SqlDbType.Int
            });
            cmd.ExecuteNonQuery();
            con.Close();
            return cmd.Parameters["@status"].Value.ToString();
        }
        public string CommandExec1(string a1,string a2)
        {
            con.Open();
            cmd = new SqlCommand("Login_Check", con);
            cmd.CommandType=System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Email", a1);
            cmd.Parameters.AddWithValue("@Password", a2);
            cmd.Parameters.Add(new SqlParameter()
            {
                Direction = ParameterDirection.Output,
                ParameterName = "@status",
                SqlDbType = SqlDbType.Int
            });
            cmd.ExecuteNonQuery();
            con.Close();
            return cmd.Parameters["@status"].Value.ToString();
        }

    }
}