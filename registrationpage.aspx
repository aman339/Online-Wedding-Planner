<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registrationpage.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style2
        {
            color: #FFFFFF;
        }
        .style3
        {
            color: #FFFFFF;
            font-size: larger;
        }
    </style>
</head>
  <strong><kbd style="color: #000000">
  <br />

      </kbd><span class="style3"><kbd>Registration form</kbd></span></strong></p>

<body background="photos/tumblr_mi7ovmcelT1rly043o1_1280.gif"> 
    <form id="form1" runat="server">
        <table style="width: 100%">
            <tr> 
          
                <td style="text-align: right; width: 251px" class="style2">&nbsp;&nbsp; User Name:</td>
                <td style="width: 189px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="User Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 251px" class="style2">&nbsp;E-Mail:&nbsp;</td>
                <td style="width: 189px">
                    <asp:TextBox ID="TextBox2" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="E-mail is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="  You must enter the valid E-mail Id" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 251px" class="style2">&nbsp;Password:&nbsp;</td>
                <td style="width: 189px">
                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 251px" class="style2">&nbsp;Confirm&nbsp;Password:</td>
                <td style="width: 189px">
                    <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Confirm Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox3" ControlToValidate="TextBox4" ErrorMessage="Both Password must be same" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; width: 251px" class="style2">&nbsp;City:&nbsp;</td>
                <td style="width: 189px">
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                        <asp:ListItem>Select City</asp:ListItem>
                        <asp:ListItem>Surat</asp:ListItem>
                        <asp:ListItem>Ahemdabad</asp:ListItem>
                        <asp:ListItem>Vadodara</asp:ListItem>
                        <asp:ListItem>Bharuch</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="text-align: left">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Select a City name" ForeColor="Red" InitialValue="Select City"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 251px">&nbsp;</td>
                <td style="width: 189px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    <input id="Reset1" type="reset" value="reset" /><asp:Label ID="Label1" 
                        runat="server" style="text-decoration: overline; color: #FFFFFF"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [uname], [mail], [pwd], [cpwd], [ct] FROM [tb1]">
                    </asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 251px">&nbsp;</td>
                <td style="width: 189px">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/main.aspx">Go to main page</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>  
    <div>
    
    </div>
        <script></script>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
