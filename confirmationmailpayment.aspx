<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirmationmailpayment.aspx.cs" Inherits="confirmationmailpayment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        To<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp; Subject<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    
    </div>
    <p>
        Body
        <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
    </p>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
        Text="send payment mail" />
    </form>
</body>
</html>
