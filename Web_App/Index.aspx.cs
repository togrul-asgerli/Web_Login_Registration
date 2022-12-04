using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Web_App
{
    public partial class Index : System.Web.UI.Page
    {
        Command cm=new Command();
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }
        protected void btn_register_Click(object sender, EventArgs e)
        {
                if (cm.CommandExce(txt_first_name.Text,txt_last_name.Text,txt_email.Text,txt_pass.Text)=="1")
                {
                    lbl_result.Text = "Username exists!";
                }
               else
                {
                   lbl_result.Text = "Username create!";
                }
        }
    }
}