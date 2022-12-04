using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App
{
    public partial class Login_Form : System.Web.UI.Page
    {
        Command cm=new Command();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_login_Click(object sender, EventArgs e)
        {
            if(cm.CommandExec1(txt_username.Text,txt_password.Text)=="1")
            {
                lbl_status.Text = "Succesfull login!";
            }
            else
            {
                lbl_status.Text = "Unsuccesful login!";
            }
        }
    }
}