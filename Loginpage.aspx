<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Loginpage.aspx.cs" Inherits="Login121" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            width: 177px;
        }
        .style4
        {
            height: 23px;
            width: 177px;
            text-align: right;
        }
        .style5
        {
            width: 192px;
        }
        .style6
        {
            height: 23px;
            width: 192px;
        }
        .style7
        {
            text-align: center;
            font-family: "Courier New", Courier, monospace;
            font-size: xx-large;
        }
        .style8
        {
            width: 177px;
            text-align: right;
        }
    </style>
</head>
<body background="photo/31a0b1_79f277c318e64975a220e7e194b9ac7d_mv2.jpg">
    <form id="form1" runat="server">
    <div class="style7">
    
        <strong>User login page<br />
        <br />
        </strong>
    
    </div>
    <table class="style1">
        <tr>
            <td class="style8">
                username</td>
            <td class="style5">
                <asp:TextBox ID="TextBoxusername" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxusername" ErrorMessage="please enter username" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                password</td>
            <td class="style6">
                <asp:TextBox ID="TextBoxuserpassword" runat="server" TextMode="Password" 
                    Width="180px"></asp:TextBox>
            </td>
            <td class="style2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxuserpassword" ErrorMessage="please enter password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style5">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="login" />
                <asp:HyperLink ID="HyperLink1" runat="server" 
                    NavigateUrl="~/registrationpage.aspx">New users register here</asp:HyperLink>
            </td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    </form>
</body>
</html>
