using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class servicespage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
         SqlCommand cmd = new SqlCommand();
        SqlConnection conn = new SqlConnection();
        SqlDataAdapter ada = new SqlDataAdapter();
        DataSet ds = new DataSet();
        if (Session["New"] != null)
        {
            Label_welcome.Text += Session["New"].ToString();
        }
        else
            Response.Redirect("Loginpage.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        SqlCommand cmd = new SqlCommand();
        conn.Open();
        cmd.CommandText = "Insert into tb2(venue,cetering,transport,partyhall,dj,lighting,entertainment,photographer,weddingdate) values('" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList4.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + DropDownList5.SelectedValue + "','" + DropDownList6.SelectedValue + "','" + DropDownList7.SelectedValue + "','" + DropDownList8.SelectedValue + "','" + TextBox14.Text + "')";
        cmd.Connection = conn;
        cmd.ExecuteNonQuery();
        conn.Close();
        Label1.Text = "selected successfully:)";
    }
    protected void B_logout_Click(object sender, EventArgs e)
    {
        Session["New"] = null;
        Response.Redirect("Loginpage.aspx");
    }
}