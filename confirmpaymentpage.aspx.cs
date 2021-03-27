using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class confirmpaymentpage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection conn = new SqlConnection();
        SqlDataAdapter ada = new SqlDataAdapter();
        DataSet ds = new DataSet();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        conn.Open();
        cmd.CommandText = "Insert into tb6(username,password,totalamount,phonenumber,email,paymentmethod,cardnumber) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text +"','" + TextBox3.Text +"','" + TextBox4.Text +"','" + RadioButtonList1.Text + "','"+ TextBox5.Text +"')";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        conn.Close();
        Label1.Text = "amount paid successfully";
    }
}