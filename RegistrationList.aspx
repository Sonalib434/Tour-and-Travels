<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationList.aspx.cs" Inherits="RegistrationList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            font-weight: bold;
            text-decoration: underline;
            color: #CC3300;
        }
        .auto-style3 {
            width: 323px;
        }
        .auto-style4 {
            width: 399px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="LbtnLogOut" runat="server" OnClick="LbtnLogOut_Click">Log Out</asp:LinkButton>
        </div>
    <div>
    <center>
        <span class="auto-style1">Registration Details</span>
    </center>
        
        <br />
        <br />
    <div>
        <center>
            <asp:GridView ID="gvRegDetails" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="352px" Width="1175px" AutoGenerateColumns="False" AllowPaging="True" DataKeyNames="RegistrationId" OnPageIndexChanging="gvRegDetails_PageIndexChanging" PageSize="5">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Check">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Registration Id">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RegistrationId") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("RegistrationId") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Address">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="City">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="State">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Phone">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Email">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Age">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Age") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("Age") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Gender">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label10" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Password">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Password") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" BackColor="Yellow" Height="32px" style="font-weight: 700" Text="Edit" Width="68px" OnClick="btnEdit_Click" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button ID="btnDelete" runat="server" BackColor="#FF3300" ForeColor="White" Height="34px" OnClick="btnDelete_Click" style="font-weight: 700" Text="Delete" Width="75px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </center>
    </div>
    </div>
        <br />
        <br /><center>
        <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label></center>
        <br />
        <br />
        <asp:Panel ID="pnlRegList" runat="server">
            <center>
                <table style="width:100%;"><tr><td>&nbsp;</td><td class="auto-style3" style="font-weight: 700">Name</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="txtName" runat="server" Width="285px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td></tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3" style="font-weight: 700">Address</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtAddress" runat="server" Width="285px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3" style="font-weight: 700">City</td>
                        <td class="auto-style4">
                            <asp:DropDownList ID="ddlCity" runat="server" Width="289px">
                                <asp:ListItem>--Select City--</asp:ListItem>
                        <asp:ListItem>Kolkata</asp:ListItem>
                        <asp:ListItem>Howrah</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Kochi</asp:ListItem>
                        <asp:ListItem>Bengaluru</asp:ListItem>
                    </asp:DropDownList>
                            
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3" style="font-weight: 700">State</td>
                        <td class="auto-style4">
                            <asp:DropDownList ID="ddlState" runat="server" Width="289px">
                                 <asp:ListItem>--Select State--</asp:ListItem>
                        <asp:ListItem>West Bengal</asp:ListItem>
                        <asp:ListItem>Bihar</asp:ListItem>
                        <asp:ListItem>Maharastra</asp:ListItem>
                        <asp:ListItem>Kerala</asp:ListItem>
                        <asp:ListItem>Odisa</asp:ListItem>
                    </asp:DropDownList>
                            
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3" style="font-weight: 700">Phone</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtPhone" runat="server" Width="285px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3" style="font-weight: 700">Email</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtEmail" runat="server" Width="285px" TextMode="Email"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3" style="font-weight: 700">Age</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtAge" runat="server" Width="285px" TextMode="Number"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td class="auto-style3" style="font-weight: 700">Gender</td>
                        <td class="auto-style4">
                            <asp:RadioButtonList ID="RadioButtonListGender" runat="server" RepeatDirection="Horizontal" Width="291px">
                                <asp:ListItem>Male</asp:ListItem>
                                <asp:ListItem>Female</asp:ListItem>
                                <asp:ListItem>Others</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr><td>&nbsp;</td><td class="auto-style3" style="font-weight: 700">Password</td>
                        <td class="auto-style4">
                            <asp:TextBox ID="txtPass" runat="server" Width="285px" TextMode="Password"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td></tr><tr><td>&nbsp;</td><td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btnUpdate" runat="server" Height="30px" Text="Update" Width="105px" OnClick="btnUpdate_Click" style="font-weight: 700" />
                        &nbsp;<asp:Label ID="lblUpdate" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td></tr></table>
            </center>
        </asp:Panel>
    </form>
</body>
</html>
