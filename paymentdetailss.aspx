<%@ Page Language="C#" AutoEventWireup="true" CodeFile="paymentdetailss.aspx.cs" Inherits="paymentdetailss" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700; text-align: center">
    
        Admin Payment details
    
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" 
            NavigateUrl="~/confirmationmailpayment.aspx">payment confirmation mail</asp:HyperLink>
        <br />
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="username" HeaderText="username" 
                SortExpression="username" />
            <asp:BoundField DataField="password" HeaderText="password" 
                SortExpression="password" />
            <asp:BoundField DataField="totalamount" HeaderText="totalamount" 
                SortExpression="totalamount" />
            <asp:BoundField DataField="phonenumber" HeaderText="phonenumber" 
                SortExpression="phonenumber" />
            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
            <asp:BoundField DataField="paymentmethod" HeaderText="paymentmethod" 
                SortExpression="paymentmethod" />
            <asp:BoundField DataField="cardnumber" HeaderText="cardnumber" 
                SortExpression="cardnumber" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [username], [password], [totalamount], [phonenumber], [email], [paymentmethod], [cardnumber] FROM [tb6]">
    </asp:SqlDataSource>
    <p>
        &nbsp;</p>
    </form>
</body>
</html>
