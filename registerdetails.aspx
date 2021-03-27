<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registerdetails.aspx.cs" Inherits="tb1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
            font-family: "Courier New", Courier, monospace;
            font-size: xx-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style1">
    
        <strong>User Login Detail Submitted Successfully<br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/servicesview.aspx">servicesdetails</asp:HyperLink>
        <br />
        </strong>
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSourceregistration" Height="155px" Width="798px">
        <Columns>
            <asp:BoundField DataField="uname" HeaderText="uname" SortExpression="uname" />
            <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
            <asp:BoundField DataField="pwd" HeaderText="pwd" SortExpression="pwd" />
            <asp:BoundField DataField="cpwd" HeaderText="cpwd" SortExpression="cpwd" />
            <asp:BoundField DataField="ct" HeaderText="ct" SortExpression="ct" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSourceregistration" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [uname], [mail], [pwd], [cpwd], [ct] FROM [tb1]">
    </asp:SqlDataSource>
    </form>
</body>
</html>
