using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Loginpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter ada = new SqlDataAdapter();
        cmd.CommandText = "select * from TB3 where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";
        cmd.Connection = conn;
        ada.SelectCommand = cmd;
        DataSet ds = new DataSet();
        ada.Fill(ds, "TB3");
        if (ds.Tables[0].Rows.Count > 0)
        {
            Response.Redirect("registerdetails.aspx");
        }
        else
        {
            Label1.Text = "Invalid Account:";
        }

    }
}