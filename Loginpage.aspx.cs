using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Login121 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
        conn.Open();
        string checkuser = "select count(*) from tb1 where uname='" + TextBoxusername.Text + "'";
        SqlCommand com =new SqlCommand(checkuser,conn);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();
        if (temp == 1)
        {
            conn.Open();
            string checkpasswordquery = "select pwd from tb1 where uname='" + TextBoxusername.Text + "'";
            SqlCommand passcomm = new SqlCommand(checkpasswordquery, conn);
            string password = passcomm.ExecuteScalar().ToString();
            if (password == TextBoxuserpassword.Text)
            {

                Session["New"] = TextBoxusername.Text;
                Response.Write("password is correct");
                Response.Redirect("servicespage.aspx");

            }
            else
            {
                Response.Write("password is not correct");
            }
        }
        else
        {
            Response.Write("username is not correct");
        }
        
    }
}