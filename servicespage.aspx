<%@ Page Language="C#" AutoEventWireup="true" CodeFile="servicespage.aspx.cs" Inherits="servicespage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: large;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            width: 424px;
        }
        .style4
        {
            font-size: large;
            width: 424px;
        }
        .style5
        {
            width: 424px;
            height: 30px;
        }
        .style6
        {
            width: 181px;
            height: 30px;
        }
        .style7
        {
            height: 30px;
        }
    </style>
</head>
<body background="photo/dsBuffer.jpg">
    <form id="form1" runat="server">
        <p style="font-size: xx-large; text-align: center">
            <strong>Welcome to User&#39;s</strong></p>
        <div class="style2">
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Here you tell us more about you. What you want in your wedding planning</strong>.</div>
        <table style="width: 100%">
                <tr>
                    <td class="style3">&nbsp;</td>
                    <td style="width: 181px">&nbsp;</td>
                    <td>
                        <asp:Label ID="Label_welcome" runat="server" Text="welcome..."></asp:Label>
                        <asp:Button ID="B_logout" runat="server" Text="Logout" />
                    </td>
                </tr>
                <tr>
                    <td class="style3">&nbsp;</td>
                    <td style="width: 181px">&nbsp;</td>
                    <td class="style1"><strong>price</strong></td>
                </tr>
                <tr>
                    <td style="font-size: large; font-weight: bold; text-align: right; " 
                        class="style5"><b>Venue</b></td>
                    <td style="text-align: left; " class="style6">
                        <asp:DropDownList ID="DropDownList1" runat="server" Width="180px">
                            <asp:ListItem>select any one</asp:ListItem>
                            <asp:ListItem>Vadodara</asp:ListItem>
                            <asp:ListItem>Ahemdabad</asp:ListItem>
                            <asp:ListItem>Surat</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="style7">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="font-size: large; font-weight: bold; text-align: right; " 
                        class="style3"><b>catering</b></td>
                    <td style="text-align: left; width: 181px">
                        <asp:DropDownList ID="DropDownList2" runat="server" Width="180px">
                            <asp:ListItem>Select any one</asp:ListItem>
                            <asp:ListItem>Vijay Caterers</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox16" runat="server" ReadOnly="True">100000</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: large; font-weight: bold; text-align: right; " 
                        class="style3"><b>Transport</b></td>
                    <td style="text-align: left; width: 181px">
                        <asp:DropDownList ID="DropDownList4" runat="server" Width="180px">
                            <asp:ListItem>Select any one</asp:ListItem>
                            <asp:ListItem>veeru transport</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox17" runat="server" ReadOnly="True">30000</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: large; font-weight: bold; text-align: right; " 
                        class="style3"><b>Party hall</b></td>
                    <td style="text-align: left; width: 181px">
                        <asp:DropDownList ID="DropDownList3" runat="server" Width="180px">
                            <asp:ListItem>Select any one</asp:ListItem>
                            <asp:ListItem>Blue bird Party plot</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox18" runat="server" ReadOnly="True">90000</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: large; font-weight: bold; text-align: right; " 
                        class="style3"><b>Dj</b></td>
                    <td style="text-align: left; width: 181px">
                        <asp:DropDownList ID="DropDownList5" runat="server" Width="180px">
                            <asp:ListItem>Select any one</asp:ListItem>
                            <asp:ListItem>Bass raja </asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox19" runat="server" ReadOnly="True">60000</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: large; font-weight: bold; text-align: right; " 
                        class="style3"><b>Lighting</b></td>
                    <td style="text-align: left; width: 181px">
                        <asp:DropDownList ID="DropDownList6" runat="server" Width="180px">
                            <asp:ListItem>Select any one</asp:ListItem>
                            <asp:ListItem>Firoz lighting</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox20" runat="server" ReadOnly="True">30000</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right" class="style4"><strong>Entertainment</strong></td>
                    <td style="width: 181px; text-align: left">
                        <asp:DropDownList ID="DropDownList7" runat="server" style="text-align: left" Width="180px">
                            <asp:ListItem>Select any one</asp:ListItem>
                            <asp:ListItem>Dancers</asp:ListItem>
                            <asp:ListItem>Singers</asp:ListItem>
                            <asp:ListItem>Magician</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: right; font-weight: 700;" class="style4">
                        Photographer</td>
                    <td style="width: 181px; text-align: left">
                        <asp:DropDownList ID="DropDownList8" runat="server" Width="180px">
                            <asp:ListItem>Select any one</asp:ListItem>
                            <asp:ListItem>Raju photography</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox21" runat="server" ReadOnly="True">40000</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right; font-weight: 700;" class="style4">
                        Wedding Date</td>
                    <td style="width: 181px; text-align: left">
                        <asp:TextBox ID="TextBox14" runat="server" TextMode="Date" Width="180px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox14" ErrorMessage="Enter the wedding date" 
                            ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style3">&nbsp;</td>
                    <td style="width: 181px">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" 
                            Text="Grand total" />
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" 
                            NavigateUrl="~/confirmpaymentpage.aspx">Go to payment procedure page</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="style3">&nbsp;</td>
                    <td style="width: 181px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">&nbsp;</td>
                    <td style="width: 181px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">&nbsp;</td>
                    <td style="width: 181px">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        
    </form>
</body>
</html>
