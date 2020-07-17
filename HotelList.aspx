<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotelList.aspx.cs" Inherits="HotelList" %>

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
        .auto-style5 {
            font-size: x-large;
            font-weight: bold;
            text-decoration: underline;
            color: #000000;
            width: 329px;
        }
        .auto-style6 {
            width: 266px;
        }
        .auto-style7 {
            font-size: medium;
            font-weight: bold;
            color: #000000;
            width: 329px;
        }
        .auto-style8 {
            font-size: x-large;
            font-weight: bold;
            color: #CC3300;
            width: 369px;
        }
        .auto-style9 {
            width: 266px;
            height: 29px;
        }
        .auto-style10 {
            font-size: medium;
            font-weight: bold;
            color: #000000;
            width: 329px;
            height: 29px;
        }
        .auto-style11 {
            font-size: x-large;
            font-weight: bold;
            color: #CC3300;
            width: 369px;
            height: 29px;
        }
        .auto-style12 {
            height: 29px;
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
        <span class="auto-style1">Hotel Details</span>
    </center>
        
        <br />
        <br />
    <div>
        <center>
            <asp:GridView ID="gvHotelDetails" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="317px" Width="842px" AutoGenerateColumns="False" DataKeyNames="Id">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Check">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hotel Id">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hotel Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Location">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Check-in">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("FromDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("FromDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Check-out">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("ToDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("ToDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hotel Rate">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" BackColor="Yellow" Height="35px" OnClick="btnEdit_Click" style="font-weight: 700" Text="Edit" Width="69px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button ID="btnDelete" runat="server" BackColor="#FF3300" ForeColor="White" Height="38px" OnClick="btnDelete_Click" style="font-weight: 700" Text="Delete" Width="77px" />
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
         <br /><br />
        <div><center><asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnAddHotel" runat="server" Height="36px" OnClick="btnAddHotel_Click" style="font-weight: 700" Text="Add Hotel" Width="129px" />
            </center></div>
        <br /><br />
        <div>
            <asp:Panel ID="pnlHotel" runat="server" style="margin-bottom: 3px">
                <center>
                    <table style="width:100%;"><tr><td class="auto-style6">&nbsp;</td><td class="auto-style7" style="font-weight: 700">Hotel Name</td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtName" runat="server" Width="243px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td></tr><tr><td class="auto-style6">&nbsp;</td><td class="auto-style7" style="font-weight: 700">Location </td>
                        <td class="auto-style8">
                            <asp:TextBox ID="txtLocation" runat="server" Width="243px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td></tr>
                        <tr>
                            <td class="auto-style9"></td>
                            <td class="auto-style10" style="font-weight: 700">Check-in</td>
                            <td class="auto-style11">
                                <asp:TextBox ID="txtCheckIn" runat="server" TextMode="DateTime" Width="243px"></asp:TextBox>
                            </td>
                            <td class="auto-style12"></td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style7" style="font-weight: 700">Check-out</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="txtCheckOut" runat="server" TextMode="DateTime" Width="243px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style7" style="font-weight: 700">Price</td>
                            <td class="auto-style8">
                                <asp:TextBox ID="txtPrice" runat="server" Width="243px">0.00</asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style6">&nbsp;</td>
                            <td class="auto-style5"></td>
                            <td class="auto-style8">
                                &nbsp;&nbsp;&nbsp;<asp:Button ID="btnAdd" runat="server" height="31px" OnClick="btnAdd_Click" style="font-weight: 700" Text="Add" width="96px" />
                                &nbsp;&nbsp;&nbsp;<asp:Button ID="btnUpdate" runat="server" height="31px" OnClick="btnUpdate_Click" style="font-weight: 700" Text="Update" width="96px" />
                                &nbsp;<asp:Label ID="lblhotel" runat="server" style="font-size: medium; color: #000000"></asp:Label>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </center>
            </asp:Panel>
        </div>
        <br /><br />
    </form>
</body>
</html>
