<%@ Page Language="C#" AutoEventWireup="true" CodeFile="confirmpaymentpage.aspx.cs" Inherits="confirmpaymentpage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 125px;
        }
        .style4
        {
            width: 183px;
        }
        .style5
        {
            text-align: center;
            font-size: xx-large;
        }
        .style6
        {
            width: 125px;
            height: 30px;
        }
        .style7
        {
            width: 183px;
            height: 30px;
        }
        .style8
        {
            height: 30px;
        }
    </style>
</head>
<body background="photo/31a0b1_38ef285d1e7d43afb65d0b05bed2d8b1_mv2_d_1775_1200_s_2.jpg">
    <form id="form1" runat="server">
    <p class="style5">
        <strong>Payment Procedure </strong>
    </p>
    <p class="style1">
        &nbsp;</p>
    <p class="style5">
        &nbsp;</p>
    <table class="style2">
        <tr>
            <td class="style3">
                Username</td>
            <td class="style4">
                <asp:TextBox ID="TextBox1" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Enter correct username ID" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Password
            </td>
            <td class="style4">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Enter the correct password" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Total amount</td>
            <td class="style4">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                    <asp:ListItem>Select amount</asp:ListItem>
                    <asp:ListItem>350,000</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="select fixed amount" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Phone no.</td>
            <td class="style4">
                <asp:TextBox ID="TextBox3" runat="server" MaxLength="10" 
                    Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="enter your phone no." 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Email</td>
            <td class="style4">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Email" Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="enter your email" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Payment method</td>
            <td class="style4">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem>Credit card</asp:ListItem>
                    <asp:ListItem>Debit card</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                card number</td>
            <td class="style4">
                <asp:TextBox ID="TextBox5" runat="server" MaxLength="16" 
                    Width="180px"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="enter your 16 digit number" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style4">
                <asp:Button ID="Button1" runat="server" Text="pay" 
                    onclick="Button1_Click" Width="180px" />
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style6">
                </td>
            <td class="style7">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/main.aspx">Go to main page</asp:HyperLink>
            </td>
            <td class="style8">
                </td>
        </tr>
    </table>
    </form>
</body>
</html>
