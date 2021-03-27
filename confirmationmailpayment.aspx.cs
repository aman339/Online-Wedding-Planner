using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class confirmationmailpayment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
              SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
        client.EnableSsl = true;
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.UseDefaultCredentials = false;
        client.Credentials = new NetworkCredential("amankmchoudhary@gmail.com","amanchoudhary10");
        MailMessage msgobj = new MailMessage();
        msgobj.To.Add(TextBox1.Text);
        msgobj.From = new MailAddress("amankmchoudhary@gmail.com");
        msgobj.Subject = TextBox2.Text;
        msgobj.Body = TextBox3.Text;
        client.Send(msgobj);
        Response.Write("message has been sent successfully");

        }
        catch (Exception ex)
        {
            Response.Write("couldn't send email"+ex.Message);
        
        }
        
    }
}