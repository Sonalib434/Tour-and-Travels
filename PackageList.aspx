<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PackageList.aspx.cs" Inherits="PackageList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 329px;
        }
        .auto-style2 {
            width: 331px;
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
       <b> Package Details</b>
    </center>
        
        <br />
        <br />
    <div>
        <center>
            <asp:GridView ID="gvPackageDetails" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="316px" Width="1064px" AutoGenerateColumns="False" DataKeyNames="Id">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Check">
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Package Id">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Id") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label9" runat="server" Text='<%# Bind("Id") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Package Name">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Pick-Up Point">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("PlaceForm") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("PlaceForm") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Drop Point">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("PlaceTo") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("PlaceTo") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Start Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("StartDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("StartDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="End Date">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("EndDate") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("EndDate") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Duration">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Duration") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label6" runat="server" Text='<%# Bind("Duration") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Price") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label7" runat="server" Text='<%# Bind("Price") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label8" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button ID="btnEdit" runat="server" BackColor="Yellow" Height="36px" OnClick="btnEdit_Click" style="font-weight: 700" Text="Edit" Width="72px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Action">
                        <ItemTemplate>
                            <asp:Button ID="btnDelete" runat="server" BackColor="#FF3300" ForeColor="White" Height="37px" OnClick="btnDelete_Click" style="font-weight: 700" Text="Delete" Width="72px" />
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
            <asp:Button ID="btnAdd" runat="server" Height="36px" OnClick="btnAdd_Click" style="font-weight: 700" Text="Add Package" Width="129px" />
            </center></div>
        <br /><br />
        <div>
            <asp:Panel ID="pnlPackage" runat="server">
                <center>
                    <table style="width:100%;"><tr><td>&nbsp;</td><td class="auto-style1" style="font-weight: 700">Package Name</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtName" runat="server" Width="243px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td></tr><tr><td>&nbsp;</td><td class="auto-style1" style="font-weight: 700">Pick-up </td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtPickup" runat="server" Width="243px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td></tr><tr><td>&nbsp;</td><td class="auto-style1" style="font-weight: 700">Drop</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtDrop" runat="server" Width="243px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td></tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style1" style="font-weight: 700">Start Date</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtStartDate" runat="server" TextMode="DateTime" Width="243px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style1" style="font-weight: 700">End Date</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtEndDate" runat="server" TextMode="DateTime" Width="243px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style1" style="font-weight: 700">Duration</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtDuration" runat="server" Width="243px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style1" style="font-weight: 700">Price</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtPrice" runat="server" Width="243px">0.00</asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style1" style="font-weight: 700">Description</td>
                            <td class="auto-style2">
                                <asp:TextBox ID="txtDescription" runat="server" Width="243px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td class="auto-style1">&nbsp;</td>
                            <td class="auto-style2">
                                &nbsp;&nbsp;&nbsp;<asp:Button ID="btnAddDetails" runat="server" height="31px" OnClick="btnAddDetails_Click" style="font-weight: 700" Text="Add" width="96px" />
                                &nbsp;&nbsp;&nbsp;<asp:Button ID="btnUpdate" runat="server" height="31px" OnClick="btnUpdate_Click" style="font-weight: 700" Text="Update" width="96px" />
                                &nbsp;<asp:Label ID="lblpack" runat="server"></asp:Label>
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
