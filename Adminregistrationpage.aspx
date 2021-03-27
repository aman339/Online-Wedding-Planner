<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminregistrationpage.aspx.cs" Inherits="Loginpage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            color: #FFFFFF;
            text-decoration: overline;
        }
        .style2
        {
            text-align: right;
            width: 279px;
            font-weight: normal;
            color: #FFFFFF;
            text-decoration: overline;
        }
        .style3
        {
            color: #FFFFFF;
            font-size: larger;
        }
    </style>
</head>
<body background="photo/Engagements-by-Christopher.jpg">
    <form id="form1" runat="server">
    <div style="font-weight: 700; font-size: xx-large; text-align: center">
    
        <kbd><span class="style3">Admin Register Page</span></kbd><table style="width: 100%">
            <tr>
                <td style="font-weight: 400; text-align: right; width: 279px" class="style1"><strong>UserName</strong></td>
                <td style="text-align: left; width: 509px">
                    <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter UserName" ForeColor="Red" style="font-weight: 400"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <strong>Password</strong></td>
                <td style="text-align: left; width: 509px">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter Password" ForeColor="Red" style="font-weight: 400"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 279px">
                    <asp:SqlDataSource ID="SqlDataSourceradminregistration" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [username], [password] FROM [TB3]">
                    </asp:SqlDataSource>
                </td>
                <td style="width: 509px; text-align: left">
                    <asp:Button ID="Button1" runat="server" Text="Login" onclick="Button1_Click" />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                &nbsp;&nbsp;
                    <asp:HyperLink ID="HyperLink2" runat="server">[HyperLink2]</asp:HyperLink>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 279px">&nbsp;</td>
                <td style="width: 509px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
